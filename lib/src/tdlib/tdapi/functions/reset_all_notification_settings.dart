part of '../tdapi.dart';

/// **ResetAllNotificationSettings** *(resetAllNotificationSettings)* - TDLib function
  ///
  /// Resets all notification settings to their default values. By default, all chats are unmuted and message previews are shown.
  ///
  /// [Ok] is returned on completion.
class ResetAllNotificationSettings extends TdFunction {
  
  /// **ResetAllNotificationSettings** *(resetAllNotificationSettings)* - TDLib function
  ///
  /// Resets all notification settings to their default values. By default, all chats are unmuted and message previews are shown.
  ///
  /// [Ok] is returned on completion.
  const ResetAllNotificationSettings();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ResetAllNotificationSettings copyWith() => const ResetAllNotificationSettings();

  static const String constructor = 'resetAllNotificationSettings';
  
  @override
  String getConstructor() => constructor;
}
