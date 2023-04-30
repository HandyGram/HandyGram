part of '../tdapi.dart';

/// **GetGroupCall** *(getGroupCall)* - TDLib function
  ///
  /// Returns information about a group call.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [GroupCall] is returned on completion.
class GetGroupCall extends TdFunction {
  
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
      "@type": constructor,
      "group_call_id": groupCallId,
      "@extra": extra,
    };
  }
  
  GetGroupCall copyWith({
    int? groupCallId,
  }) => GetGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String constructor = 'getGroupCall';
  
  @override
  String getConstructor() => constructor;
}
