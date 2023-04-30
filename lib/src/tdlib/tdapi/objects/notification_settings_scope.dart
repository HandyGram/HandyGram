part of '../tdapi.dart';

/// **NotificationSettingsScope** *(notificationSettingsScope)* - parent
  ///
  /// Describes the types of chats to which notification settings are relevant.
class NotificationSettingsScope extends TdObject {
  
  /// **NotificationSettingsScope** *(notificationSettingsScope)* - parent
  ///
  /// Describes the types of chats to which notification settings are relevant.
  const NotificationSettingsScope();
  
  /// a NotificationSettingsScope return type can be :
  /// * [NotificationSettingsScopePrivateChats]
  /// * [NotificationSettingsScopeGroupChats]
  /// * [NotificationSettingsScopeChannelChats]
  factory NotificationSettingsScope.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NotificationSettingsScopePrivateChats.constructor:
        return NotificationSettingsScopePrivateChats.fromJson(json);
      case NotificationSettingsScopeGroupChats.constructor:
        return NotificationSettingsScopeGroupChats.fromJson(json);
      case NotificationSettingsScopeChannelChats.constructor:
        return NotificationSettingsScopeChannelChats.fromJson(json);
      default:
        return const NotificationSettingsScope();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  NotificationSettingsScope copyWith() => const NotificationSettingsScope();

  static const String constructor = 'notificationSettingsScope';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationSettingsScopePrivateChats** *(notificationSettingsScopePrivateChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value.
class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  
  /// **NotificationSettingsScopePrivateChats** *(notificationSettingsScopePrivateChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value.
  const NotificationSettingsScopePrivateChats();
  
  /// Parse from a json
  factory NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopePrivateChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NotificationSettingsScopePrivateChats copyWith() => const NotificationSettingsScopePrivateChats();

  static const String constructor = 'notificationSettingsScopePrivateChats';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationSettingsScopeGroupChats** *(notificationSettingsScopeGroupChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value.
class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  
  /// **NotificationSettingsScopeGroupChats** *(notificationSettingsScopeGroupChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value.
  const NotificationSettingsScopeGroupChats();
  
  /// Parse from a json
  factory NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopeGroupChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NotificationSettingsScopeGroupChats copyWith() => const NotificationSettingsScopeGroupChats();

  static const String constructor = 'notificationSettingsScopeGroupChats';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationSettingsScopeChannelChats** *(notificationSettingsScopeChannelChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all channel chats when the corresponding chat setting has a default value.
class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  
  /// **NotificationSettingsScopeChannelChats** *(notificationSettingsScopeChannelChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all channel chats when the corresponding chat setting has a default value.
  const NotificationSettingsScopeChannelChats();
  
  /// Parse from a json
  factory NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopeChannelChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NotificationSettingsScopeChannelChats copyWith() => const NotificationSettingsScopeChannelChats();

  static const String constructor = 'notificationSettingsScopeChannelChats';
  
  @override
  String getConstructor() => constructor;
}
