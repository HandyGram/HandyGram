part of '../tdapi.dart';

/// **NotificationGroupType** *(notificationGroupType)* - parent
  ///
  /// Describes the type of notifications in a notification group.
class NotificationGroupType extends TdObject {
  
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
      case NotificationGroupTypeMessages.constructor:
        return NotificationGroupTypeMessages.fromJson(json);
      case NotificationGroupTypeMentions.constructor:
        return NotificationGroupTypeMentions.fromJson(json);
      case NotificationGroupTypeSecretChat.constructor:
        return NotificationGroupTypeSecretChat.fromJson(json);
      case NotificationGroupTypeCalls.constructor:
        return NotificationGroupTypeCalls.fromJson(json);
      default:
        return const NotificationGroupType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  NotificationGroupType copyWith() => const NotificationGroupType();

  static const String constructor = 'notificationGroupType';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationGroupTypeMessages** *(notificationGroupTypeMessages)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages.
class NotificationGroupTypeMessages extends NotificationGroupType {
  
  /// **NotificationGroupTypeMessages** *(notificationGroupTypeMessages)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages.
  const NotificationGroupTypeMessages();
  
  /// Parse from a json
  factory NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeMessages();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NotificationGroupTypeMessages copyWith() => const NotificationGroupTypeMessages();

  static const String constructor = 'notificationGroupTypeMessages';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationGroupTypeMentions** *(notificationGroupTypeMentions)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message.
class NotificationGroupTypeMentions extends NotificationGroupType {
  
  /// **NotificationGroupTypeMentions** *(notificationGroupTypeMentions)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message.
  const NotificationGroupTypeMentions();
  
  /// Parse from a json
  factory NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeMentions();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NotificationGroupTypeMentions copyWith() => const NotificationGroupTypeMentions();

  static const String constructor = 'notificationGroupTypeMentions';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationGroupTypeSecretChat** *(notificationGroupTypeSecretChat)* - child of NotificationGroupType
  ///
  /// A group containing a notification of type notificationTypeNewSecretChat.
class NotificationGroupTypeSecretChat extends NotificationGroupType {
  
  /// **NotificationGroupTypeSecretChat** *(notificationGroupTypeSecretChat)* - child of NotificationGroupType
  ///
  /// A group containing a notification of type notificationTypeNewSecretChat.
  const NotificationGroupTypeSecretChat();
  
  /// Parse from a json
  factory NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeSecretChat();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NotificationGroupTypeSecretChat copyWith() => const NotificationGroupTypeSecretChat();

  static const String constructor = 'notificationGroupTypeSecretChat';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationGroupTypeCalls** *(notificationGroupTypeCalls)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewCall.
class NotificationGroupTypeCalls extends NotificationGroupType {
  
  /// **NotificationGroupTypeCalls** *(notificationGroupTypeCalls)* - child of NotificationGroupType
  ///
  /// A group containing notifications of type notificationTypeNewCall.
  const NotificationGroupTypeCalls();
  
  /// Parse from a json
  factory NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeCalls();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NotificationGroupTypeCalls copyWith() => const NotificationGroupTypeCalls();

  static const String constructor = 'notificationGroupTypeCalls';
  
  @override
  String getConstructor() => constructor;
}
