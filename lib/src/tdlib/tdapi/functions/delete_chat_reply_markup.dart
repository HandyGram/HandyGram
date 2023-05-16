part of '../tdapi.dart';

/// **DeleteChatReplyMarkup** *(deleteChatReplyMarkup)* - TDLib function
///
/// Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a replyMarkupForceReply reply markup has been used. An updateChatReplyMarkup update will be sent if the reply markup is changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: The message identifier of the used keyboard.
///
/// [Ok] is returned on completion.
final class DeleteChatReplyMarkup extends TdFunction {
  
  /// **DeleteChatReplyMarkup** *(deleteChatReplyMarkup)* - TDLib function
  ///
  /// Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a replyMarkupForceReply reply markup has been used. An updateChatReplyMarkup update will be sent if the reply markup is changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: The message identifier of the used keyboard.
  ///
  /// [Ok] is returned on completion.
  const DeleteChatReplyMarkup({
    required this.chatId,
    required this.messageId,
  });
  
  /// Chat identifier
  final int chatId;

  /// The message identifier of the used keyboard
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
		};
	}

  
  DeleteChatReplyMarkup copyWith({
    int? chatId,
    int? messageId,
  }) => DeleteChatReplyMarkup(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'deleteChatReplyMarkup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
