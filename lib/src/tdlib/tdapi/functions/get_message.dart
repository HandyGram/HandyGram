part of '../tdapi.dart';

/// **GetMessage** *(getMessage)* - TDLib function
///
/// Returns information about a message.
///
/// * [chatId]: Identifier of the chat the message belongs to.
/// * [messageId]: Identifier of the message to get.
///
/// [Message] is returned on completion.
final class GetMessage extends TdFunction {
  
  /// **GetMessage** *(getMessage)* - TDLib function
  ///
  /// Returns information about a message.
  ///
  /// * [chatId]: Identifier of the chat the message belongs to.
  /// * [messageId]: Identifier of the message to get.
  ///
  /// [Message] is returned on completion.
  const GetMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// Identifier of the chat the message belongs to 
  final int chatId;

  /// Identifier of the message to get
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

  
  GetMessage copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'getMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
