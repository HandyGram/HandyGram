part of '../tdapi.dart';

/// **SendInlineQueryResultMessage** *(sendInlineQueryResultMessage)* - TDLib function
///
/// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message.
///
/// * [chatId]: Target chat.
/// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent.
/// * [replyToMessageId]: Identifier of a replied message; 0 if none.
/// * [options]: Options to be used to send the message; pass null to use default options *(optional)*.
/// * [queryId]: Identifier of the inline query.
/// * [resultId]: Identifier of the inline result.
/// * [hideViaBot]: Pass true to hide the bot, via which the message is sent. Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and getOption("venue_search_bot_username").
///
/// [Message] is returned on completion.
final class SendInlineQueryResultMessage extends TdFunction {
  
  /// **SendInlineQueryResultMessage** *(sendInlineQueryResultMessage)* - TDLib function
  ///
  /// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message.
  ///
  /// * [chatId]: Target chat.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent.
  /// * [replyToMessageId]: Identifier of a replied message; 0 if none.
  /// * [options]: Options to be used to send the message; pass null to use default options *(optional)*.
  /// * [queryId]: Identifier of the inline query.
  /// * [resultId]: Identifier of the inline result.
  /// * [hideViaBot]: Pass true to hide the bot, via which the message is sent. Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and getOption("venue_search_bot_username").
  ///
  /// [Message] is returned on completion.
  const SendInlineQueryResultMessage({
    required this.chatId,
    required this.messageThreadId,
    required this.replyToMessageId,
    this.options,
    required this.queryId,
    required this.resultId,
    required this.hideViaBot,
  });
  
  /// Target chat
  final int chatId;

  /// If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// Identifier of a replied message; 0 if none
  final int replyToMessageId;

  /// Options to be used to send the message; pass null to use default options
  final MessageSendOptions? options;

  /// Identifier of the inline query
  final int queryId;

  /// Identifier of the inline result
  final String resultId;

  /// Pass true to hide the bot, via which the message is sent. Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and getOption("venue_search_bot_username")
  final bool hideViaBot;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_to_message_id": replyToMessageId,
      "options": options?.toJson(),
      "query_id": queryId,
      "result_id": resultId,
      "hide_via_bot": hideViaBot,
      "@extra": extra,
		};
	}

  
  SendInlineQueryResultMessage copyWith({
    int? chatId,
    int? messageThreadId,
    int? replyToMessageId,
    MessageSendOptions? options,
    int? queryId,
    String? resultId,
    bool? hideViaBot,
  }) => SendInlineQueryResultMessage(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    options: options ?? this.options,
    queryId: queryId ?? this.queryId,
    resultId: resultId ?? this.resultId,
    hideViaBot: hideViaBot ?? this.hideViaBot,
  );

  static const String objectType = 'sendInlineQueryResultMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
