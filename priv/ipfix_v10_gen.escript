#!/usr/bin/env escript

csv_init() ->
    {normal, []}.

csv_scan(Line, {quote, [Token | Acc]}) ->
    csv_scan(Line, Token, {quote, Acc});
csv_scan(Line, State) ->
    csv_scan(Line, [], State).

csv_scan([], [], {normal, Acc}) ->
    {lists:reverse([Acc]), csv_init()};
csv_scan([], Token, {normal, Acc}) ->
    {lists:reverse([lists:reverse(Token)|Acc]), csv_init()};
csv_scan([], [], {State, Acc}) ->
    {continue, {State, Acc}};

csv_scan([], Token, {quote, Acc}) ->
    {continue, {quote, [[$\n | Token]|Acc]}};

csv_scan([$,|Line], Token, {normal, Acc}) ->
    csv_scan(Line, [], {normal, [lists:reverse(Token)|Acc]});
csv_scan([["\\\""]|Line], Token, {State, Acc}) ->
    csv_scan(Line, [$"|Token], {State, Acc});
csv_scan([$"|Line], Token, {normal, Acc}) ->
    csv_scan(Line, Token, {quote, Acc});
csv_scan([$"|Line], Token, {quote, Acc}) ->
    csv_scan(Line, Token, {normal, Acc});
csv_scan([Char|Line], Token, {State, Acc}) ->
    csv_scan(Line, [Char|Token], {State, Acc}).

process_line(Line, {CSV0, Codec0}) ->
    {Data, CSV} = csv_scan(Line, CSV0),
    case Data of
	continue ->
	    {CSV, Codec0};
	[ElementId, Name, DataTypeStr, _DataTypeSemantics, Status,
	 _Description, _Units, _Range, _References, _Requester, _Revision, _Date] ->
	    Id = (catch list_to_integer(ElementId)),
	    DataType = list_to_atom(DataTypeStr),
	    Codec = process_element(Id, Name, DataType, Status, Codec0),
	    {CSV, Codec};
	_Other ->
	    {CSV, Codec0}
    end.

read_line(File, State0) ->
    case io:get_line(File, "") of
        eof  -> file:close(File), State0;
        Line -> State = process_line(string:strip(Line, both, $\n), State0),
		read_line(File, State)
    end.

codec_init() ->
    {[], []}.

process_element(Id, _Name, _DataType, Status, Codec)
  when not is_integer(Id); Id == 0; Id == 97;
       Status =:= "deprecated" ->
    Codec;

process_element(Id, Name, DataType, _Status, {TypeCast, TypeInfo}) ->
    TC = gen_typecast(Id, Name, DataType),
    TI = io_lib:format("type_info('~s') -> {~w, '~s'}", [Name, Id, DataType]),
    {[TC | TypeCast], [TI | TypeInfo]}.

gen_typecast_uint(Id, Name, Bytes) ->
    io_lib:format("typecast_field(Bin, ~w, Length)~n"
		  "  when Length =< ~w ->~n"
		  "    <<Value:Length/unsigned-integer-unit:8>> = Bin,~n"
		  "    {'~s', Value}",
		  [Id, Bytes, Name]).

gen_typecast_int(Id, Name, Bytes) ->
    io_lib:format("typecast_field(Bin, ~w, Length)~n"
		  "  when Length =< ~w ->~n"
		  "    <<Value:Length/signed-integer-unit:8>> = Bin,~n"
		  "    {'~s', Value}",
		  [Id, Bytes, Name]).

gen_typecast_float(Id, Name, Bytes) ->
    io_lib:format("typecast_field(Bin, ~w, Length)~n"
		  "  when Length =< ~w ->~n"
		  "    <<Value:Length/float-unit:8>> = Bin,~n"
		  "    {'~s', Value}",
		  [Id, Bytes, Name]).

%% gen_typecast_float(Id, Name, Bytes) ->
%%     io_lib:format("typecast_field(<<Value:~w/float>>, ~w, ~w) ->~n    {'~s', Value}",
%% 		  [Bytes * 8, Id, Bytes, Name]).

gen_typecast(Id, Name, boolean) ->
    io_lib:format("typecast_field(Bin, ~w, 1) ->~n"
		  "    {'~s', bin2bool(Bin)}",
		  [Id, Name]);
gen_typecast(Id, Name, unsigned8) ->
    gen_typecast_uint(Id, Name, 1);
gen_typecast(Id, Name, unsigned16) ->
    gen_typecast_uint(Id, Name, 2);
gen_typecast(Id, Name, unsigned32) ->
    gen_typecast_uint(Id, Name, 4);
gen_typecast(Id, Name, unsigned64) ->
    gen_typecast_uint(Id, Name, 8);
gen_typecast(Id, Name, signed8) ->
    gen_typecast_int(Id, Name, 1);
gen_typecast(Id, Name, signed16) ->
    gen_typecast_int(Id, Name, 2);
gen_typecast(Id, Name, signed32) ->
    gen_typecast_int(Id, Name, 4);
gen_typecast(Id, Name, signed64) ->
    gen_typecast_int(Id, Name, 8);
gen_typecast(Id, Name, float32) ->
    gen_typecast_float(Id, Name, 4);
gen_typecast(Id, Name, float64) ->
    gen_typecast_float(Id, Name, 8);
gen_typecast(Id, Name, ipv4Address) ->
    io_lib:format("typecast_field(Bin, ~w, 4) ->~n"
		  "    <<A, B, C, D>> = Bin,~n"
		  "    {'~s', {A, B, C, D}}",
		  [Id, Name]);
gen_typecast(Id, Name, ipv6Address) ->
    io_lib:format("typecast_field(Bin, ~w, 16) ->~n"
		  "    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,~n"
		  "    {'~s', {A, B, C, D, E, F, G, H}}",
		  [Id, Name]);
gen_typecast(Id, Name, macAddress) ->
    io_lib:format("typecast_field(Value, ~w, 6)~n  when byte_size(Value) =:= 6 ->~n    {'~s', Value}",
		  [Id, Name]);
gen_typecast(Id, Name, DataType)
  when DataType == string; DataType == octetArray ->
    io_lib:format("typecast_field(Value, ~w, Length)~n  when byte_size(Value) == Length ->~n    {'~s', Value}",
		  [Id, Name]);
gen_typecast(Id, Name, dateTimeSeconds) ->
    gen_typecast_uint(Id, Name, 4);
gen_typecast(Id, Name, dateTimeMilliseconds) ->
    gen_typecast_uint(Id, Name, 8);
gen_typecast(Id, Name, DataType)
  when DataType == dateTimeMicroseconds; DataType == dateTimeNanoseconds ->
    io_lib:format("typecast_field(Bin, ~w, 8) ->~n"
		  "    <<Seconds:32, Fraction:32>> = Bin,"
		  "    {'~s', {Seconds, Fraction}}",
		  [Id, Name]);

gen_typecast(Id, Name, DataType)
  when DataType == basicList;
       DataType == subTemplateList;
       DataType == subTemplateMultiList ->
    io_lib:format("%% ~p ~p ~p", [Id, Name, DataType]);

gen_typecast(Id, Name, DataType) ->
    io_lib:format("~p ~p ~p", [Id, Name, DataType]).

main(_) ->
    {ok, File} = file:open("priv/ipfix-information-elements.csv", [read]),
    {_, Codec} = read_line(File, {csv_init(), codec_init()}),
    {TypeSpec0, TypeInfo0} = Codec,

    TypeSpec = ["typecast_field(Value, Id, _Length) ->\n"
		"    {Id, Value}"
		| TypeSpec0],
    TypeInfo = [
	      "type_info(Id) ->\n"
	      "    erlang:error(badarg, [Id])"
	      | TypeInfo0],

    D = ["%%\n%% This file is auto-generated. DO NOT EDIT\n%%",
	 "\n\n%% ============================\n\n",
	 lists:join(";\n\n", lists:reverse(TypeSpec)), ".\n\n",
	 "\n\n%% ============================\n\n",
	 lists:join(";\n", lists:reverse(TypeInfo)), ".\n"
	],
    file:write_file("src/ipfix_v10_codec_gen.hrl", D).
