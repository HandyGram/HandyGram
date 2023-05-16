part of '../tdapi.dart';

/// **NotificationSettingsScope** *(notificationSettingsScope)* - parent
///
/// Describes the types of chats to which notification settings are relevant.
sealed class NotificationSettingsScope extends TdObject {
  
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
      case NotificationSettingsScopePrivateChats.objectType:
        return NotificationSettingsScopePrivateChats.fromJson(json);
      case NotificationSettingsScopeGroupChats.objectType:
        return NotificationSettingsScopeGroupChats.fromJson(json);
      case NotificationSettingsScopeChannelChats.objectType:
        return NotificationSettingsScopeChannelChats.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of NotificationSettingsScope)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  NotificationSettingsScope copyWith();

  static const String objectType = 'notificationSettingsScope';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NotificationSettingsScopePrivateChats** *(notificationSettingsScopePrivateChats)* - child of NotificationSettingsScope
///
/// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value.
final class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  
  /// **NotificationSettingsScopePrivateChats** *(notificationSettingsScopePrivateChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value.
  const NotificationSettingsScopePrivateChats();
  
  /// Parse from a json
  factory NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopePrivateChats();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NotificationSettingsScopePrivateChats copyWith() => const NotificationSettingsScopePrivateChats();

  static const String objectType = 'notificationSettingsScopePrivateChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NotificationSettingsScopeGroupChats** *(notificationSettingsScopeGroupChats)* - child of NotificationSettingsScope
///
/// Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value.
final class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  
  /// **NotificationSettingsScopeGroupChats** *(notificationSettingsScopeGroupChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value.
  const NotificationSettingsScopeGroupChats();
  
  /// Parse from a json
  factory NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopeGroupChats();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NotificationSettingsScopeGroupChats copyWith() => const NotificationSettingsScopeGroupChats();

  static const String objectType = 'notificationSettingsScopeGroupChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NotificationSettingsScopeChannelChats** *(notificationSettingsScopeChannelChats)* - child of NotificationSettingsScope
///
/// Notification settings applied to all channel chats when the corresponding chat setting has a default value.
final class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  
  /// **NotificationSettingsScopeChannelChats** *(notificationSettingsScopeChannelChats)* - child of NotificationSettingsScope
  ///
  /// Notification settings applied to all channel chats when the corresponding chat setting has a default value.
  const NotificationSettingsScopeChannelChats();
  
  /// Parse from a json
  factory NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopeChannelChats();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NotificationSettingsScopeChannelChats copyWith() => const NotificationSettingsScopeChannelChats();

  static const String objectType = 'notificationSettingsScopeChannelChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
