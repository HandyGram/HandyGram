part of '../tdapi.dart';

/// **StartScheduledGroupCall** *(startScheduledGroupCall)* - TDLib function
  ///
  /// Starts a scheduled group call.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
class StartScheduledGroupCall extends TdFunction {
  
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
      "@type": constructor,
      "group_call_id": groupCallId,
      "@extra": extra,
    };
  }
  
  StartScheduledGroupCall copyWith({
    int? groupCallId,
  }) => StartScheduledGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String constructor = 'startScheduledGroupCall';
  
  @override
  String getConstructor() => constructor;
}
