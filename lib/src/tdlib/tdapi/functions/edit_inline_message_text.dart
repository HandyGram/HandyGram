part of '../tdapi.dart';

/// **EditInlineMessageText** *(editInlineMessageText)* - TDLib function
///
/// Edits the text of an inline text or game message sent via a bot; for bots only.
///
/// * [inlineMessageId]: Inline message identifier.
/// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
/// * [inputMessageContent]: New text content of the message. Must be of type inputMessageText.
///
/// [Ok] is returned on completion.
final class EditInlineMessageText extends TdFunction {
  
  /// **EditInlineMessageText** *(editInlineMessageText)* - TDLib function
  ///
  /// Edits the text of an inline text or game message sent via a bot; for bots only.
  ///
  /// * [inlineMessageId]: Inline message identifier.
  /// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
  /// * [inputMessageContent]: New text content of the message. Must be of type inputMessageText.
  ///
  /// [Ok] is returned on completion.
  const EditInlineMessageText({
    required this.inlineMessageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Inline message identifier
  final String inlineMessageId;

  /// The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// New text content of the message. Must be of type inputMessageText
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
		};
	}

  
  EditInlineMessageText copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => EditInlineMessageText(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String objectType = 'editInlineMessageText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
