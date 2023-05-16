part of '../tdapi.dart';

/// **NotificationGroupType** *(notificationGroupType)* - parent
///
/// Describes the type of notifications in a notification group.
sealed class NotificationGroupType extends TdObject {
  
  /// **NotificationGroupType** *(notificationGroupType)* - parent
  ///
  /// Describes the type of notifications in a notification group.
  const NotificationGroupType();
  
  /// a NotificationGroupType return type can be :
  /// * [NotificationGroupTypeMessages]
  /// * [NotificationGroupTypeMentions]
  /// * [NotificationGroupTypeSecretChat]
  /// * [NotificationGroupTypeCalls]
  factory NotificationGroupType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NotificationGroupTypeMessages.objectType:
        return NotificationGroupTypeMessages.fromJson(json);
      case NotificationGroupTypeMentions.objectType:
        return NotificationGroupTypeMentions.fromJson(json);
      case NotificationGroupTypeSecretChat.objectType:
        return NotificationGroupTypeSecretChat.fromJson(json);
      case NotificationGroupTypeCalls.objectType:
        return NotificationGroupTypeCalls.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of NotificationGroupType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  NotificationGroupType copyWith();

  static const String objectType = 'notificationGroupType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NotificationGroupTypeMessages** *(notificationGroupTypeMessages)* - child of NotificationGroupType
///
/// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages.
final class NotificationGroupTypeMessages extends NotificationGroupType {
  
  /// **NotificationGroupTypeMessages** *(notificationGroupTypeMessages)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages.
  const NotificationGroupTypeMessages();
  
  /// Parse from a json
  factory NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeMessages();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NotificationGroupTypeMessages copyWith() => const NotificationGroupTypeMessages();

  static const String objectType = 'notificationGroupTypeMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NotificationGroupTypeMentions** *(notificationGroupTypeMentions)* - child of NotificationGroupType
///
/// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message.
final class NotificationGroupTypeMentions extends NotificationGroupType {
  
  /// **NotificationGroupTypeMentions** *(notificationGroupTypeMentions)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message.
  const NotificationGroupTypeMentions();
  
  /// Parse from a json
  factory NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeMentions();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NotificationGroupTypeMentions copyWith() => const NotificationGroupTypeMentions();

  static const String objectType = 'notificationGroupTypeMentions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NotificationGroupTypeSecretChat** *(notificationGroupTypeSecretChat)* - child of NotificationGroupType
///
/// A group containing a notification of type notificationTypeNewSecretChat.
final class NotificationGroupTypeSecretChat extends NotificationGroupType {
  
  /// **NotificationGroupTypeSecretChat** *(notificationGroupTypeSecretChat)* - child of NotificationGroupType
  ///
  /// A group containing a notification of type notificationTypeNewSecretChat.
  const NotificationGroupTypeSecretChat();
  
  /// Parse from a json
  factory NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeSecretChat();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NotificationGroupTypeSecretChat copyWith() => const NotificationGroupTypeSecretChat();

  static const String objectType = 'notificationGroupTypeSecretChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NotificationGroupTypeCalls** *(notificationGroupTypeCalls)* - child of NotificationGroupType
///
/// A group containing notifications of type notificationTypeNewCall.
final class NotificationGroupTypeCalls extends NotificationGroupType {
  
  /// **NotificationGroupTypeCalls** *(notificationGroupTypeCalls)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewCall.
  const NotificationGroupTypeCalls();
  
  /// Parse from a json
  factory NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeCalls();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NotificationGroupTypeCalls copyWith() => const NotificationGroupTypeCalls();

  static const String objectType = 'notificationGroupTypeCalls';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
