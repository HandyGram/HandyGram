part of '../tdapi.dart';

/// **GetScopeNotificationSettings** *(getScopeNotificationSettings)* - TDLib function
  ///
  /// Returns the notification settings for chats of a given type.
  ///
  /// * [scope]: Types of chats for which to return the notification settings information.
  ///
  /// [ScopeNotificationSettings] is returned on completion.
class GetScopeNotificationSettings extends TdFunction {
  
  /// **GetScopeNotificationSettings** *(getScopeNotificationSettings)* - TDLib function
  ///
  /// Returns the notification settings for chats of a given type.
  ///
  /// * [scope]: Types of chats for which to return the notification settings information.
  ///
  /// [ScopeNotificationSettings] is returned on completion.
  const GetScopeNotificationSettings({
    required this.scope,
  });
  
  /// Types of chats for which to return the notification settings information
  final NotificationSettingsScope scope;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "scope": scope.toJson(),
      "@extra": extra,
    };
  }
  
  GetScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
  }) => GetScopeNotificationSettings(
    scope: scope ?? this.scope,
  );

  static const String constructor = 'getScopeNotificationSettings';
  
  @override
  String getConstructor() => constructor;
}
