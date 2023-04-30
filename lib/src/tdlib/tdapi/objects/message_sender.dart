part of '../tdapi.dart';

/// **MessageSender** *(messageSender)* - parent
  ///
  /// Contains information about the sender of a message.
class MessageSender extends TdObject {
  
  /// **MessageSender** *(messageSender)* - parent
  ///
  /// Contains information about the sender of a message.
  const MessageSender();
  
  /// a MessageSender return type can be :
  /// * [MessageSenderUser]
  /// * [MessageSenderChat]
  factory MessageSender.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSenderUser.constructor:
        return MessageSenderUser.fromJson(json);
      case MessageSenderChat.constructor:
        return MessageSenderChat.fromJson(json);
      default:
        return const MessageSender();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageSender copyWith() => const MessageSender();

  static const String constructor = 'messageSender';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageSenderUser** *(messageSenderUser)* - child of MessageSender
  ///
  /// The message was sent by a known user.
  ///
  /// * [userId]: Identifier of the user that sent the message.
class MessageSenderUser extends MessageSender {
  
  /// **MessageSenderUser** *(messageSenderUser)* - child of MessageSender
  ///
  /// The message was sent by a known user.
  ///
  /// * [userId]: Identifier of the user that sent the message.
  const MessageSenderUser({
    required this.userId,
  });
  
  /// Identifier of the user that sent the message
  final int userId;
  
  /// Parse from a json
  factory MessageSenderUser.fromJson(Map<String, dynamic> json) => MessageSenderUser(
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
    };
  }
  
  @override
  MessageSenderUser copyWith({
    int? userId,
  }) => MessageSenderUser(
    userId: userId ?? this.userId,
  );

  static const String constructor = 'messageSenderUser';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageSenderChat** *(messageSenderChat)* - child of MessageSender
  ///
  /// The message was sent on behalf of a chat.
  ///
  /// * [chatId]: Identifier of the chat that sent the message.
class MessageSenderChat extends MessageSender {
  
  /// **MessageSenderChat** *(messageSenderChat)* - child of MessageSender
  ///
  /// The message was sent on behalf of a chat.
  ///
  /// * [chatId]: Identifier of the chat that sent the message.
  const MessageSenderChat({
    required this.chatId,
  });
  
  /// Identifier of the chat that sent the message
  final int chatId;
  
  /// Parse from a json
  factory MessageSenderChat.fromJson(Map<String, dynamic> json) => MessageSenderChat(
    chatId: json['chat_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
    };
  }
  
  @override
  MessageSenderChat copyWith({
    int? chatId,
  }) => MessageSenderChat(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'messageSenderChat';
  
  @override
  String getConstructor() => constructor;
}
