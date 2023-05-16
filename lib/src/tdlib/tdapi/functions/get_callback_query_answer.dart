part of '../tdapi.dart';

/// **GetCallbackQueryAnswer** *(getCallbackQueryAnswer)* - TDLib function
///
/// Sends a callback query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
///
/// * [chatId]: Identifier of the chat with the message.
/// * [messageId]: Identifier of the message from which the query originated.
/// * [payload]: Query payload.
///
/// [CallbackQueryAnswer] is returned on completion.
final class GetCallbackQueryAnswer extends TdFunction {
  
  /// **GetCallbackQueryAnswer** *(getCallbackQueryAnswer)* - TDLib function
  ///
  /// Sends a callback query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  ///
  /// * [chatId]: Identifier of the chat with the message.
  /// * [messageId]: Identifier of the message from which the query originated.
  /// * [payload]: Query payload.
  ///
  /// [CallbackQueryAnswer] is returned on completion.
  const GetCallbackQueryAnswer({
    required this.chatId,
    required this.messageId,
    required this.payload,
  });
  
  /// Identifier of the chat with the message
  final int chatId;

  /// Identifier of the message from which the query originated
  final int messageId;

  /// Query payload
  final CallbackQueryPayload payload;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "payload": payload.toJson(),
      "@extra": extra,
		};
	}

  
  GetCallbackQueryAnswer copyWith({
    int? chatId,
    int? messageId,
    CallbackQueryPayload? payload,
  }) => GetCallbackQueryAnswer(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    payload: payload ?? this.payload,
  );

  static const String objectType = 'getCallbackQueryAnswer';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
