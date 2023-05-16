part of '../tdapi.dart';

/// **MessageSender** *(messageSender)* - parent
///
/// Contains information about the sender of a message.
sealed class MessageSender extends TdObject {
  
  /// **MessageSender** *(messageSender)* - parent
  ///
  /// Contains information about the sender of a message.
  const MessageSender();
  
  /// a MessageSender return type can be :
  /// * [MessageSenderUser]
  /// * [MessageSenderChat]
  factory MessageSender.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSenderUser.objectType:
        return MessageSenderUser.fromJson(json);
      case MessageSenderChat.objectType:
        return MessageSenderChat.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageSender)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  MessageSender copyWith();

  static const String objectType = 'messageSender';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageSenderUser** *(messageSenderUser)* - child of MessageSender
///
/// The message was sent by a known user.
///
/// * [userId]: Identifier of the user that sent the message.
final class MessageSenderUser extends MessageSender {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
		};
	}

  
  @override
  MessageSenderUser copyWith({
    int? userId,
  }) => MessageSenderUser(
    userId: userId ?? this.userId,
  );

  static const String objectType = 'messageSenderUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageSenderChat** *(messageSenderChat)* - child of MessageSender
///
/// The message was sent on behalf of a chat.
///
/// * [chatId]: Identifier of the chat that sent the message.
final class MessageSenderChat extends MessageSender {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
		};
	}

  
  @override
  MessageSenderChat copyWith({
    int? chatId,
  }) => MessageSenderChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'messageSenderChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
