part of '../tdapi.dart';

/// **EndGroupCallScreenSharing** *(endGroupCallScreenSharing)* - TDLib function
///
/// Ends screen sharing in a joined group call.
///
/// * [groupCallId]: Group call identifier.
///
/// [Ok] is returned on completion.
final class EndGroupCallScreenSharing extends TdFunction {
  
  /// **EndGroupCallScreenSharing** *(endGroupCallScreenSharing)* - TDLib function
  ///
  /// Ends screen sharing in a joined group call.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
  const EndGroupCallScreenSharing({
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

  
  EndGroupCallScreenSharing copyWith({
    int? groupCallId,
  }) => EndGroupCallScreenSharing(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String objectType = 'endGroupCallScreenSharing';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
