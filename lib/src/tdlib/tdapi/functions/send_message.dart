part of '../tdapi.dart';

/// **SendMessage** *(sendMessage)* - TDLib function
///
/// Sends a message. Returns the sent message.
///
/// * [chatId]: Target chat.
/// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent.
/// * [replyToMessageId]: Identifier of the replied message; 0 if none.
/// * [options]: Options to be used to send the message; pass null to use default options *(optional)*.
/// * [replyMarkup]: Markup for replying to the message; pass null if none; for bots only *(optional)*.
/// * [inputMessageContent]: The content of the message to be sent.
///
/// [Message] is returned on completion.
final class SendMessage extends TdFunction {
  
  /// **SendMessage** *(sendMessage)* - TDLib function
  ///
  /// Sends a message. Returns the sent message.
  ///
  /// * [chatId]: Target chat.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent.
  /// * [replyToMessageId]: Identifier of the replied message; 0 if none.
  /// * [options]: Options to be used to send the message; pass null to use default options *(optional)*.
  /// * [replyMarkup]: Markup for replying to the message; pass null if none; for bots only *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent.
  ///
  /// [Message] is returned on completion.
  const SendMessage({
    required this.chatId,
    required this.messageThreadId,
    required this.replyToMessageId,
    this.options,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Target chat
  final int chatId;

  /// If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// Identifier of the replied message; 0 if none
  final int replyToMessageId;

  /// Options to be used to send the message; pass null to use default options
  final MessageSendOptions? options;

  /// Markup for replying to the message; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_to_message_id": replyToMessageId,
      "options": options?.toJson(),
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
		};
	}

  
  SendMessage copyWith({
    int? chatId,
    int? messageThreadId,
    int? replyToMessageId,
    MessageSendOptions? options,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => SendMessage(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    options: options ?? this.options,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String objectType = 'sendMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
