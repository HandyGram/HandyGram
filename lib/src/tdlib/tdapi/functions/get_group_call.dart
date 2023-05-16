part of '../tdapi.dart';

/// **GetGroupCall** *(getGroupCall)* - TDLib function
///
/// Returns information about a group call.
///
/// * [groupCallId]: Group call identifier.
///
/// [GroupCall] is returned on completion.
final class GetGroupCall extends TdFunction {
  
  /// **GetGroupCall** *(getGroupCall)* - TDLib function
  ///
  /// Returns information about a group call.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [GroupCall] is returned on completion.
  const GetGroupCall({
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

  
  GetGroupCall copyWith({
    int? groupCallId,
  }) => GetGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String objectType = 'getGroupCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
