part of '../tdapi.dart';

/// **EditInlineMessageReplyMarkup** *(editInlineMessageReplyMarkup)* - TDLib function
///
/// Edits the reply markup of an inline message sent via a bot; for bots only.
///
/// * [inlineMessageId]: Inline message identifier.
/// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
///
/// [Ok] is returned on completion.
final class EditInlineMessageReplyMarkup extends TdFunction {
  
  /// **EditInlineMessageReplyMarkup** *(editInlineMessageReplyMarkup)* - TDLib function
  ///
  /// Edits the reply markup of an inline message sent via a bot; for bots only.
  ///
  /// * [inlineMessageId]: Inline message identifier.
  /// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const EditInlineMessageReplyMarkup({
    required this.inlineMessageId,
    this.replyMarkup,
  });
  
  /// Inline message identifier
  final String inlineMessageId;

  /// The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
      "@extra": extra,
		};
	}

  
  EditInlineMessageReplyMarkup copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
  }) => EditInlineMessageReplyMarkup(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
  );

  static const String objectType = 'editInlineMessageReplyMarkup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
