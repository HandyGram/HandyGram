part of '../tdapi.dart';

/// **EndGroupCall** *(endGroupCall)* - TDLib function
///
/// Ends a group call. Requires groupCall.can_be_managed.
///
/// * [groupCallId]: Group call identifier.
///
/// [Ok] is returned on completion.
final class EndGroupCall extends TdFunction {
  
  /// **EndGroupCall** *(endGroupCall)* - TDLib function
  ///
  /// Ends a group call. Requires groupCall.can_be_managed.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
  const EndGroupCall({
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

  
  EndGroupCall copyWith({
    int? groupCallId,
  }) => EndGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String objectType = 'endGroupCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
