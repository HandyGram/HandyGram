part of '../tdapi.dart';

/// **EditInlineMessageMedia** *(editInlineMessageMedia)* - TDLib function
///
/// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only.
///
/// * [inlineMessageId]: Inline message identifier.
/// * [replyMarkup]: The new message reply markup; pass null if none; for bots only *(optional)*.
/// * [inputMessageContent]: New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo.
///
/// [Ok] is returned on completion.
final class EditInlineMessageMedia extends TdFunction {
  
  /// **EditInlineMessageMedia** *(editInlineMessageMedia)* - TDLib function
  ///
  /// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only.
  ///
  /// * [inlineMessageId]: Inline message identifier.
  /// * [replyMarkup]: The new message reply markup; pass null if none; for bots only *(optional)*.
  /// * [inputMessageContent]: New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo.
  ///
  /// [Ok] is returned on completion.
  const EditInlineMessageMedia({
    required this.inlineMessageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Inline message identifier
  final String inlineMessageId;

  /// The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
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

  
  EditInlineMessageMedia copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => EditInlineMessageMedia(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String objectType = 'editInlineMessageMedia';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
