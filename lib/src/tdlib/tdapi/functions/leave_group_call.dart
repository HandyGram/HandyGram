part of '../tdapi.dart';

/// **LeaveGroupCall** *(leaveGroupCall)* - TDLib function
///
/// Leaves a group call.
///
/// * [groupCallId]: Group call identifier.
///
/// [Ok] is returned on completion.
final class LeaveGroupCall extends TdFunction {
  
  /// **LeaveGroupCall** *(leaveGroupCall)* - TDLib function
  ///
  /// Leaves a group call.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
  const LeaveGroupCall({
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

  
  LeaveGroupCall copyWith({
    int? groupCallId,
  }) => LeaveGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String objectType = 'leaveGroupCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
