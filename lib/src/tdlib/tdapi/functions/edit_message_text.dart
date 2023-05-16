part of '../tdapi.dart';

/// **EditMessageText** *(editMessageText)* - TDLib function
///
/// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side.
///
/// * [chatId]: The chat the message belongs to.
/// * [messageId]: Identifier of the message.
/// * [replyMarkup]: The new message reply markup; pass null if none; for bots only *(optional)*.
/// * [inputMessageContent]: New text content of the message. Must be of type inputMessageText.
///
/// [Message] is returned on completion.
final class EditMessageText extends TdFunction {
  
  /// **EditMessageText** *(editMessageText)* - TDLib function
  ///
  /// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side.
  ///
  /// * [chatId]: The chat the message belongs to.
  /// * [messageId]: Identifier of the message.
  /// * [replyMarkup]: The new message reply markup; pass null if none; for bots only *(optional)*.
  /// * [inputMessageContent]: New text content of the message. Must be of type inputMessageText.
  ///
  /// [Message] is returned on completion.
  const EditMessageText({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// The chat the message belongs to
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// New text content of the message. Must be of type inputMessageText
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
		};
	}

  
  EditMessageText copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => EditMessageText(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String objectType = 'editMessageText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
