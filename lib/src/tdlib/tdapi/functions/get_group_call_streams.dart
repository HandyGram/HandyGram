part of '../tdapi.dart';

/// **GetGroupCallStreams** *(getGroupCallStreams)* - TDLib function
///
/// Returns information about available group call streams.
///
/// * [groupCallId]: Group call identifier.
///
/// [GroupCallStreams] is returned on completion.
final class GetGroupCallStreams extends TdFunction {
  
  /// **GetGroupCallStreams** *(getGroupCallStreams)* - TDLib function
  ///
  /// Returns information about available group call streams.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [GroupCallStreams] is returned on completion.
  const GetGroupCallStreams({
    required this.groupCallId,
  });
  
  /// Group call identifier
  final int groupCallId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "@extra": extra,
		};
	}

  
  GetGroupCallStreams copyWith({
    int? groupCallId,
  }) => GetGroupCallStreams(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String objectType = 'getGroupCallStreams';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
