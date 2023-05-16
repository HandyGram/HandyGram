part of '../tdapi.dart';

/// **EditMessageReplyMarkup** *(editMessageReplyMarkup)* - TDLib function
///
/// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side.
///
/// * [chatId]: The chat the message belongs to.
/// * [messageId]: Identifier of the message.
/// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
///
/// [Message] is returned on completion.
final class EditMessageReplyMarkup extends TdFunction {
  
  /// **EditMessageReplyMarkup** *(editMessageReplyMarkup)* - TDLib function
  ///
  /// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side.
  ///
  /// * [chatId]: The chat the message belongs to.
  /// * [messageId]: Identifier of the message.
  /// * [replyMarkup]: The new message reply markup; pass null if none *(optional)*.
  ///
  /// [Message] is returned on completion.
  const EditMessageReplyMarkup({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
  });
  
  /// The chat the message belongs to
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "@extra": extra,
		};
	}

  
  EditMessageReplyMarkup copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
  }) => EditMessageReplyMarkup(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
  );

  static const String objectType = 'editMessageReplyMarkup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
