part of '../tdapi.dart';

/// **SetScopeNotificationSettings** *(setScopeNotificationSettings)* - TDLib function
///
/// Changes notification settings for chats of a given type.
///
/// * [scope]: Types of chats for which to change the notification settings.
/// * [notificationSettings]: The new notification settings for the given scope.
///
/// [Ok] is returned on completion.
final class SetScopeNotificationSettings extends TdFunction {
  
  /// **SetScopeNotificationSettings** *(setScopeNotificationSettings)* - TDLib function
  ///
  /// Changes notification settings for chats of a given type.
  ///
  /// * [scope]: Types of chats for which to change the notification settings.
  /// * [notificationSettings]: The new notification settings for the given scope.
  ///
  /// [Ok] is returned on completion.
  const SetScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
  });
  
  /// Types of chats for which to change the notification settings 
  final NotificationSettingsScope scope;

  /// The new notification settings for the given scope
  final ScopeNotificationSettings notificationSettings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "scope": scope.toJson(),
      "notification_settings": notificationSettings.toJson(),
      "@extra": extra,
		};
	}

  
  SetScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
    ScopeNotificationSettings? notificationSettings,
  }) => SetScopeNotificationSettings(
    scope: scope ?? this.scope,
    notificationSettings: notificationSettings ?? this.notificationSettings,
  );

  static const String objectType = 'setScopeNotificationSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
