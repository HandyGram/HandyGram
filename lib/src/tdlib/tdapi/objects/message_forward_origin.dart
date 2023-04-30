part of '../tdapi.dart';

/// **MessageForwardOrigin** *(messageForwardOrigin)* - parent
  ///
  /// Contains information about the origin of a forwarded message.
class MessageForwardOrigin extends TdObject {
  
  /// **MessageForwardOrigin** *(messageForwardOrigin)* - parent
  ///
  /// Contains information about the origin of a forwarded message.
  const MessageForwardOrigin();
  
  /// a MessageForwardOrigin return type can be :
  /// * [MessageForwardOriginUser]
  /// * [MessageForwardOriginChat]
  /// * [MessageForwardOriginHiddenUser]
  /// * [MessageForwardOriginChannel]
  /// * [MessageForwardOriginMessageImport]
  factory MessageForwardOrigin.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageForwardOriginUser.constructor:
        return MessageForwardOriginUser.fromJson(json);
      case MessageForwardOriginChat.constructor:
        return MessageForwardOriginChat.fromJson(json);
      case MessageForwardOriginHiddenUser.constructor:
        return MessageForwardOriginHiddenUser.fromJson(json);
      case MessageForwardOriginChannel.constructor:
        return MessageForwardOriginChannel.fromJson(json);
      case MessageForwardOriginMessageImport.constructor:
        return MessageForwardOriginMessageImport.fromJson(json);
      default:
        return const MessageForwardOrigin();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageForwardOrigin copyWith() => const MessageForwardOrigin();

  static const String constructor = 'messageForwardOrigin';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageForwardOriginUser** *(messageForwardOriginUser)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent by a known user.
  ///
  /// * [senderUserId]: Identifier of the user that originally sent the message.
class MessageForwardOriginUser extends MessageForwardOrigin {
  
  /// **MessageForwardOriginUser** *(messageForwardOriginUser)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent by a known user.
  ///
  /// * [senderUserId]: Identifier of the user that originally sent the message.
  const MessageForwardOriginUser({
    required this.senderUserId,
  });
  
  /// Identifier of the user that originally sent the message
  final int senderUserId;
  
  /// Parse from a json
  factory MessageForwardOriginUser.fromJson(Map<String, dynamic> json) => MessageForwardOriginUser(
    senderUserId: json['sender_user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sender_user_id": senderUserId,
    };
  }
  
  @override
  MessageForwardOriginUser copyWith({
    int? senderUserId,
  }) => MessageForwardOriginUser(
    senderUserId: senderUserId ?? this.senderUserId,
  );

  static const String constructor = 'messageForwardOriginUser';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageForwardOriginChat** *(messageForwardOriginChat)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent on behalf of a chat.
  ///
  /// * [senderChatId]: Identifier of the chat that originally sent the message.
  /// * [authorSignature]: For messages originally sent by an anonymous chat administrator, original message author signature.
class MessageForwardOriginChat extends MessageForwardOrigin {
  
  /// **MessageForwardOriginChat** *(messageForwardOriginChat)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent on behalf of a chat.
  ///
  /// * [senderChatId]: Identifier of the chat that originally sent the message.
  /// * [authorSignature]: For messages originally sent by an anonymous chat administrator, original message author signature.
  const MessageForwardOriginChat({
    required this.senderChatId,
    required this.authorSignature,
  });
  
  /// Identifier of the chat that originally sent the message
  final int senderChatId;

  /// For messages originally sent by an anonymous chat administrator, original message author signature
  final String authorSignature;
  
  /// Parse from a json
  factory MessageForwardOriginChat.fromJson(Map<String, dynamic> json) => MessageForwardOriginChat(
    senderChatId: json['sender_chat_id'],
    authorSignature: json['author_signature'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sender_chat_id": senderChatId,
      "author_signature": authorSignature,
    };
  }
  
  @override
  MessageForwardOriginChat copyWith({
    int? senderChatId,
    String? authorSignature,
  }) => MessageForwardOriginChat(
    senderChatId: senderChatId ?? this.senderChatId,
    authorSignature: authorSignature ?? this.authorSignature,
  );

  static const String constructor = 'messageForwardOriginChat';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageForwardOriginHiddenUser** *(messageForwardOriginHiddenUser)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent by a user, which is hidden by their privacy settings.
  ///
  /// * [senderName]: Name of the sender.
class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  
  /// **MessageForwardOriginHiddenUser** *(messageForwardOriginHiddenUser)* - child of MessageForwardOrigin
  ///
  /// The message was originally sent by a user, which is hidden by their privacy settings.
  ///
  /// * [senderName]: Name of the sender.
  const MessageForwardOriginHiddenUser({
    required this.senderName,
  });
  
  /// Name of the sender
  final String senderName;
  
  /// Parse from a json
  factory MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json) => MessageForwardOriginHiddenUser(
    senderName: json['sender_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sender_name": senderName,
    };
  }
  
  @override
  MessageForwardOriginHiddenUser copyWith({
    String? senderName,
  }) => MessageForwardOriginHiddenUser(
    senderName: senderName ?? this.senderName,
  );

  static const String constructor = 'messageForwardOriginHiddenUser';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageForwardOriginChannel** *(messageForwardOriginChannel)* - child of MessageForwardOrigin
  ///
  /// The message was originally a post in a channel.
  ///
  /// * [chatId]: Identifier of the chat from which the message was originally forwarded.
  /// * [messageId]: Message identifier of the original message.
  /// * [authorSignature]: Original post author signature.
class MessageForwardOriginChannel extends MessageForwardOrigin {
  
  /// **MessageForwardOriginChannel** *(messageForwardOriginChannel)* - child of MessageForwardOrigin
  ///
  /// The message was originally a post in a channel.
  ///
  /// * [chatId]: Identifier of the chat from which the message was originally forwarded.
  /// * [messageId]: Message identifier of the original message.
  /// * [authorSignature]: Original post author signature.
  const MessageForwardOriginChannel({
    required this.chatId,
    required this.messageId,
    required this.authorSignature,
  });
  
  /// Identifier of the chat from which the message was originally forwarded
  final int chatId;

  /// Message identifier of the original message
  final int messageId;

  /// Original post author signature
  final String authorSignature;
  
  /// Parse from a json
  factory MessageForwardOriginChannel.fromJson(Map<String, dynamic> json) => MessageForwardOriginChannel(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    authorSignature: json['author_signature'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "message_id": messageId,
      "author_signature": authorSignature,
    };
  }
  
  @override
  MessageForwardOriginChannel copyWith({
    int? chatId,
    int? messageId,
    String? authorSignature,
  }) => MessageForwardOriginChannel(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    authorSignature: authorSignature ?? this.authorSignature,
  );

  static const String constructor = 'messageForwardOriginChannel';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageForwardOriginMessageImport** *(messageForwardOriginMessageImport)* - child of MessageForwardOrigin
  ///
  /// The message was imported from an exported message history.
  ///
  /// * [senderName]: Name of the sender.
class MessageForwardOriginMessageImport extends MessageForwardOrigin {
  
  /// **MessageForwardOriginMessageImport** *(messageForwardOriginMessageImport)* - child of MessageForwardOrigin
  ///
  /// The message was imported from an exported message history.
  ///
  /// * [senderName]: Name of the sender.
  const MessageForwardOriginMessageImport({
    required this.senderName,
  });
  
  /// Name of the sender
  final String senderName;
  
  /// Parse from a json
  factory MessageForwardOriginMessageImport.fromJson(Map<String, dynamic> json) => MessageForwardOriginMessageImport(
    senderName: json['sender_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sender_name": senderName,
    };
  }
  
  @override
  MessageForwardOriginMessageImport copyWith({
    String? senderName,
  }) => MessageForwardOriginMessageImport(
    senderName: senderName ?? this.senderName,
  );

  static const String constructor = 'messageForwardOriginMessageImport';
  
  @override
  String getConstructor() => constructor;
}
