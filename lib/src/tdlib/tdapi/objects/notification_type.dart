part of '../tdapi.dart';

/// **NotificationType** *(notificationType)* - parent
  ///
  /// Contains detailed information about a notification.
class NotificationType extends TdObject {
  
  /// **NotificationType** *(notificationType)* - parent
  ///
  /// Contains detailed information about a notification.
  const NotificationType();
  
  /// a NotificationType return type can be :
  /// * [NotificationTypeNewMessage]
  /// * [NotificationTypeNewSecretChat]
  /// * [NotificationTypeNewCall]
  /// * [NotificationTypeNewPushMessage]
  factory NotificationType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NotificationTypeNewMessage.constructor:
        return NotificationTypeNewMessage.fromJson(json);
      case NotificationTypeNewSecretChat.constructor:
        return NotificationTypeNewSecretChat.fromJson(json);
      case NotificationTypeNewCall.constructor:
        return NotificationTypeNewCall.fromJson(json);
      case NotificationTypeNewPushMessage.constructor:
        return NotificationTypeNewPushMessage.fromJson(json);
      default:
        return const NotificationType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  NotificationType copyWith() => const NotificationType();

  static const String constructor = 'notificationType';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationTypeNewMessage** *(notificationTypeNewMessage)* - child of NotificationType
  ///
  /// New message was received.
  ///
  /// * [message]: The message.
  /// * [showPreview]: True, if message content must be displayed in notifications.
class NotificationTypeNewMessage extends NotificationType {
  
  /// **NotificationTypeNewMessage** *(notificationTypeNewMessage)* - child of NotificationType
  ///
  /// New message was received.
  ///
  /// * [message]: The message.
  /// * [showPreview]: True, if message content must be displayed in notifications.
  const NotificationTypeNewMessage({
    required this.message,
    required this.showPreview,
  });
  
  /// The message 
  final Message message;

  /// True, if message content must be displayed in notifications
  final bool showPreview;
  
  /// Parse from a json
  factory NotificationTypeNewMessage.fromJson(Map<String, dynamic> json) => NotificationTypeNewMessage(
    message: Message.fromJson(json['message']),
    showPreview: json['show_preview'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "message": message.toJson(),
      "show_preview": showPreview,
    };
  }
  
  @override
  NotificationTypeNewMessage copyWith({
    Message? message,
    bool? showPreview,
  }) => NotificationTypeNewMessage(
    message: message ?? this.message,
    showPreview: showPreview ?? this.showPreview,
  );

  static const String constructor = 'notificationTypeNewMessage';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationTypeNewSecretChat** *(notificationTypeNewSecretChat)* - child of NotificationType
  ///
  /// New secret chat was created.
class NotificationTypeNewSecretChat extends NotificationType {
  
  /// **NotificationTypeNewSecretChat** *(notificationTypeNewSecretChat)* - child of NotificationType
  ///
  /// New secret chat was created.
  const NotificationTypeNewSecretChat();
  
  /// Parse from a json
  factory NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json) => const NotificationTypeNewSecretChat();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NotificationTypeNewSecretChat copyWith() => const NotificationTypeNewSecretChat();

  static const String constructor = 'notificationTypeNewSecretChat';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationTypeNewCall** *(notificationTypeNewCall)* - child of NotificationType
  ///
  /// New call was received.
  ///
  /// * [callId]: Call identifier.
class NotificationTypeNewCall extends NotificationType {
  
  /// **NotificationTypeNewCall** *(notificationTypeNewCall)* - child of NotificationType
  ///
  /// New call was received.
  ///
  /// * [callId]: Call identifier.
  const NotificationTypeNewCall({
    required this.callId,
  });
  
  /// Call identifier
  final int callId;
  
  /// Parse from a json
  factory NotificationTypeNewCall.fromJson(Map<String, dynamic> json) => NotificationTypeNewCall(
    callId: json['call_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "call_id": callId,
    };
  }
  
  @override
  NotificationTypeNewCall copyWith({
    int? callId,
  }) => NotificationTypeNewCall(
    callId: callId ?? this.callId,
  );

  static const String constructor = 'notificationTypeNewCall';
  
  @override
  String getConstructor() => constructor;
}


/// **NotificationTypeNewPushMessage** *(notificationTypeNewPushMessage)* - child of NotificationType
  ///
  /// New message was received through a push notification.
  ///
  /// * [messageId]: The message identifier. The message will not be available in the chat history, but the notificationTypeNewPushMessage can be used in viewMessages, or as reply_to_message_id.
  /// * [senderId]: Identifier of the sender of the message. Corresponding user or chat may be inaccessible.
  /// * [senderName]: Name of the sender.
  /// * [isOutgoing]: True, if the message is outgoing.
  /// * [content]: Push message content.
class NotificationTypeNewPushMessage extends NotificationType {
  
  /// **NotificationTypeNewPushMessage** *(notificationTypeNewPushMessage)* - child of NotificationType
  ///
  /// New message was received through a push notification.
  ///
  /// * [messageId]: The message identifier. The message will not be available in the chat history, but the notificationTypeNewPushMessage can be used in viewMessages, or as reply_to_message_id.
  /// * [senderId]: Identifier of the sender of the message. Corresponding user or chat may be inaccessible.
  /// * [senderName]: Name of the sender.
  /// * [isOutgoing]: True, if the message is outgoing.
  /// * [content]: Push message content.
  const NotificationTypeNewPushMessage({
    required this.messageId,
    required this.senderId,
    required this.senderName,
    required this.isOutgoing,
    required this.content,
  });
  
  /// The message identifier. The message will not be available in the chat history, but the notificationTypeNewPushMessage can be used in viewMessages, or as reply_to_message_id
  final int messageId;

  /// Identifier of the sender of the message. Corresponding user or chat may be inaccessible
  final MessageSender senderId;

  /// Name of the sender
  final String senderName;

  /// True, if the message is outgoing
  final bool isOutgoing;

  /// Push message content
  final PushMessageContent content;
  
  /// Parse from a json
  factory NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json) => NotificationTypeNewPushMessage(
    messageId: json['message_id'],
    senderId: MessageSender.fromJson(json['sender_id']),
    senderName: json['sender_name'],
    isOutgoing: json['is_outgoing'],
    content: PushMessageContent.fromJson(json['content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "message_id": messageId,
      "sender_id": senderId.toJson(),
      "sender_name": senderName,
      "is_outgoing": isOutgoing,
      "content": content.toJson(),
    };
  }
  
  @override
  NotificationTypeNewPushMessage copyWith({
    int? messageId,
    MessageSender? senderId,
    String? senderName,
    bool? isOutgoing,
    PushMessageContent? content,
  }) => NotificationTypeNewPushMessage(
    messageId: messageId ?? this.messageId,
    senderId: senderId ?? this.senderId,
    senderName: senderName ?? this.senderName,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    content: content ?? this.content,
  );

  static const String constructor = 'notificationTypeNewPushMessage';
  
  @override
  String getConstructor() => constructor;
}
