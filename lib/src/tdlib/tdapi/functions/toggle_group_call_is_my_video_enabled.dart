part of '../tdapi.dart';

/// **ToggleGroupCallIsMyVideoEnabled** *(toggleGroupCallIsMyVideoEnabled)* - TDLib function
///
/// Toggles whether current user's video is enabled.
///
/// * [groupCallId]: Group call identifier.
/// * [isMyVideoEnabled]: Pass true if the current user's video is enabled.
///
/// [Ok] is returned on completion.
final class ToggleGroupCallIsMyVideoEnabled extends TdFunction {
  
  /// **ToggleGroupCallIsMyVideoEnabled** *(toggleGroupCallIsMyVideoEnabled)* - TDLib function
  ///
  /// Toggles whether current user's video is enabled.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [isMyVideoEnabled]: Pass true if the current user's video is enabled.
  ///
  /// [Ok] is returned on completion.
  const ToggleGroupCallIsMyVideoEnabled({
    required this.groupCallId,
    required this.isMyVideoEnabled,
  });
  
  /// Group call identifier 
  final int groupCallId;

  /// Pass true if the current user's video is enabled
  final bool isMyVideoEnabled;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "is_my_video_enabled": isMyVideoEnabled,
      "@extra": extra,
		};
	}

  
  ToggleGroupCallIsMyVideoEnabled copyWith({
    int? groupCallId,
    bool? isMyVideoEnabled,
  }) => ToggleGroupCallIsMyVideoEnabled(
    groupCallId: groupCallId ?? this.groupCallId,
    isMyVideoEnabled: isMyVideoEnabled ?? this.isMyVideoEnabled,
  );

  static const String objectType = 'toggleGroupCallIsMyVideoEnabled';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
