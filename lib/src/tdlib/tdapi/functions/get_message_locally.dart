part of '../tdapi.dart';

/// **GetMessageLocally** *(getMessageLocally)* - TDLib function
///
/// Returns information about a message, if it is available without sending network request. This is an offline request.
///
/// * [chatId]: Identifier of the chat the message belongs to.
/// * [messageId]: Identifier of the message to get.
///
/// [Message] is returned on completion.
final class GetMessageLocally extends TdFunction {
  
  /// **GetMessageLocally** *(getMessageLocally)* - TDLib function
  ///
  /// Returns information about a message, if it is available without sending network request. This is an offline request.
  ///
  /// * [chatId]: Identifier of the chat the message belongs to.
  /// * [messageId]: Identifier of the message to get.
  ///
  /// [Message] is returned on completion.
  const GetMessageLocally({
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

  
  GetMessageLocally copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessageLocally(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'getMessageLocally';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
