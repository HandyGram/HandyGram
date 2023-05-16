part of '../tdapi.dart';

/// **ToggleGroupCallScreenSharingIsPaused** *(toggleGroupCallScreenSharingIsPaused)* - TDLib function
///
/// Pauses or unpauses screen sharing in a joined group call.
///
/// * [groupCallId]: Group call identifier.
/// * [isPaused]: Pass true to pause screen sharing; pass false to unpause it.
///
/// [Ok] is returned on completion.
final class ToggleGroupCallScreenSharingIsPaused extends TdFunction {
  
  /// **ToggleGroupCallScreenSharingIsPaused** *(toggleGroupCallScreenSharingIsPaused)* - TDLib function
  ///
  /// Pauses or unpauses screen sharing in a joined group call.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [isPaused]: Pass true to pause screen sharing; pass false to unpause it.
  ///
  /// [Ok] is returned on completion.
  const ToggleGroupCallScreenSharingIsPaused({
    required this.groupCallId,
    required this.isPaused,
  });
  
  /// Group call identifier 
  final int groupCallId;

  /// Pass true to pause screen sharing; pass false to unpause it
  final bool isPaused;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "is_paused": isPaused,
      "@extra": extra,
		};
	}

  
  ToggleGroupCallScreenSharingIsPaused copyWith({
    int? groupCallId,
    bool? isPaused,
  }) => ToggleGroupCallScreenSharingIsPaused(
    groupCallId: groupCallId ?? this.groupCallId,
    isPaused: isPaused ?? this.isPaused,
  );

  static const String objectType = 'toggleGroupCallScreenSharingIsPaused';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
