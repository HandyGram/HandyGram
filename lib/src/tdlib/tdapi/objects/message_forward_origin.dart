part of '../tdapi.dart';

/// **MessageForwardOrigin** *(messageForwardOrigin)* - parent
///
/// Contains information about the origin of a forwarded message.
sealed class MessageForwardOrigin extends TdObject {
  
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
      case MessageForwardOriginUser.objectType:
        return MessageForwardOriginUser.fromJson(json);
      case MessageForwardOriginChat.objectType:
        return MessageForwardOriginChat.fromJson(json);
      case MessageForwardOriginHiddenUser.objectType:
        return MessageForwardOriginHiddenUser.fromJson(json);
      case MessageForwardOriginChannel.objectType:
        return MessageForwardOriginChannel.fromJson(json);
      case MessageForwardOriginMessageImport.objectType:
        return MessageForwardOriginMessageImport.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageForwardOrigin)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  MessageForwardOrigin copyWith();

  static const String objectType = 'messageForwardOrigin';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginUser** *(messageForwardOriginUser)* - child of MessageForwardOrigin
///
/// The message was originally sent by a known user.
///
/// * [senderUserId]: Identifier of the user that originally sent the message.
final class MessageForwardOriginUser extends MessageForwardOrigin {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sender_user_id": senderUserId,
		};
	}

  
  @override
  MessageForwardOriginUser copyWith({
    int? senderUserId,
  }) => MessageForwardOriginUser(
    senderUserId: senderUserId ?? this.senderUserId,
  );

  static const String objectType = 'messageForwardOriginUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginChat** *(messageForwardOriginChat)* - child of MessageForwardOrigin
///
/// The message was originally sent on behalf of a chat.
///
/// * [senderChatId]: Identifier of the chat that originally sent the message.
/// * [authorSignature]: For messages originally sent by an anonymous chat administrator, original message author signature.
final class MessageForwardOriginChat extends MessageForwardOrigin {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'messageForwardOriginChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginHiddenUser** *(messageForwardOriginHiddenUser)* - child of MessageForwardOrigin
///
/// The message was originally sent by a user, which is hidden by their privacy settings.
///
/// * [senderName]: Name of the sender.
final class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sender_name": senderName,
		};
	}

  
  @override
  MessageForwardOriginHiddenUser copyWith({
    String? senderName,
  }) => MessageForwardOriginHiddenUser(
    senderName: senderName ?? this.senderName,
  );

  static const String objectType = 'messageForwardOriginHiddenUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginChannel** *(messageForwardOriginChannel)* - child of MessageForwardOrigin
///
/// The message was originally a post in a channel.
///
/// * [chatId]: Identifier of the chat from which the message was originally forwarded.
/// * [messageId]: Message identifier of the original message.
/// * [authorSignature]: Original post author signature.
final class MessageForwardOriginChannel extends MessageForwardOrigin {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'messageForwardOriginChannel';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForwardOriginMessageImport** *(messageForwardOriginMessageImport)* - child of MessageForwardOrigin
///
/// The message was imported from an exported message history.
///
/// * [senderName]: Name of the sender.
final class MessageForwardOriginMessageImport extends MessageForwardOrigin {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sender_name": senderName,
		};
	}

  
  @override
  MessageForwardOriginMessageImport copyWith({
    String? senderName,
  }) => MessageForwardOriginMessageImport(
    senderName: senderName ?? this.senderName,
  );

  static const String objectType = 'messageForwardOriginMessageImport';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
