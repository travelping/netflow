-module(ipfix_v10_codec).

-compile(inline).
-compile(inline_list_funcs).
-compile(bin_opt_info).

%% API
-export([init/0]).
-export([decode/2]).
-export([encode/5]).

-include("ipfix_v10.hrl").

-define(TEMPLATES_TABLE, ipfix_v10_templates).
-define(TEMPLATES_TABLE_OPTS, [named_table, public, {read_concurrency, true}]).

%%%===================================================================
%%% API
%%%===================================================================

%% @doc Creates the ETS table for storing templates.
-spec init() -> ok.
init() ->
    case ets:info(?TEMPLATES_TABLE) of
        undefined ->
            ?TEMPLATES_TABLE = ets:new(?TEMPLATES_TABLE, ?TEMPLATES_TABLE_OPTS),
            ok;
        _ -> ok
    end.

%% @doc Decodes the binary NetFlow packet.
-spec decode(binary(), inet:ip_address()) ->
    {ok, {#ipfh_v10{}, [proplists:property()]}} | {error, term()}.
decode(Binary, IP) ->
    %% try
    %%     decode_packet(Binary, IP)
    %% catch
    %%     _:Reason ->
    %%         {error, Reason}
    %% end.
    decode_packet(Binary, IP).

encode(ExportTime, FlowSeq, DomainId, TemplateId, Records) ->
    TemplateFields = encode_template_fields(Records, []),
    Count = length(Records),
    Template = <<
        2:16,                               % FlowSet ID, 0 for template
        (byte_size(TemplateFields) + 8):16, % Length
        TemplateId:16,                      % Template ID, should be > 255
        Count:16,                           % Count
        TemplateFields/binary               % Fields
    >>,
    Fields0 = encode_fields(Records),
    Fields = pad_to(4, Fields0),
    DataFlowset = <<TemplateId:16, (byte_size(Fields) + 4):16, Fields/binary>>,
    Length = byte_size(Template) + byte_size(DataFlowset),
    Header = <<10:16, (Length + 16):16, ExportTime:32, FlowSeq:32, DomainId:32>>,
    list_to_binary([Header, Template, DataFlowset]).

%%%===================================================================
%%% Internal functions
%%%===================================================================

encode_fields(Fields) ->
    << << (encode_field(F, V))/binary >> || {F, V} <- Fields >>.

encode_template_fields([], Acc) ->
    list_to_binary(lists:reverse(Acc));
encode_template_fields([{Field, _Value} | Rest], Acc) ->
    {Id, DataType} = type_info(Field),
    Length = type_size(DataType),
    encode_template_fields(Rest, [<<Id:16, Length:16>> | Acc]).

decode_packet(<<Version:16, Length:16, ExportTime:32, SequenceNum:32, DomainId:32, Data/binary>>, IP) ->
    BinLen = Length - 16,
    <<Rest:BinLen/bytes, _Next/binary>> = Data,
    Header = #ipfh_v10{
		version = Version,
		export_time = ExportTime,
		flow_seq = SequenceNum,
		domain_id = DomainId
	       },
    case decode_flowsets(Rest, {DomainId, IP}, []) of
        {ok, Records} ->
            {ok, {Header, Records}};
        {error, Reason} ->
            {error, Reason}
    end.

decode_flowsets(<<>>, _, Acc0) ->
    {ok, lists:reverse(Acc0)};
%% Template flowset
decode_flowsets(<<SetId:16, Length:16, Rest/binary>>, Domain, Acc0) ->
    BinLen = Length - 4,
    <<Data:BinLen/bytes, Next/binary>> = Rest,
    Acc = decode_flowset(SetId, Domain, Data, Acc0),
    decode_flowsets(Next, Domain, Acc).


%% Template flowset
decode_flowset(2, Domain, Data, Acc) ->
    decode_templates(Data, Domain),
    Acc;
%% Options template flowset
decode_flowset(3, Domain, Data, Acc) ->
    decode_options_templates(Data, Domain),
    Acc;
%% Data flowset
decode_flowset(Id, Domain, Data, Acc) when Id > 255 ->
    case lookup_template(Domain, Id) of
        false ->
            {error, missing_template};
        Template ->
	    decode_set_data_fields(Data, Template, Acc)
    end.

decode_templates(<<Id:16, Count:16, Rest/binary>>, Domain) ->
    Template = decode_template_fields(Rest, Count, []),
    store_template(Domain, Id, Template).

decode_set_data_fields(Bin, {Size, _Map}, Acc)
  when byte_size(Bin) < Size ->
    lists:reverse(Acc);
decode_set_data_fields(Data, {_Size, Map} = Template, Acc) ->
    {Set, Rest} = decode_data_fields(Data, Map, []),
    decode_set_data_fields(Rest, Template, [Set | Acc]).

%% Decode template flowset fields
decode_template_fields(Bin, Count, Acc)
  when Bin =:= <<>>; Count =:= 0 ->
    lists:reverse(Acc);
decode_template_fields(Data, Count, Acc) ->
    {IE, Rest} = decode_ie(Data),
    decode_template_fields(Rest, Count - 1, [IE | Acc]).

%% Decode data flowset fields
decode_data_fields(Bin, Map, Acc)
  when Bin =:= <<>>; Map =:= [] ->
    {lists:reverse(Acc), Bin};
decode_data_fields(Bin, [{scope, {Type, Len}} | T], Acc) ->
    {Scope, Rest} = decode_data_field(Bin, Len, scope, Type),
    decode_data_fields(Rest, T, [Scope | Acc]);
decode_data_fields(Bin, [{Type, Len} | T], Acc)
  when Len == 65535 orelse byte_size(Bin) >= Len ->
    {Field, Rest} = decode_data_field(Bin, Len, field, Type),
    decode_data_fields(Rest, T, [Field | Acc]).

decode_data_field(<<255, Len:16, Value:Len/binary, Rest/binary>>, 65535, Scope, Type) ->
    {typecast(Value, Scope, Type, Len), Rest};
decode_data_field(<<Len:8, Value:Len/binary, Rest/binary>>, 65535, Scope, Type) ->
    {typecast(Value, Scope, Type, Len), Rest};
decode_data_field(Bin, Len, Scope, Type) ->
    <<Value:Len/binary, Rest/binary>> = Bin,
    {typecast(Value, Scope, Type, Len), Rest}.

decode_options_templates(<<Id:16, Count:16, ScopeCount:16, Rest/binary>>, Domain) ->
    Template = decode_options_template_fields(Rest, Count, ScopeCount, []),
    store_template(Domain, Id, Template).

decode_options_template_fields(Bin, Count, _ScopeCount, Acc)
  when Bin =:= <<>>; Count =:= 0 ->
    lists:reverse(Acc);

decode_options_template_fields(Data, Count, ScopeCount, Acc) ->
    {IE, Rest} = decode_ie(Data),
    Entry = if ScopeCount > 0 -> {scope, IE};
	       true           -> IE
	    end,
    decode_options_template_fields(Rest, Count - 1, ScopeCount - 1, [Entry | Acc]).

decode_ie(<<0:1, Type:15, Len:16, Rest/binary>>) ->
    {{Type, Len}, Rest};
decode_ie(<<1:1, Type:15, Len:16, Vendor:32, Rest/binary>>) ->
    {{{Vendor, Type}, Len}, Rest}.

lookup_template(Domain, ID) ->
    case ets:lookup(?TEMPLATES_TABLE, {Domain, ID}) of
        [] ->
            false;
        [{_, Map}] ->
            Map
    end.

store_template(Domain, ID, Map) ->
    Size = lists:foldl(fun record_size/2, 0, Map),
    ets:insert(?TEMPLATES_TABLE, {{Domain, ID}, {Size, Map}}).

record_size({scope, {_, 65535}}, Total) ->
    Total + 1;
record_size({scope, {_, Size}}, Total) ->
    Size + Total;
record_size({_, 65535}, Total) ->
    Total + 1;
record_size({_, Size}, Total) ->
    Size + Total.

typecast(Bin, field, Type, Length) ->
    typecast_field(Bin, Type, Length);

typecast(Bin, scope, Type, Length) ->
    {scope, typecast_field(Bin, Type, Length)}.

encode_variable_field(Value)
  when byte_size(Value) < 255 ->
    <<(byte_size(Value)):8, Value/binary>>;
encode_variable_field(Value) ->
    <<255, (byte_size(Value)):16, Value/binary>>.

bin2bool(<<1>>) -> true;
bin2bool(<<2>>) -> false.

%%%===================================================================

type_size(boolean)              -> 1;
type_size(unsigned8)            -> 1;
type_size(unsigned16)           -> 2;
type_size(unsigned32)           -> 4;
type_size(unsigned64)           -> 8;
type_size(signed8)              -> 1;
type_size(signed16)             -> 2;
type_size(signed32)             -> 4;
type_size(signed64)             -> 8;
type_size(float32)              -> 4;
type_size(float64)              -> 8;
type_size(string)               -> 65535;
type_size(octetArray)           -> 65535;
type_size(ipv4Address)          -> 4;
type_size(ipv6Address)          -> 16;
type_size(macAddress)           -> 6;
type_size(dateTimeSeconds)      -> 4;
type_size(dateTimeMilliseconds) -> 8;
type_size(dateTimeMicroseconds) -> 8;
type_size(dateTimeNanoseconds)  -> 8.

encode_field_value(boolean, true) ->
    <<1>>;
encode_field_value(boolean, false) ->
    <<2>>;
encode_field_value(unsigned8, Value)
  when is_integer(Value) andalso Value >= 0 ->
    <<Value:8/unsigned-integer>>;
encode_field_value(unsigned16, Value)
  when is_integer(Value) andalso Value >= 0 ->
    <<Value:16/unsigned-integer>>;
encode_field_value(unsigned32, Value)
  when is_integer(Value) andalso Value >= 0 ->
    <<Value:32/unsigned-integer>>;
encode_field_value(unsigned64, Value)
  when is_integer(Value) andalso Value >= 0 ->
    <<Value:64/unsigned-integer>>;
encode_field_value(signed8, Value)
  when is_integer(Value) ->
    <<Value:8/signed-integer>>;
encode_field_value(signed16, Value)
  when is_integer(Value) ->
    <<Value:16/signed-integer>>;
encode_field_value(signed32, Value)
  when is_integer(Value) ->
    <<Value:32/signed-integer>>;
encode_field_value(signed64, Value)
  when is_integer(Value) ->
    <<Value:64/signed-integer>>;
encode_field_value(float32, Value)
  when is_number(Value) ->
    <<Value:32/float>>;
encode_field_value(float64, Value)
  when is_number(Value) ->
    <<Value:64/float>>;
encode_field_value(string, Value)
  when is_list(Value) ->
    encode_variable_field(iolist_to_binary(Value));
encode_field_value(Type, Value)
  when (Type == string orelse Type == octetArray) andalso is_binary(Value) ->
    encode_variable_field(Value);
encode_field_value(ipv4Address, {A, B, C, D}) ->
    <<A, B, C, D>>;
encode_field_value(ipv4Address, Value)
  when is_binary(Value) andalso byte_size(Value) == 4 ->
    Value;
encode_field_value(ipv6Address, {A, B, C, D, E, F, G, H}) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>>;
encode_field_value(ipv6Address, Value)
  when is_binary(Value) andalso byte_size(Value) == 16 ->
    Value;
encode_field_value(macAddress, Value)
  when is_binary(Value) andalso byte_size(Value) == 6 ->
    Value;
encode_field_value(dateTimeSeconds, Value)
  when is_integer(Value) andalso Value >= 0 ->
    <<Value:32/unsigned-integer>>;
encode_field_value(dateTimeMilliseconds, Value)
  when is_integer(Value) andalso Value >= 0 ->
    <<Value:64/unsigned-integer>>;
encode_field_value(dateTimeMicroseconds, {Seconds, Fraction})
  when is_integer(Seconds) andalso is_integer(Fraction) ->
    <<Seconds:32, Fraction:32>>;
encode_field_value(dateTimeNanoseconds, {Seconds, Fraction})
  when is_integer(Seconds) andalso is_integer(Fraction) ->
    <<Seconds:32, Fraction:32>>;
encode_field_value(Type, Value) ->
    erlang:error(badarg, [Type, Value]).

encode_field(Id, Value) when is_atom(Id) ->
    {_Code, Type} = type_info(Id),
    encode_field_value(Type, Value).

%%%===================================================================

-include("ipfix_v10_codec_gen.hrl").

%%%===================================================================
%%% Internal functions
%%%===================================================================

pad_length(Width, Length) ->
    (Width - Length rem Width) rem Width.

%%
%% pad binary to specific length
%%   -> http://www.erlang.org/pipermail/erlang-questions/2008-December/040709.html
%%
pad_to(Width, Binary) ->
    case pad_length(Width, size(Binary)) of
        0 -> Binary;
        N -> <<Binary/binary, 0:(N*8)>>
    end.
