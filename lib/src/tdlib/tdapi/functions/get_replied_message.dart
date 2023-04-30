part of '../tdapi.dart';

/// **GetRepliedMessage** *(getRepliedMessage)* - TDLib function
  ///
  /// Returns information about a message that is replied by a given message. Also, returns the pinned message, the game message, the invoice message, and the topic creation message for messages. of the types messagePinMessage, messageGameScore, messagePaymentSuccessful, and topic messages without replied message respectively.
  ///
  /// * [chatId]: Identifier of the chat the message belongs to.
  /// * [messageId]: Identifier of the reply message.
  ///
  /// [Message] is returned on completion.
class GetRepliedMessage extends TdFunction {
  
  /// **GetRepliedMessage** *(getRepliedMessage)* - TDLib function
  ///
  /// Returns information about a message that is replied by a given message. Also, returns the pinned message, the game message, the invoice message, and the topic creation message for messages. of the types messagePinMessage, messageGameScore, messagePaymentSuccessful, and topic messages without replied message respectively.
  ///
  /// * [chatId]: Identifier of the chat the message belongs to.
  /// * [messageId]: Identifier of the reply message.
  ///
  /// [Message] is returned on completion.
  const GetRepliedMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// Identifier of the chat the message belongs to
  final int chatId;

  /// Identifier of the reply message
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }
  
  GetRepliedMessage copyWith({
    int? chatId,
    int? messageId,
  }) => GetRepliedMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String constructor = 'getRepliedMessage';
  
  @override
  String getConstructor() => constructor;
}
