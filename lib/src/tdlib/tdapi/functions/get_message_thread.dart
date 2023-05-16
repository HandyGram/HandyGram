part of '../tdapi.dart';

/// **GetMessageThread** *(getMessageThread)* - TDLib function
///
/// Returns information about a message thread. Can be used only if message.can_get_message_thread == true.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Identifier of the message.
///
/// [MessageThreadInfo] is returned on completion.
final class GetMessageThread extends TdFunction {
  
  /// **GetMessageThread** *(getMessageThread)* - TDLib function
  ///
  /// Returns information about a message thread. Can be used only if message.can_get_message_thread == true.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Identifier of the message.
  ///
  /// [MessageThreadInfo] is returned on completion.
  const GetMessageThread({
    required this.chatId,
    required this.messageId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Identifier of the message
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

  
  GetMessageThread copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessageThread(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'getMessageThread';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
