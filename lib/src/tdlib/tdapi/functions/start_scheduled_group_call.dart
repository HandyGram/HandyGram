part of '../tdapi.dart';

/// **StartScheduledGroupCall** *(startScheduledGroupCall)* - TDLib function
///
/// Starts a scheduled group call.
///
/// * [groupCallId]: Group call identifier.
///
/// [Ok] is returned on completion.
final class StartScheduledGroupCall extends TdFunction {
  
  /// **StartScheduledGroupCall** *(startScheduledGroupCall)* - TDLib function
  ///
  /// Starts a scheduled group call.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
  const StartScheduledGroupCall({
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

  
  StartScheduledGroupCall copyWith({
    int? groupCallId,
  }) => StartScheduledGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String objectType = 'startScheduledGroupCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
