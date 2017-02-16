%%
%% This file is auto-generated. DO NOT EDIT
%%

%% ============================

typecast_field(Bin, 1, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'octetDeltaCount', Value};

typecast_field(Bin, 2, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'packetDeltaCount', Value};

typecast_field(Bin, 3, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'deltaFlowCount', Value};

typecast_field(Bin, 4, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'protocolIdentifier', Value};

typecast_field(Bin, 5, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipClassOfService', Value};

typecast_field(Bin, 6, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpControlBits', Value};

typecast_field(Bin, 7, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'sourceTransportPort', Value};

typecast_field(Bin, 8, 4) ->
    <<A, B, C, D>> = Bin,
    {'sourceIPv4Address', {A, B, C, D}};

typecast_field(Bin, 9, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'sourceIPv4PrefixLength', Value};

typecast_field(Bin, 10, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ingressInterface', Value};

typecast_field(Bin, 11, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'destinationTransportPort', Value};

typecast_field(Bin, 12, 4) ->
    <<A, B, C, D>> = Bin,
    {'destinationIPv4Address', {A, B, C, D}};

typecast_field(Bin, 13, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'destinationIPv4PrefixLength', Value};

typecast_field(Bin, 14, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'egressInterface', Value};

typecast_field(Bin, 15, 4) ->
    <<A, B, C, D>> = Bin,
    {'ipNextHopIPv4Address', {A, B, C, D}};

typecast_field(Bin, 16, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'bgpSourceAsNumber', Value};

typecast_field(Bin, 17, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'bgpDestinationAsNumber', Value};

typecast_field(Bin, 18, 4) ->
    <<A, B, C, D>> = Bin,
    {'bgpNextHopIPv4Address', {A, B, C, D}};

typecast_field(Bin, 19, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postMCastPacketDeltaCount', Value};

typecast_field(Bin, 20, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postMCastOctetDeltaCount', Value};

typecast_field(Bin, 21, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowEndSysUpTime', Value};

typecast_field(Bin, 22, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowStartSysUpTime', Value};

typecast_field(Bin, 23, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postOctetDeltaCount', Value};

typecast_field(Bin, 24, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postPacketDeltaCount', Value};

typecast_field(Bin, 25, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'minimumIpTotalLength', Value};

typecast_field(Bin, 26, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'maximumIpTotalLength', Value};

typecast_field(Bin, 27, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'sourceIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 28, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'destinationIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 29, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'sourceIPv6PrefixLength', Value};

typecast_field(Bin, 30, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'destinationIPv6PrefixLength', Value};

typecast_field(Bin, 31, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowLabelIPv6', Value};

typecast_field(Bin, 32, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'icmpTypeCodeIPv4', Value};

typecast_field(Bin, 33, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'igmpType', Value};

typecast_field(Bin, 36, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowActiveTimeout', Value};

typecast_field(Bin, 37, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowIdleTimeout', Value};

typecast_field(Bin, 40, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exportedOctetTotalCount', Value};

typecast_field(Bin, 41, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exportedMessageTotalCount', Value};

typecast_field(Bin, 42, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exportedFlowRecordTotalCount', Value};

typecast_field(Bin, 44, 4) ->
    <<A, B, C, D>> = Bin,
    {'sourceIPv4Prefix', {A, B, C, D}};

typecast_field(Bin, 45, 4) ->
    <<A, B, C, D>> = Bin,
    {'destinationIPv4Prefix', {A, B, C, D}};

typecast_field(Bin, 46, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mplsTopLabelType', Value};

typecast_field(Bin, 47, 4) ->
    <<A, B, C, D>> = Bin,
    {'mplsTopLabelIPv4Address', {A, B, C, D}};

typecast_field(Bin, 52, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'minimumTTL', Value};

typecast_field(Bin, 53, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'maximumTTL', Value};

typecast_field(Bin, 54, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'fragmentIdentification', Value};

typecast_field(Bin, 55, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postIpClassOfService', Value};

typecast_field(Value, 56, 6)
  when byte_size(Value) =:= 6 ->
    {'sourceMacAddress', Value};

typecast_field(Value, 57, 6)
  when byte_size(Value) =:= 6 ->
    {'postDestinationMacAddress', Value};

typecast_field(Bin, 58, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'vlanId', Value};

typecast_field(Bin, 59, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postVlanId', Value};

typecast_field(Bin, 60, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipVersion', Value};

typecast_field(Bin, 61, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowDirection', Value};

typecast_field(Bin, 62, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'ipNextHopIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 63, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'bgpNextHopIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 64, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipv6ExtensionHeaders', Value};

typecast_field(Value, 70, Length)
  when byte_size(Value) == Length ->
    {'mplsTopLabelStackSection', Value};

typecast_field(Value, 71, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection2', Value};

typecast_field(Value, 72, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection3', Value};

typecast_field(Value, 73, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection4', Value};

typecast_field(Value, 74, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection5', Value};

typecast_field(Value, 75, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection6', Value};

typecast_field(Value, 76, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection7', Value};

typecast_field(Value, 77, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection8', Value};

typecast_field(Value, 78, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection9', Value};

typecast_field(Value, 79, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection10', Value};

typecast_field(Value, 80, 6)
  when byte_size(Value) =:= 6 ->
    {'destinationMacAddress', Value};

typecast_field(Value, 81, 6)
  when byte_size(Value) =:= 6 ->
    {'postSourceMacAddress', Value};

typecast_field(Value, 82, Length)
  when byte_size(Value) == Length ->
    {'interfaceName', Value};

typecast_field(Value, 83, Length)
  when byte_size(Value) == Length ->
    {'interfaceDescription', Value};

typecast_field(Bin, 85, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'octetTotalCount', Value};

typecast_field(Bin, 86, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'packetTotalCount', Value};

typecast_field(Bin, 88, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'fragmentOffset', Value};

typecast_field(Bin, 89, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'forwardingStatus', Value};

typecast_field(Value, 90, Length)
  when byte_size(Value) == Length ->
    {'mplsVpnRouteDistinguisher', Value};

typecast_field(Bin, 91, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mplsTopLabelPrefixLength', Value};

typecast_field(Bin, 92, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'srcTrafficIndex', Value};

typecast_field(Bin, 93, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dstTrafficIndex', Value};

typecast_field(Value, 94, Length)
  when byte_size(Value) == Length ->
    {'applicationDescription', Value};

typecast_field(Value, 95, Length)
  when byte_size(Value) == Length ->
    {'applicationId', Value};

typecast_field(Value, 96, Length)
  when byte_size(Value) == Length ->
    {'applicationName', Value};

typecast_field(Bin, 98, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postIpDiffServCodePoint', Value};

typecast_field(Bin, 99, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'multicastReplicationFactor', Value};

typecast_field(Bin, 101, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'classificationEngineId', Value};

typecast_field(Bin, 128, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'bgpNextAdjacentAsNumber', Value};

typecast_field(Bin, 129, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'bgpPrevAdjacentAsNumber', Value};

typecast_field(Bin, 130, 4) ->
    <<A, B, C, D>> = Bin,
    {'exporterIPv4Address', {A, B, C, D}};

typecast_field(Bin, 131, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'exporterIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 132, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'droppedOctetDeltaCount', Value};

typecast_field(Bin, 133, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'droppedPacketDeltaCount', Value};

typecast_field(Bin, 134, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'droppedOctetTotalCount', Value};

typecast_field(Bin, 135, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'droppedPacketTotalCount', Value};

typecast_field(Bin, 136, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowEndReason', Value};

typecast_field(Bin, 137, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'commonPropertiesId', Value};

typecast_field(Bin, 138, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'observationPointId', Value};

typecast_field(Bin, 139, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'icmpTypeCodeIPv6', Value};

typecast_field(Bin, 140, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'mplsTopLabelIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 141, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'lineCardId', Value};

typecast_field(Bin, 142, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'portId', Value};

typecast_field(Bin, 143, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'meteringProcessId', Value};

typecast_field(Bin, 144, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exportingProcessId', Value};

typecast_field(Bin, 145, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'templateId', Value};

typecast_field(Bin, 146, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'wlanChannelId', Value};

typecast_field(Value, 147, Length)
  when byte_size(Value) == Length ->
    {'wlanSSID', Value};

typecast_field(Bin, 148, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowId', Value};

typecast_field(Bin, 149, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'observationDomainId', Value};

typecast_field(Bin, 150, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowStartSeconds', Value};

typecast_field(Bin, 151, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowEndSeconds', Value};

typecast_field(Bin, 152, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowStartMilliseconds', Value};

typecast_field(Bin, 153, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowEndMilliseconds', Value};

typecast_field(Bin, 154, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'flowStartMicroseconds', {Seconds, Fraction}};

typecast_field(Bin, 155, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'flowEndMicroseconds', {Seconds, Fraction}};

typecast_field(Bin, 156, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'flowStartNanoseconds', {Seconds, Fraction}};

typecast_field(Bin, 157, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'flowEndNanoseconds', {Seconds, Fraction}};

typecast_field(Bin, 158, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowStartDeltaMicroseconds', Value};

typecast_field(Bin, 159, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowEndDeltaMicroseconds', Value};

typecast_field(Bin, 160, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'systemInitTimeMilliseconds', Value};

typecast_field(Bin, 161, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowDurationMilliseconds', Value};

typecast_field(Bin, 162, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowDurationMicroseconds', Value};

typecast_field(Bin, 163, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'observedFlowTotalCount', Value};

typecast_field(Bin, 164, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ignoredPacketTotalCount', Value};

typecast_field(Bin, 165, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ignoredOctetTotalCount', Value};

typecast_field(Bin, 166, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'notSentFlowTotalCount', Value};

typecast_field(Bin, 167, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'notSentPacketTotalCount', Value};

typecast_field(Bin, 168, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'notSentOctetTotalCount', Value};

typecast_field(Bin, 169, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'destinationIPv6Prefix', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 170, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'sourceIPv6Prefix', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 171, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postOctetTotalCount', Value};

typecast_field(Bin, 172, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postPacketTotalCount', Value};

typecast_field(Bin, 173, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowKeyIndicator', Value};

typecast_field(Bin, 174, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postMCastPacketTotalCount', Value};

typecast_field(Bin, 175, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postMCastOctetTotalCount', Value};

typecast_field(Bin, 176, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'icmpTypeIPv4', Value};

typecast_field(Bin, 177, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'icmpCodeIPv4', Value};

typecast_field(Bin, 178, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'icmpTypeIPv6', Value};

typecast_field(Bin, 179, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'icmpCodeIPv6', Value};

typecast_field(Bin, 180, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'udpSourcePort', Value};

typecast_field(Bin, 181, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'udpDestinationPort', Value};

typecast_field(Bin, 182, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpSourcePort', Value};

typecast_field(Bin, 183, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpDestinationPort', Value};

typecast_field(Bin, 184, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpSequenceNumber', Value};

typecast_field(Bin, 185, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpAcknowledgementNumber', Value};

typecast_field(Bin, 186, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpWindowSize', Value};

typecast_field(Bin, 187, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpUrgentPointer', Value};

typecast_field(Bin, 188, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpHeaderLength', Value};

typecast_field(Bin, 189, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipHeaderLength', Value};

typecast_field(Bin, 190, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'totalLengthIPv4', Value};

typecast_field(Bin, 191, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'payloadLengthIPv6', Value};

typecast_field(Bin, 192, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipTTL', Value};

typecast_field(Bin, 193, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'nextHeaderIPv6', Value};

typecast_field(Bin, 194, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mplsPayloadLength', Value};

typecast_field(Bin, 195, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipDiffServCodePoint', Value};

typecast_field(Bin, 196, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipPrecedence', Value};

typecast_field(Bin, 197, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'fragmentFlags', Value};

typecast_field(Bin, 198, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'octetDeltaSumOfSquares', Value};

typecast_field(Bin, 199, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'octetTotalSumOfSquares', Value};

typecast_field(Bin, 200, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mplsTopLabelTTL', Value};

typecast_field(Bin, 201, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mplsLabelStackLength', Value};

typecast_field(Bin, 202, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mplsLabelStackDepth', Value};

typecast_field(Bin, 203, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mplsTopLabelExp', Value};

typecast_field(Bin, 204, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipPayloadLength', Value};

typecast_field(Bin, 205, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'udpMessageLength', Value};

typecast_field(Bin, 206, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'isMulticast', Value};

typecast_field(Bin, 207, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipv4IHL', Value};

typecast_field(Bin, 208, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipv4Options', Value};

typecast_field(Bin, 209, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpOptions', Value};

typecast_field(Value, 210, Length)
  when byte_size(Value) == Length ->
    {'paddingOctets', Value};

typecast_field(Bin, 211, 4) ->
    <<A, B, C, D>> = Bin,
    {'collectorIPv4Address', {A, B, C, D}};

typecast_field(Bin, 212, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'collectorIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 213, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exportInterface', Value};

typecast_field(Bin, 214, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exportProtocolVersion', Value};

typecast_field(Bin, 215, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exportTransportProtocol', Value};

typecast_field(Bin, 216, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'collectorTransportPort', Value};

typecast_field(Bin, 217, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exporterTransportPort', Value};

typecast_field(Bin, 218, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpSynTotalCount', Value};

typecast_field(Bin, 219, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpFinTotalCount', Value};

typecast_field(Bin, 220, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpRstTotalCount', Value};

typecast_field(Bin, 221, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpPshTotalCount', Value};

typecast_field(Bin, 222, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpAckTotalCount', Value};

typecast_field(Bin, 223, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpUrgTotalCount', Value};

typecast_field(Bin, 224, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ipTotalLength', Value};

typecast_field(Bin, 225, 4) ->
    <<A, B, C, D>> = Bin,
    {'postNATSourceIPv4Address', {A, B, C, D}};

typecast_field(Bin, 226, 4) ->
    <<A, B, C, D>> = Bin,
    {'postNATDestinationIPv4Address', {A, B, C, D}};

typecast_field(Bin, 227, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postNAPTSourceTransportPort', Value};

typecast_field(Bin, 228, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postNAPTDestinationTransportPort', Value};

typecast_field(Bin, 229, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'natOriginatingAddressRealm', Value};

typecast_field(Bin, 230, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'natEvent', Value};

typecast_field(Bin, 231, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'initiatorOctets', Value};

typecast_field(Bin, 232, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'responderOctets', Value};

typecast_field(Bin, 233, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'firewallEvent', Value};

typecast_field(Bin, 234, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ingressVRFID', Value};

typecast_field(Bin, 235, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'egressVRFID', Value};

typecast_field(Value, 236, Length)
  when byte_size(Value) == Length ->
    {'VRFname', Value};

typecast_field(Bin, 237, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postMplsTopLabelExp', Value};

typecast_field(Bin, 238, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'tcpWindowScale', Value};

typecast_field(Bin, 239, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'biflowDirection', Value};

typecast_field(Bin, 240, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ethernetHeaderLength', Value};

typecast_field(Bin, 241, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ethernetPayloadLength', Value};

typecast_field(Bin, 242, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ethernetTotalLength', Value};

typecast_field(Bin, 243, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dot1qVlanId', Value};

typecast_field(Bin, 244, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dot1qPriority', Value};

typecast_field(Bin, 245, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dot1qCustomerVlanId', Value};

typecast_field(Bin, 246, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dot1qCustomerPriority', Value};

typecast_field(Value, 247, Length)
  when byte_size(Value) == Length ->
    {'metroEvcId', Value};

typecast_field(Bin, 248, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'metroEvcType', Value};

typecast_field(Bin, 249, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'pseudoWireId', Value};

typecast_field(Bin, 250, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'pseudoWireType', Value};

typecast_field(Bin, 251, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'pseudoWireControlWord', Value};

typecast_field(Bin, 252, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ingressPhysicalInterface', Value};

typecast_field(Bin, 253, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'egressPhysicalInterface', Value};

typecast_field(Bin, 254, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postDot1qVlanId', Value};

typecast_field(Bin, 255, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postDot1qCustomerVlanId', Value};

typecast_field(Bin, 256, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ethernetType', Value};

typecast_field(Bin, 257, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postIpPrecedence', Value};

typecast_field(Bin, 258, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'collectionTimeMilliseconds', Value};

typecast_field(Bin, 259, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'exportSctpStreamId', Value};

typecast_field(Bin, 260, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'maxExportSeconds', Value};

typecast_field(Bin, 261, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'maxFlowEndSeconds', Value};

typecast_field(Value, 262, Length)
  when byte_size(Value) == Length ->
    {'messageMD5Checksum', Value};

typecast_field(Bin, 263, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'messageScope', Value};

typecast_field(Bin, 264, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'minExportSeconds', Value};

typecast_field(Bin, 265, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'minFlowStartSeconds', Value};

typecast_field(Value, 266, Length)
  when byte_size(Value) == Length ->
    {'opaqueOctets', Value};

typecast_field(Bin, 267, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'sessionScope', Value};

typecast_field(Bin, 268, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'maxFlowEndMicroseconds', {Seconds, Fraction}};

typecast_field(Bin, 269, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'maxFlowEndMilliseconds', Value};

typecast_field(Bin, 270, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'maxFlowEndNanoseconds', {Seconds, Fraction}};

typecast_field(Bin, 271, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'minFlowStartMicroseconds', {Seconds, Fraction}};

typecast_field(Bin, 272, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'minFlowStartMilliseconds', Value};

typecast_field(Bin, 273, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'minFlowStartNanoseconds', {Seconds, Fraction}};

typecast_field(Value, 274, Length)
  when byte_size(Value) == Length ->
    {'collectorCertificate', Value};

typecast_field(Value, 275, Length)
  when byte_size(Value) == Length ->
    {'exporterCertificate', Value};

typecast_field(Bin, 276, 1) ->
    {'dataRecordsReliability', bin2bool(Bin)};

typecast_field(Bin, 277, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'observationPointType', Value};

typecast_field(Bin, 278, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'newConnectionDeltaCount', Value};

typecast_field(Bin, 279, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'connectionSumDurationSeconds', Value};

typecast_field(Bin, 280, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'connectionTransactionId', Value};

typecast_field(Bin, 281, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'postNATSourceIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 282, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'postNATDestinationIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 283, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'natPoolId', Value};

typecast_field(Value, 284, Length)
  when byte_size(Value) == Length ->
    {'natPoolName', Value};

typecast_field(Bin, 285, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'anonymizationFlags', Value};

typecast_field(Bin, 286, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'anonymizationTechnique', Value};

typecast_field(Bin, 287, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'informationElementIndex', Value};

typecast_field(Value, 288, Length)
  when byte_size(Value) == Length ->
    {'p2pTechnology', Value};

typecast_field(Value, 289, Length)
  when byte_size(Value) == Length ->
    {'tunnelTechnology', Value};

typecast_field(Value, 290, Length)
  when byte_size(Value) == Length ->
    {'encryptedTechnology', Value};

%% 291 "basicList" basicList "current";

%% 292 "subTemplateList" subTemplateList "current";

%% 293 "subTemplateMultiList" subTemplateMultiList "current";

typecast_field(Bin, 294, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'bgpValidityState', Value};

typecast_field(Bin, 295, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'IPSecSPI', Value};

typecast_field(Bin, 296, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'greKey', Value};

typecast_field(Bin, 297, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'natType', Value};

typecast_field(Bin, 298, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'initiatorPackets', Value};

typecast_field(Bin, 299, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'responderPackets', Value};

typecast_field(Value, 300, Length)
  when byte_size(Value) == Length ->
    {'observationDomainName', Value};

typecast_field(Bin, 301, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'selectionSequenceId', Value};

typecast_field(Bin, 302, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'selectorId', Value};

typecast_field(Bin, 303, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'informationElementId', Value};

typecast_field(Bin, 304, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'selectorAlgorithm', Value};

typecast_field(Bin, 305, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'samplingPacketInterval', Value};

typecast_field(Bin, 306, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'samplingPacketSpace', Value};

typecast_field(Bin, 307, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'samplingTimeInterval', Value};

typecast_field(Bin, 308, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'samplingTimeSpace', Value};

typecast_field(Bin, 309, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'samplingSize', Value};

typecast_field(Bin, 310, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'samplingPopulation', Value};

typecast_field(Bin, 311, Length)
  when Length =< 8 ->
    <<Value:Length/float-unit:8>> = Bin,
    {'samplingProbability', Value};

typecast_field(Bin, 312, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dataLinkFrameSize', Value};

typecast_field(Value, 313, Length)
  when byte_size(Value) == Length ->
    {'ipHeaderPacketSection', Value};

typecast_field(Value, 314, Length)
  when byte_size(Value) == Length ->
    {'ipPayloadPacketSection', Value};

typecast_field(Value, 315, Length)
  when byte_size(Value) == Length ->
    {'dataLinkFrameSection', Value};

typecast_field(Value, 316, Length)
  when byte_size(Value) == Length ->
    {'mplsLabelStackSection', Value};

typecast_field(Value, 317, Length)
  when byte_size(Value) == Length ->
    {'mplsPayloadPacketSection', Value};

typecast_field(Bin, 318, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'selectorIdTotalPktsObserved', Value};

typecast_field(Bin, 319, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'selectorIdTotalPktsSelected', Value};

typecast_field(Bin, 320, Length)
  when Length =< 8 ->
    <<Value:Length/float-unit:8>> = Bin,
    {'absoluteError', Value};

typecast_field(Bin, 321, Length)
  when Length =< 8 ->
    <<Value:Length/float-unit:8>> = Bin,
    {'relativeError', Value};

typecast_field(Bin, 322, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'observationTimeSeconds', Value};

typecast_field(Bin, 323, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'observationTimeMilliseconds', Value};

typecast_field(Bin, 324, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'observationTimeMicroseconds', {Seconds, Fraction}};

typecast_field(Bin, 325, 8) ->
    <<Seconds:32, Fraction:32>> = Bin,    {'observationTimeNanoseconds', {Seconds, Fraction}};

typecast_field(Bin, 326, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'digestHashValue', Value};

typecast_field(Bin, 327, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'hashIPPayloadOffset', Value};

typecast_field(Bin, 328, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'hashIPPayloadSize', Value};

typecast_field(Bin, 329, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'hashOutputRangeMin', Value};

typecast_field(Bin, 330, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'hashOutputRangeMax', Value};

typecast_field(Bin, 331, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'hashSelectedRangeMin', Value};

typecast_field(Bin, 332, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'hashSelectedRangeMax', Value};

typecast_field(Bin, 333, 1) ->
    {'hashDigestOutput', bin2bool(Bin)};

typecast_field(Bin, 334, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'hashInitialiserValue', Value};

typecast_field(Value, 335, Length)
  when byte_size(Value) == Length ->
    {'selectorName', Value};

typecast_field(Bin, 336, Length)
  when Length =< 8 ->
    <<Value:Length/float-unit:8>> = Bin,
    {'upperCILimit', Value};

typecast_field(Bin, 337, Length)
  when Length =< 8 ->
    <<Value:Length/float-unit:8>> = Bin,
    {'lowerCILimit', Value};

typecast_field(Bin, 338, Length)
  when Length =< 8 ->
    <<Value:Length/float-unit:8>> = Bin,
    {'confidenceLevel', Value};

typecast_field(Bin, 339, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'informationElementDataType', Value};

typecast_field(Value, 340, Length)
  when byte_size(Value) == Length ->
    {'informationElementDescription', Value};

typecast_field(Value, 341, Length)
  when byte_size(Value) == Length ->
    {'informationElementName', Value};

typecast_field(Bin, 342, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'informationElementRangeBegin', Value};

typecast_field(Bin, 343, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'informationElementRangeEnd', Value};

typecast_field(Bin, 344, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'informationElementSemantics', Value};

typecast_field(Bin, 345, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'informationElementUnits', Value};

typecast_field(Bin, 346, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'privateEnterpriseNumber', Value};

typecast_field(Value, 347, Length)
  when byte_size(Value) == Length ->
    {'virtualStationInterfaceId', Value};

typecast_field(Value, 348, Length)
  when byte_size(Value) == Length ->
    {'virtualStationInterfaceName', Value};

typecast_field(Value, 349, Length)
  when byte_size(Value) == Length ->
    {'virtualStationUUID', Value};

typecast_field(Value, 350, Length)
  when byte_size(Value) == Length ->
    {'virtualStationName', Value};

typecast_field(Bin, 351, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'layer2SegmentId', Value};

typecast_field(Bin, 352, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'layer2OctetDeltaCount', Value};

typecast_field(Bin, 353, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'layer2OctetTotalCount', Value};

typecast_field(Bin, 354, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ingressUnicastPacketTotalCount', Value};

typecast_field(Bin, 355, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ingressMulticastPacketTotalCount', Value};

typecast_field(Bin, 356, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ingressBroadcastPacketTotalCount', Value};

typecast_field(Bin, 357, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'egressUnicastPacketTotalCount', Value};

typecast_field(Bin, 358, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'egressBroadcastPacketTotalCount', Value};

typecast_field(Bin, 359, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'monitoringIntervalStartMilliSeconds', Value};

typecast_field(Bin, 360, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'monitoringIntervalEndMilliSeconds', Value};

typecast_field(Bin, 361, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'portRangeStart', Value};

typecast_field(Bin, 362, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'portRangeEnd', Value};

typecast_field(Bin, 363, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'portRangeStepSize', Value};

typecast_field(Bin, 364, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'portRangeNumPorts', Value};

typecast_field(Value, 365, 6)
  when byte_size(Value) =:= 6 ->
    {'staMacAddress', Value};

typecast_field(Bin, 366, 4) ->
    <<A, B, C, D>> = Bin,
    {'staIPv4Address', {A, B, C, D}};

typecast_field(Value, 367, 6)
  when byte_size(Value) =:= 6 ->
    {'wtpMacAddress', Value};

typecast_field(Bin, 368, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ingressInterfaceType', Value};

typecast_field(Bin, 369, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'egressInterfaceType', Value};

typecast_field(Bin, 370, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'rtpSequenceNumber', Value};

typecast_field(Value, 371, Length)
  when byte_size(Value) == Length ->
    {'userName', Value};

typecast_field(Value, 372, Length)
  when byte_size(Value) == Length ->
    {'applicationCategoryName', Value};

typecast_field(Value, 373, Length)
  when byte_size(Value) == Length ->
    {'applicationSubCategoryName', Value};

typecast_field(Value, 374, Length)
  when byte_size(Value) == Length ->
    {'applicationGroupName', Value};

typecast_field(Bin, 375, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'originalFlowsPresent', Value};

typecast_field(Bin, 376, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'originalFlowsInitiated', Value};

typecast_field(Bin, 377, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'originalFlowsCompleted', Value};

typecast_field(Bin, 378, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'distinctCountOfSourceIPAddress', Value};

typecast_field(Bin, 379, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'distinctCountOfDestinationIPAddress', Value};

typecast_field(Bin, 380, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'distinctCountOfSourceIPv4Address', Value};

typecast_field(Bin, 381, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'distinctCountOfDestinationIPv4Address', Value};

typecast_field(Bin, 382, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'distinctCountOfSourceIPv6Address', Value};

typecast_field(Bin, 383, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'distinctCountOfDestinationIPv6Address', Value};

typecast_field(Bin, 384, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'valueDistributionMethod', Value};

typecast_field(Bin, 385, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'rfc3550JitterMilliseconds', Value};

typecast_field(Bin, 386, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'rfc3550JitterMicroseconds', Value};

typecast_field(Bin, 387, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'rfc3550JitterNanoseconds', Value};

typecast_field(Bin, 388, 1) ->
    {'dot1qDEI', bin2bool(Bin)};

typecast_field(Bin, 389, 1) ->
    {'dot1qCustomerDEI', bin2bool(Bin)};

typecast_field(Bin, 390, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowSelectorAlgorithm', Value};

typecast_field(Bin, 391, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowSelectedOctetDeltaCount', Value};

typecast_field(Bin, 392, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowSelectedPacketDeltaCount', Value};

typecast_field(Bin, 393, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowSelectedFlowDeltaCount', Value};

typecast_field(Bin, 394, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'selectorIDTotalFlowsObserved', Value};

typecast_field(Bin, 395, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'selectorIDTotalFlowsSelected', Value};

typecast_field(Bin, 396, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'samplingFlowInterval', Value};

typecast_field(Bin, 397, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'samplingFlowSpacing', Value};

typecast_field(Bin, 398, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowSamplingTimeInterval', Value};

typecast_field(Bin, 399, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'flowSamplingTimeSpacing', Value};

typecast_field(Bin, 400, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'hashFlowDomain', Value};

typecast_field(Bin, 401, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'transportOctetDeltaCount', Value};

typecast_field(Bin, 402, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'transportPacketDeltaCount', Value};

typecast_field(Bin, 403, 4) ->
    <<A, B, C, D>> = Bin,
    {'originalExporterIPv4Address', {A, B, C, D}};

typecast_field(Bin, 404, 16) ->
    <<A:16, B:16, C:16, D:16, E:16, F:16, G:16, H:16>> = Bin,
    {'originalExporterIPv6Address', {A, B, C, D, E, F, G, H}};

typecast_field(Bin, 405, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'originalObservationDomainId', Value};

typecast_field(Bin, 406, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'intermediateProcessId', Value};

typecast_field(Bin, 407, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ignoredDataRecordTotalCount', Value};

typecast_field(Bin, 408, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dataLinkFrameType', Value};

typecast_field(Bin, 409, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'sectionOffset', Value};

typecast_field(Bin, 410, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'sectionExportedOctets', Value};

typecast_field(Value, 411, Length)
  when byte_size(Value) == Length ->
    {'dot1qServiceInstanceTag', Value};

typecast_field(Bin, 412, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dot1qServiceInstanceId', Value};

typecast_field(Bin, 413, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'dot1qServiceInstancePriority', Value};

typecast_field(Value, 414, 6)
  when byte_size(Value) =:= 6 ->
    {'dot1qCustomerSourceMacAddress', Value};

typecast_field(Value, 415, 6)
  when byte_size(Value) =:= 6 ->
    {'dot1qCustomerDestinationMacAddress', Value};

typecast_field(Bin, 417, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postLayer2OctetDeltaCount', Value};

typecast_field(Bin, 418, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postMCastLayer2OctetDeltaCount', Value};

typecast_field(Bin, 420, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postLayer2OctetTotalCount', Value};

typecast_field(Bin, 421, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'postMCastLayer2OctetTotalCount', Value};

typecast_field(Bin, 422, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'minimumLayer2TotalLength', Value};

typecast_field(Bin, 423, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'maximumLayer2TotalLength', Value};

typecast_field(Bin, 424, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'droppedLayer2OctetDeltaCount', Value};

typecast_field(Bin, 425, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'droppedLayer2OctetTotalCount', Value};

typecast_field(Bin, 426, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ignoredLayer2OctetTotalCount', Value};

typecast_field(Bin, 427, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'notSentLayer2OctetTotalCount', Value};

typecast_field(Bin, 428, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'layer2OctetDeltaSumOfSquares', Value};

typecast_field(Bin, 429, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'layer2OctetTotalSumOfSquares', Value};

typecast_field(Bin, 430, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'layer2FrameDeltaCount', Value};

typecast_field(Bin, 431, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'layer2FrameTotalCount', Value};

typecast_field(Bin, 432, 4) ->
    <<A, B, C, D>> = Bin,
    {'pseudoWireDestinationIPv4Address', {A, B, C, D}};

typecast_field(Bin, 433, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'ignoredLayer2FrameTotalCount', Value};

typecast_field(Bin, 434, Length)
  when Length =< 8 ->
    <<Value:Length/signed-integer-unit:8>> = Bin,
    {'mibObjectValueInteger', Value};

typecast_field(Value, 435, Length)
  when byte_size(Value) == Length ->
    {'mibObjectValueOctetString', Value};

typecast_field(Value, 436, Length)
  when byte_size(Value) == Length ->
    {'mibObjectValueOID', Value};

typecast_field(Value, 437, Length)
  when byte_size(Value) == Length ->
    {'mibObjectValueBits', Value};

typecast_field(Bin, 438, 4) ->
    <<A, B, C, D>> = Bin,
    {'mibObjectValueIPAddress', {A, B, C, D}};

typecast_field(Bin, 439, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mibObjectValueCounter', Value};

typecast_field(Bin, 440, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mibObjectValueGauge', Value};

typecast_field(Bin, 441, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mibObjectValueTimeTicks', Value};

typecast_field(Bin, 442, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mibObjectValueUnsigned', Value};

%% 443 "mibObjectValueTable" subTemplateList;

%% 444 "mibObjectValueRow" subTemplateList;

typecast_field(Value, 445, Length)
  when byte_size(Value) == Length ->
    {'mibObjectIdentifier', Value};

typecast_field(Bin, 446, Length)
  when Length =< 4 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mibSubIdentifier', Value};

typecast_field(Bin, 447, Length)
  when Length =< 8 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mibIndexIndicator', Value};

typecast_field(Bin, 448, Length)
  when Length =< 1 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'mibCaptureTimeSemantics', Value};

typecast_field(Value, 449, Length)
  when byte_size(Value) == Length ->
    {'mibContextEngineID', Value};

typecast_field(Value, 450, Length)
  when byte_size(Value) == Length ->
    {'mibContextName', Value};

typecast_field(Value, 451, Length)
  when byte_size(Value) == Length ->
    {'mibObjectName', Value};

typecast_field(Value, 452, Length)
  when byte_size(Value) == Length ->
    {'mibObjectDescription', Value};

typecast_field(Value, 453, Length)
  when byte_size(Value) == Length ->
    {'mibObjectSyntax', Value};

typecast_field(Value, 454, Length)
  when byte_size(Value) == Length ->
    {'mibModuleName', Value};

typecast_field(Value, 455, Length)
  when byte_size(Value) == Length ->
    {'mobileIMSI', Value};

typecast_field(Value, 456, Length)
  when byte_size(Value) == Length ->
    {'mobileMSISDN', Value};

typecast_field(Bin, 457, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'httpStatusCode', Value};

typecast_field(Bin, 458, Length)
  when Length =< 2 ->
    <<Value:Length/unsigned-integer-unit:8>> = Bin,
    {'sourceTransportPortsLimit', Value};

typecast_field(Value, 459, Length)
  when byte_size(Value) == Length ->
    {'httpRequestMethod', Value};

typecast_field(Value, 460, Length)
  when byte_size(Value) == Length ->
    {'httpRequestHost', Value};

typecast_field(Value, 461, Length)
  when byte_size(Value) == Length ->
    {'httpRequestTarget', Value};

typecast_field(Value, 462, Length)
  when byte_size(Value) == Length ->
    {'httpMessageVersion', Value};

typecast_field(Value, Id, _Length) ->
    {Id, Value}.



%% ============================

type_info('octetDeltaCount') -> {1, 'unsigned64'};
type_info('packetDeltaCount') -> {2, 'unsigned64'};
type_info('deltaFlowCount') -> {3, 'unsigned64'};
type_info('protocolIdentifier') -> {4, 'unsigned8'};
type_info('ipClassOfService') -> {5, 'unsigned8'};
type_info('tcpControlBits') -> {6, 'unsigned16'};
type_info('sourceTransportPort') -> {7, 'unsigned16'};
type_info('sourceIPv4Address') -> {8, 'ipv4Address'};
type_info('sourceIPv4PrefixLength') -> {9, 'unsigned8'};
type_info('ingressInterface') -> {10, 'unsigned32'};
type_info('destinationTransportPort') -> {11, 'unsigned16'};
type_info('destinationIPv4Address') -> {12, 'ipv4Address'};
type_info('destinationIPv4PrefixLength') -> {13, 'unsigned8'};
type_info('egressInterface') -> {14, 'unsigned32'};
type_info('ipNextHopIPv4Address') -> {15, 'ipv4Address'};
type_info('bgpSourceAsNumber') -> {16, 'unsigned32'};
type_info('bgpDestinationAsNumber') -> {17, 'unsigned32'};
type_info('bgpNextHopIPv4Address') -> {18, 'ipv4Address'};
type_info('postMCastPacketDeltaCount') -> {19, 'unsigned64'};
type_info('postMCastOctetDeltaCount') -> {20, 'unsigned64'};
type_info('flowEndSysUpTime') -> {21, 'unsigned32'};
type_info('flowStartSysUpTime') -> {22, 'unsigned32'};
type_info('postOctetDeltaCount') -> {23, 'unsigned64'};
type_info('postPacketDeltaCount') -> {24, 'unsigned64'};
type_info('minimumIpTotalLength') -> {25, 'unsigned64'};
type_info('maximumIpTotalLength') -> {26, 'unsigned64'};
type_info('sourceIPv6Address') -> {27, 'ipv6Address'};
type_info('destinationIPv6Address') -> {28, 'ipv6Address'};
type_info('sourceIPv6PrefixLength') -> {29, 'unsigned8'};
type_info('destinationIPv6PrefixLength') -> {30, 'unsigned8'};
type_info('flowLabelIPv6') -> {31, 'unsigned32'};
type_info('icmpTypeCodeIPv4') -> {32, 'unsigned16'};
type_info('igmpType') -> {33, 'unsigned8'};
type_info('flowActiveTimeout') -> {36, 'unsigned16'};
type_info('flowIdleTimeout') -> {37, 'unsigned16'};
type_info('exportedOctetTotalCount') -> {40, 'unsigned64'};
type_info('exportedMessageTotalCount') -> {41, 'unsigned64'};
type_info('exportedFlowRecordTotalCount') -> {42, 'unsigned64'};
type_info('sourceIPv4Prefix') -> {44, 'ipv4Address'};
type_info('destinationIPv4Prefix') -> {45, 'ipv4Address'};
type_info('mplsTopLabelType') -> {46, 'unsigned8'};
type_info('mplsTopLabelIPv4Address') -> {47, 'ipv4Address'};
type_info('minimumTTL') -> {52, 'unsigned8'};
type_info('maximumTTL') -> {53, 'unsigned8'};
type_info('fragmentIdentification') -> {54, 'unsigned32'};
type_info('postIpClassOfService') -> {55, 'unsigned8'};
type_info('sourceMacAddress') -> {56, 'macAddress'};
type_info('postDestinationMacAddress') -> {57, 'macAddress'};
type_info('vlanId') -> {58, 'unsigned16'};
type_info('postVlanId') -> {59, 'unsigned16'};
type_info('ipVersion') -> {60, 'unsigned8'};
type_info('flowDirection') -> {61, 'unsigned8'};
type_info('ipNextHopIPv6Address') -> {62, 'ipv6Address'};
type_info('bgpNextHopIPv6Address') -> {63, 'ipv6Address'};
type_info('ipv6ExtensionHeaders') -> {64, 'unsigned32'};
type_info('mplsTopLabelStackSection') -> {70, 'octetArray'};
type_info('mplsLabelStackSection2') -> {71, 'octetArray'};
type_info('mplsLabelStackSection3') -> {72, 'octetArray'};
type_info('mplsLabelStackSection4') -> {73, 'octetArray'};
type_info('mplsLabelStackSection5') -> {74, 'octetArray'};
type_info('mplsLabelStackSection6') -> {75, 'octetArray'};
type_info('mplsLabelStackSection7') -> {76, 'octetArray'};
type_info('mplsLabelStackSection8') -> {77, 'octetArray'};
type_info('mplsLabelStackSection9') -> {78, 'octetArray'};
type_info('mplsLabelStackSection10') -> {79, 'octetArray'};
type_info('destinationMacAddress') -> {80, 'macAddress'};
type_info('postSourceMacAddress') -> {81, 'macAddress'};
type_info('interfaceName') -> {82, 'string'};
type_info('interfaceDescription') -> {83, 'string'};
type_info('octetTotalCount') -> {85, 'unsigned64'};
type_info('packetTotalCount') -> {86, 'unsigned64'};
type_info('fragmentOffset') -> {88, 'unsigned16'};
type_info('forwardingStatus') -> {89, 'unsigned32'};
type_info('mplsVpnRouteDistinguisher') -> {90, 'octetArray'};
type_info('mplsTopLabelPrefixLength') -> {91, 'unsigned8'};
type_info('srcTrafficIndex') -> {92, 'unsigned32'};
type_info('dstTrafficIndex') -> {93, 'unsigned32'};
type_info('applicationDescription') -> {94, 'string'};
type_info('applicationId') -> {95, 'octetArray'};
type_info('applicationName') -> {96, 'string'};
type_info('postIpDiffServCodePoint') -> {98, 'unsigned8'};
type_info('multicastReplicationFactor') -> {99, 'unsigned32'};
type_info('classificationEngineId') -> {101, 'unsigned8'};
type_info('bgpNextAdjacentAsNumber') -> {128, 'unsigned32'};
type_info('bgpPrevAdjacentAsNumber') -> {129, 'unsigned32'};
type_info('exporterIPv4Address') -> {130, 'ipv4Address'};
type_info('exporterIPv6Address') -> {131, 'ipv6Address'};
type_info('droppedOctetDeltaCount') -> {132, 'unsigned64'};
type_info('droppedPacketDeltaCount') -> {133, 'unsigned64'};
type_info('droppedOctetTotalCount') -> {134, 'unsigned64'};
type_info('droppedPacketTotalCount') -> {135, 'unsigned64'};
type_info('flowEndReason') -> {136, 'unsigned8'};
type_info('commonPropertiesId') -> {137, 'unsigned64'};
type_info('observationPointId') -> {138, 'unsigned64'};
type_info('icmpTypeCodeIPv6') -> {139, 'unsigned16'};
type_info('mplsTopLabelIPv6Address') -> {140, 'ipv6Address'};
type_info('lineCardId') -> {141, 'unsigned32'};
type_info('portId') -> {142, 'unsigned32'};
type_info('meteringProcessId') -> {143, 'unsigned32'};
type_info('exportingProcessId') -> {144, 'unsigned32'};
type_info('templateId') -> {145, 'unsigned16'};
type_info('wlanChannelId') -> {146, 'unsigned8'};
type_info('wlanSSID') -> {147, 'string'};
type_info('flowId') -> {148, 'unsigned64'};
type_info('observationDomainId') -> {149, 'unsigned32'};
type_info('flowStartSeconds') -> {150, 'dateTimeSeconds'};
type_info('flowEndSeconds') -> {151, 'dateTimeSeconds'};
type_info('flowStartMilliseconds') -> {152, 'dateTimeMilliseconds'};
type_info('flowEndMilliseconds') -> {153, 'dateTimeMilliseconds'};
type_info('flowStartMicroseconds') -> {154, 'dateTimeMicroseconds'};
type_info('flowEndMicroseconds') -> {155, 'dateTimeMicroseconds'};
type_info('flowStartNanoseconds') -> {156, 'dateTimeNanoseconds'};
type_info('flowEndNanoseconds') -> {157, 'dateTimeNanoseconds'};
type_info('flowStartDeltaMicroseconds') -> {158, 'unsigned32'};
type_info('flowEndDeltaMicroseconds') -> {159, 'unsigned32'};
type_info('systemInitTimeMilliseconds') -> {160, 'dateTimeMilliseconds'};
type_info('flowDurationMilliseconds') -> {161, 'unsigned32'};
type_info('flowDurationMicroseconds') -> {162, 'unsigned32'};
type_info('observedFlowTotalCount') -> {163, 'unsigned64'};
type_info('ignoredPacketTotalCount') -> {164, 'unsigned64'};
type_info('ignoredOctetTotalCount') -> {165, 'unsigned64'};
type_info('notSentFlowTotalCount') -> {166, 'unsigned64'};
type_info('notSentPacketTotalCount') -> {167, 'unsigned64'};
type_info('notSentOctetTotalCount') -> {168, 'unsigned64'};
type_info('destinationIPv6Prefix') -> {169, 'ipv6Address'};
type_info('sourceIPv6Prefix') -> {170, 'ipv6Address'};
type_info('postOctetTotalCount') -> {171, 'unsigned64'};
type_info('postPacketTotalCount') -> {172, 'unsigned64'};
type_info('flowKeyIndicator') -> {173, 'unsigned64'};
type_info('postMCastPacketTotalCount') -> {174, 'unsigned64'};
type_info('postMCastOctetTotalCount') -> {175, 'unsigned64'};
type_info('icmpTypeIPv4') -> {176, 'unsigned8'};
type_info('icmpCodeIPv4') -> {177, 'unsigned8'};
type_info('icmpTypeIPv6') -> {178, 'unsigned8'};
type_info('icmpCodeIPv6') -> {179, 'unsigned8'};
type_info('udpSourcePort') -> {180, 'unsigned16'};
type_info('udpDestinationPort') -> {181, 'unsigned16'};
type_info('tcpSourcePort') -> {182, 'unsigned16'};
type_info('tcpDestinationPort') -> {183, 'unsigned16'};
type_info('tcpSequenceNumber') -> {184, 'unsigned32'};
type_info('tcpAcknowledgementNumber') -> {185, 'unsigned32'};
type_info('tcpWindowSize') -> {186, 'unsigned16'};
type_info('tcpUrgentPointer') -> {187, 'unsigned16'};
type_info('tcpHeaderLength') -> {188, 'unsigned8'};
type_info('ipHeaderLength') -> {189, 'unsigned8'};
type_info('totalLengthIPv4') -> {190, 'unsigned16'};
type_info('payloadLengthIPv6') -> {191, 'unsigned16'};
type_info('ipTTL') -> {192, 'unsigned8'};
type_info('nextHeaderIPv6') -> {193, 'unsigned8'};
type_info('mplsPayloadLength') -> {194, 'unsigned32'};
type_info('ipDiffServCodePoint') -> {195, 'unsigned8'};
type_info('ipPrecedence') -> {196, 'unsigned8'};
type_info('fragmentFlags') -> {197, 'unsigned8'};
type_info('octetDeltaSumOfSquares') -> {198, 'unsigned64'};
type_info('octetTotalSumOfSquares') -> {199, 'unsigned64'};
type_info('mplsTopLabelTTL') -> {200, 'unsigned8'};
type_info('mplsLabelStackLength') -> {201, 'unsigned32'};
type_info('mplsLabelStackDepth') -> {202, 'unsigned32'};
type_info('mplsTopLabelExp') -> {203, 'unsigned8'};
type_info('ipPayloadLength') -> {204, 'unsigned32'};
type_info('udpMessageLength') -> {205, 'unsigned16'};
type_info('isMulticast') -> {206, 'unsigned8'};
type_info('ipv4IHL') -> {207, 'unsigned8'};
type_info('ipv4Options') -> {208, 'unsigned32'};
type_info('tcpOptions') -> {209, 'unsigned64'};
type_info('paddingOctets') -> {210, 'octetArray'};
type_info('collectorIPv4Address') -> {211, 'ipv4Address'};
type_info('collectorIPv6Address') -> {212, 'ipv6Address'};
type_info('exportInterface') -> {213, 'unsigned32'};
type_info('exportProtocolVersion') -> {214, 'unsigned8'};
type_info('exportTransportProtocol') -> {215, 'unsigned8'};
type_info('collectorTransportPort') -> {216, 'unsigned16'};
type_info('exporterTransportPort') -> {217, 'unsigned16'};
type_info('tcpSynTotalCount') -> {218, 'unsigned64'};
type_info('tcpFinTotalCount') -> {219, 'unsigned64'};
type_info('tcpRstTotalCount') -> {220, 'unsigned64'};
type_info('tcpPshTotalCount') -> {221, 'unsigned64'};
type_info('tcpAckTotalCount') -> {222, 'unsigned64'};
type_info('tcpUrgTotalCount') -> {223, 'unsigned64'};
type_info('ipTotalLength') -> {224, 'unsigned64'};
type_info('postNATSourceIPv4Address') -> {225, 'ipv4Address'};
type_info('postNATDestinationIPv4Address') -> {226, 'ipv4Address'};
type_info('postNAPTSourceTransportPort') -> {227, 'unsigned16'};
type_info('postNAPTDestinationTransportPort') -> {228, 'unsigned16'};
type_info('natOriginatingAddressRealm') -> {229, 'unsigned8'};
type_info('natEvent') -> {230, 'unsigned8'};
type_info('initiatorOctets') -> {231, 'unsigned64'};
type_info('responderOctets') -> {232, 'unsigned64'};
type_info('firewallEvent') -> {233, 'unsigned8'};
type_info('ingressVRFID') -> {234, 'unsigned32'};
type_info('egressVRFID') -> {235, 'unsigned32'};
type_info('VRFname') -> {236, 'string'};
type_info('postMplsTopLabelExp') -> {237, 'unsigned8'};
type_info('tcpWindowScale') -> {238, 'unsigned16'};
type_info('biflowDirection') -> {239, 'unsigned8'};
type_info('ethernetHeaderLength') -> {240, 'unsigned8'};
type_info('ethernetPayloadLength') -> {241, 'unsigned16'};
type_info('ethernetTotalLength') -> {242, 'unsigned16'};
type_info('dot1qVlanId') -> {243, 'unsigned16'};
type_info('dot1qPriority') -> {244, 'unsigned8'};
type_info('dot1qCustomerVlanId') -> {245, 'unsigned16'};
type_info('dot1qCustomerPriority') -> {246, 'unsigned8'};
type_info('metroEvcId') -> {247, 'string'};
type_info('metroEvcType') -> {248, 'unsigned8'};
type_info('pseudoWireId') -> {249, 'unsigned32'};
type_info('pseudoWireType') -> {250, 'unsigned16'};
type_info('pseudoWireControlWord') -> {251, 'unsigned32'};
type_info('ingressPhysicalInterface') -> {252, 'unsigned32'};
type_info('egressPhysicalInterface') -> {253, 'unsigned32'};
type_info('postDot1qVlanId') -> {254, 'unsigned16'};
type_info('postDot1qCustomerVlanId') -> {255, 'unsigned16'};
type_info('ethernetType') -> {256, 'unsigned16'};
type_info('postIpPrecedence') -> {257, 'unsigned8'};
type_info('collectionTimeMilliseconds') -> {258, 'dateTimeMilliseconds'};
type_info('exportSctpStreamId') -> {259, 'unsigned16'};
type_info('maxExportSeconds') -> {260, 'dateTimeSeconds'};
type_info('maxFlowEndSeconds') -> {261, 'dateTimeSeconds'};
type_info('messageMD5Checksum') -> {262, 'octetArray'};
type_info('messageScope') -> {263, 'unsigned8'};
type_info('minExportSeconds') -> {264, 'dateTimeSeconds'};
type_info('minFlowStartSeconds') -> {265, 'dateTimeSeconds'};
type_info('opaqueOctets') -> {266, 'octetArray'};
type_info('sessionScope') -> {267, 'unsigned8'};
type_info('maxFlowEndMicroseconds') -> {268, 'dateTimeMicroseconds'};
type_info('maxFlowEndMilliseconds') -> {269, 'dateTimeMilliseconds'};
type_info('maxFlowEndNanoseconds') -> {270, 'dateTimeNanoseconds'};
type_info('minFlowStartMicroseconds') -> {271, 'dateTimeMicroseconds'};
type_info('minFlowStartMilliseconds') -> {272, 'dateTimeMilliseconds'};
type_info('minFlowStartNanoseconds') -> {273, 'dateTimeNanoseconds'};
type_info('collectorCertificate') -> {274, 'octetArray'};
type_info('exporterCertificate') -> {275, 'octetArray'};
type_info('dataRecordsReliability') -> {276, 'boolean'};
type_info('observationPointType') -> {277, 'unsigned8'};
type_info('newConnectionDeltaCount') -> {278, 'unsigned32'};
type_info('connectionSumDurationSeconds') -> {279, 'unsigned64'};
type_info('connectionTransactionId') -> {280, 'unsigned64'};
type_info('postNATSourceIPv6Address') -> {281, 'ipv6Address'};
type_info('postNATDestinationIPv6Address') -> {282, 'ipv6Address'};
type_info('natPoolId') -> {283, 'unsigned32'};
type_info('natPoolName') -> {284, 'string'};
type_info('anonymizationFlags') -> {285, 'unsigned16'};
type_info('anonymizationTechnique') -> {286, 'unsigned16'};
type_info('informationElementIndex') -> {287, 'unsigned16'};
type_info('p2pTechnology') -> {288, 'string'};
type_info('tunnelTechnology') -> {289, 'string'};
type_info('encryptedTechnology') -> {290, 'string'};
type_info('basicList') -> {291, 'basicList'};
type_info('subTemplateList') -> {292, 'subTemplateList'};
type_info('subTemplateMultiList') -> {293, 'subTemplateMultiList'};
type_info('bgpValidityState') -> {294, 'unsigned8'};
type_info('IPSecSPI') -> {295, 'unsigned32'};
type_info('greKey') -> {296, 'unsigned32'};
type_info('natType') -> {297, 'unsigned8'};
type_info('initiatorPackets') -> {298, 'unsigned64'};
type_info('responderPackets') -> {299, 'unsigned64'};
type_info('observationDomainName') -> {300, 'string'};
type_info('selectionSequenceId') -> {301, 'unsigned64'};
type_info('selectorId') -> {302, 'unsigned64'};
type_info('informationElementId') -> {303, 'unsigned16'};
type_info('selectorAlgorithm') -> {304, 'unsigned16'};
type_info('samplingPacketInterval') -> {305, 'unsigned32'};
type_info('samplingPacketSpace') -> {306, 'unsigned32'};
type_info('samplingTimeInterval') -> {307, 'unsigned32'};
type_info('samplingTimeSpace') -> {308, 'unsigned32'};
type_info('samplingSize') -> {309, 'unsigned32'};
type_info('samplingPopulation') -> {310, 'unsigned32'};
type_info('samplingProbability') -> {311, 'float64'};
type_info('dataLinkFrameSize') -> {312, 'unsigned16'};
type_info('ipHeaderPacketSection') -> {313, 'octetArray'};
type_info('ipPayloadPacketSection') -> {314, 'octetArray'};
type_info('dataLinkFrameSection') -> {315, 'octetArray'};
type_info('mplsLabelStackSection') -> {316, 'octetArray'};
type_info('mplsPayloadPacketSection') -> {317, 'octetArray'};
type_info('selectorIdTotalPktsObserved') -> {318, 'unsigned64'};
type_info('selectorIdTotalPktsSelected') -> {319, 'unsigned64'};
type_info('absoluteError') -> {320, 'float64'};
type_info('relativeError') -> {321, 'float64'};
type_info('observationTimeSeconds') -> {322, 'dateTimeSeconds'};
type_info('observationTimeMilliseconds') -> {323, 'dateTimeMilliseconds'};
type_info('observationTimeMicroseconds') -> {324, 'dateTimeMicroseconds'};
type_info('observationTimeNanoseconds') -> {325, 'dateTimeNanoseconds'};
type_info('digestHashValue') -> {326, 'unsigned64'};
type_info('hashIPPayloadOffset') -> {327, 'unsigned64'};
type_info('hashIPPayloadSize') -> {328, 'unsigned64'};
type_info('hashOutputRangeMin') -> {329, 'unsigned64'};
type_info('hashOutputRangeMax') -> {330, 'unsigned64'};
type_info('hashSelectedRangeMin') -> {331, 'unsigned64'};
type_info('hashSelectedRangeMax') -> {332, 'unsigned64'};
type_info('hashDigestOutput') -> {333, 'boolean'};
type_info('hashInitialiserValue') -> {334, 'unsigned64'};
type_info('selectorName') -> {335, 'string'};
type_info('upperCILimit') -> {336, 'float64'};
type_info('lowerCILimit') -> {337, 'float64'};
type_info('confidenceLevel') -> {338, 'float64'};
type_info('informationElementDataType') -> {339, 'unsigned8'};
type_info('informationElementDescription') -> {340, 'string'};
type_info('informationElementName') -> {341, 'string'};
type_info('informationElementRangeBegin') -> {342, 'unsigned64'};
type_info('informationElementRangeEnd') -> {343, 'unsigned64'};
type_info('informationElementSemantics') -> {344, 'unsigned8'};
type_info('informationElementUnits') -> {345, 'unsigned16'};
type_info('privateEnterpriseNumber') -> {346, 'unsigned32'};
type_info('virtualStationInterfaceId') -> {347, 'octetArray'};
type_info('virtualStationInterfaceName') -> {348, 'string'};
type_info('virtualStationUUID') -> {349, 'octetArray'};
type_info('virtualStationName') -> {350, 'string'};
type_info('layer2SegmentId') -> {351, 'unsigned64'};
type_info('layer2OctetDeltaCount') -> {352, 'unsigned64'};
type_info('layer2OctetTotalCount') -> {353, 'unsigned64'};
type_info('ingressUnicastPacketTotalCount') -> {354, 'unsigned64'};
type_info('ingressMulticastPacketTotalCount') -> {355, 'unsigned64'};
type_info('ingressBroadcastPacketTotalCount') -> {356, 'unsigned64'};
type_info('egressUnicastPacketTotalCount') -> {357, 'unsigned64'};
type_info('egressBroadcastPacketTotalCount') -> {358, 'unsigned64'};
type_info('monitoringIntervalStartMilliSeconds') -> {359, 'dateTimeMilliseconds'};
type_info('monitoringIntervalEndMilliSeconds') -> {360, 'dateTimeMilliseconds'};
type_info('portRangeStart') -> {361, 'unsigned16'};
type_info('portRangeEnd') -> {362, 'unsigned16'};
type_info('portRangeStepSize') -> {363, 'unsigned16'};
type_info('portRangeNumPorts') -> {364, 'unsigned16'};
type_info('staMacAddress') -> {365, 'macAddress'};
type_info('staIPv4Address') -> {366, 'ipv4Address'};
type_info('wtpMacAddress') -> {367, 'macAddress'};
type_info('ingressInterfaceType') -> {368, 'unsigned32'};
type_info('egressInterfaceType') -> {369, 'unsigned32'};
type_info('rtpSequenceNumber') -> {370, 'unsigned16'};
type_info('userName') -> {371, 'string'};
type_info('applicationCategoryName') -> {372, 'string'};
type_info('applicationSubCategoryName') -> {373, 'string'};
type_info('applicationGroupName') -> {374, 'string'};
type_info('originalFlowsPresent') -> {375, 'unsigned64'};
type_info('originalFlowsInitiated') -> {376, 'unsigned64'};
type_info('originalFlowsCompleted') -> {377, 'unsigned64'};
type_info('distinctCountOfSourceIPAddress') -> {378, 'unsigned64'};
type_info('distinctCountOfDestinationIPAddress') -> {379, 'unsigned64'};
type_info('distinctCountOfSourceIPv4Address') -> {380, 'unsigned32'};
type_info('distinctCountOfDestinationIPv4Address') -> {381, 'unsigned32'};
type_info('distinctCountOfSourceIPv6Address') -> {382, 'unsigned64'};
type_info('distinctCountOfDestinationIPv6Address') -> {383, 'unsigned64'};
type_info('valueDistributionMethod') -> {384, 'unsigned8'};
type_info('rfc3550JitterMilliseconds') -> {385, 'unsigned32'};
type_info('rfc3550JitterMicroseconds') -> {386, 'unsigned32'};
type_info('rfc3550JitterNanoseconds') -> {387, 'unsigned32'};
type_info('dot1qDEI') -> {388, 'boolean'};
type_info('dot1qCustomerDEI') -> {389, 'boolean'};
type_info('flowSelectorAlgorithm') -> {390, 'unsigned16'};
type_info('flowSelectedOctetDeltaCount') -> {391, 'unsigned64'};
type_info('flowSelectedPacketDeltaCount') -> {392, 'unsigned64'};
type_info('flowSelectedFlowDeltaCount') -> {393, 'unsigned64'};
type_info('selectorIDTotalFlowsObserved') -> {394, 'unsigned64'};
type_info('selectorIDTotalFlowsSelected') -> {395, 'unsigned64'};
type_info('samplingFlowInterval') -> {396, 'unsigned64'};
type_info('samplingFlowSpacing') -> {397, 'unsigned64'};
type_info('flowSamplingTimeInterval') -> {398, 'unsigned64'};
type_info('flowSamplingTimeSpacing') -> {399, 'unsigned64'};
type_info('hashFlowDomain') -> {400, 'unsigned16'};
type_info('transportOctetDeltaCount') -> {401, 'unsigned64'};
type_info('transportPacketDeltaCount') -> {402, 'unsigned64'};
type_info('originalExporterIPv4Address') -> {403, 'ipv4Address'};
type_info('originalExporterIPv6Address') -> {404, 'ipv6Address'};
type_info('originalObservationDomainId') -> {405, 'unsigned32'};
type_info('intermediateProcessId') -> {406, 'unsigned32'};
type_info('ignoredDataRecordTotalCount') -> {407, 'unsigned64'};
type_info('dataLinkFrameType') -> {408, 'unsigned16'};
type_info('sectionOffset') -> {409, 'unsigned16'};
type_info('sectionExportedOctets') -> {410, 'unsigned16'};
type_info('dot1qServiceInstanceTag') -> {411, 'octetArray'};
type_info('dot1qServiceInstanceId') -> {412, 'unsigned32'};
type_info('dot1qServiceInstancePriority') -> {413, 'unsigned8'};
type_info('dot1qCustomerSourceMacAddress') -> {414, 'macAddress'};
type_info('dot1qCustomerDestinationMacAddress') -> {415, 'macAddress'};
type_info('postLayer2OctetDeltaCount') -> {417, 'unsigned64'};
type_info('postMCastLayer2OctetDeltaCount') -> {418, 'unsigned64'};
type_info('postLayer2OctetTotalCount') -> {420, 'unsigned64'};
type_info('postMCastLayer2OctetTotalCount') -> {421, 'unsigned64'};
type_info('minimumLayer2TotalLength') -> {422, 'unsigned64'};
type_info('maximumLayer2TotalLength') -> {423, 'unsigned64'};
type_info('droppedLayer2OctetDeltaCount') -> {424, 'unsigned64'};
type_info('droppedLayer2OctetTotalCount') -> {425, 'unsigned64'};
type_info('ignoredLayer2OctetTotalCount') -> {426, 'unsigned64'};
type_info('notSentLayer2OctetTotalCount') -> {427, 'unsigned64'};
type_info('layer2OctetDeltaSumOfSquares') -> {428, 'unsigned64'};
type_info('layer2OctetTotalSumOfSquares') -> {429, 'unsigned64'};
type_info('layer2FrameDeltaCount') -> {430, 'unsigned64'};
type_info('layer2FrameTotalCount') -> {431, 'unsigned64'};
type_info('pseudoWireDestinationIPv4Address') -> {432, 'ipv4Address'};
type_info('ignoredLayer2FrameTotalCount') -> {433, 'unsigned64'};
type_info('mibObjectValueInteger') -> {434, 'signed64'};
type_info('mibObjectValueOctetString') -> {435, 'octetArray'};
type_info('mibObjectValueOID') -> {436, 'octetArray'};
type_info('mibObjectValueBits') -> {437, 'octetArray'};
type_info('mibObjectValueIPAddress') -> {438, 'ipv4Address'};
type_info('mibObjectValueCounter') -> {439, 'unsigned64'};
type_info('mibObjectValueGauge') -> {440, 'unsigned32'};
type_info('mibObjectValueTimeTicks') -> {441, 'unsigned32'};
type_info('mibObjectValueUnsigned') -> {442, 'unsigned64'};
type_info('mibObjectValueTable') -> {443, 'subTemplateList'};
type_info('mibObjectValueRow') -> {444, 'subTemplateList'};
type_info('mibObjectIdentifier') -> {445, 'octetArray'};
type_info('mibSubIdentifier') -> {446, 'unsigned32'};
type_info('mibIndexIndicator') -> {447, 'unsigned64'};
type_info('mibCaptureTimeSemantics') -> {448, 'unsigned8'};
type_info('mibContextEngineID') -> {449, 'octetArray'};
type_info('mibContextName') -> {450, 'string'};
type_info('mibObjectName') -> {451, 'string'};
type_info('mibObjectDescription') -> {452, 'string'};
type_info('mibObjectSyntax') -> {453, 'string'};
type_info('mibModuleName') -> {454, 'string'};
type_info('mobileIMSI') -> {455, 'string'};
type_info('mobileMSISDN') -> {456, 'string'};
type_info('httpStatusCode') -> {457, 'unsigned16'};
type_info('sourceTransportPortsLimit') -> {458, 'unsigned16'};
type_info('httpRequestMethod') -> {459, 'string'};
type_info('httpRequestHost') -> {460, 'string'};
type_info('httpRequestTarget') -> {461, 'string'};
type_info('httpMessageVersion') -> {462, 'string'};
type_info(Id) ->
    erlang:error(badarg, [Id]).
