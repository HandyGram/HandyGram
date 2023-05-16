part of '../tdapi.dart';

/// **ToggleGroupCallIsMyVideoPaused** *(toggleGroupCallIsMyVideoPaused)* - TDLib function
///
/// Toggles whether current user's video is paused.
///
/// * [groupCallId]: Group call identifier.
/// * [isMyVideoPaused]: Pass true if the current user's video is paused.
///
/// [Ok] is returned on completion.
final class ToggleGroupCallIsMyVideoPaused extends TdFunction {
  
  /// **ToggleGroupCallIsMyVideoPaused** *(toggleGroupCallIsMyVideoPaused)* - TDLib function
  ///
  /// Toggles whether current user's video is paused.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [isMyVideoPaused]: Pass true if the current user's video is paused.
  ///
  /// [Ok] is returned on completion.
  const ToggleGroupCallIsMyVideoPaused({
    required this.groupCallId,
    required this.isMyVideoPaused,
  });
  
  /// Group call identifier 
  final int groupCallId;

  /// Pass true if the current user's video is paused
  final bool isMyVideoPaused;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "is_my_video_paused": isMyVideoPaused,
      "@extra": extra,
		};
	}

  
  ToggleGroupCallIsMyVideoPaused copyWith({
    int? groupCallId,
    bool? isMyVideoPaused,
  }) => ToggleGroupCallIsMyVideoPaused(
    groupCallId: groupCallId ?? this.groupCallId,
    isMyVideoPaused: isMyVideoPaused ?? this.isMyVideoPaused,
  );

  static const String objectType = 'toggleGroupCallIsMyVideoPaused';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
