part of '../tdapi.dart';

/// **GetCallbackQueryMessage** *(getCallbackQueryMessage)* - TDLib function
///
/// Returns information about a message with the callback button that originated a callback query; for bots only.
///
/// * [chatId]: Identifier of the chat the message belongs to.
/// * [messageId]: Message identifier.
/// * [callbackQueryId]: Identifier of the callback query.
///
/// [Message] is returned on completion.
final class GetCallbackQueryMessage extends TdFunction {
  
  /// **GetCallbackQueryMessage** *(getCallbackQueryMessage)* - TDLib function
  ///
  /// Returns information about a message with the callback button that originated a callback query; for bots only.
  ///
  /// * [chatId]: Identifier of the chat the message belongs to.
  /// * [messageId]: Message identifier.
  /// * [callbackQueryId]: Identifier of the callback query.
  ///
  /// [Message] is returned on completion.
  const GetCallbackQueryMessage({
    required this.chatId,
    required this.messageId,
    required this.callbackQueryId,
  });
  
  /// Identifier of the chat the message belongs to 
  final int chatId;

  /// Message identifier 
  final int messageId;

  /// Identifier of the callback query
  final int callbackQueryId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "callback_query_id": callbackQueryId,
      "@extra": extra,
		};
	}

  
  GetCallbackQueryMessage copyWith({
    int? chatId,
    int? messageId,
    int? callbackQueryId,
  }) => GetCallbackQueryMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    callbackQueryId: callbackQueryId ?? this.callbackQueryId,
  );

  static const String objectType = 'getCallbackQueryMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
