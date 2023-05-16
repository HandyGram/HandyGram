part of '../tdapi.dart';

/// **ResetAllNotificationSettings** *(resetAllNotificationSettings)* - TDLib function
///
/// Resets all notification settings to their default values. By default, all chats are unmuted and message previews are shown.
///
/// [Ok] is returned on completion.
final class ResetAllNotificationSettings extends TdFunction {
  
  /// **ResetAllNotificationSettings** *(resetAllNotificationSettings)* - TDLib function
  ///
  /// Resets all notification settings to their default values. By default, all chats are unmuted and message previews are shown.
  ///
  /// [Ok] is returned on completion.
  const ResetAllNotificationSettings();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResetAllNotificationSettings copyWith() => const ResetAllNotificationSettings();

  static const String objectType = 'resetAllNotificationSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
