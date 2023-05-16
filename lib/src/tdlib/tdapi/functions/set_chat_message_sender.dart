part of '../tdapi.dart';

/// **SetChatMessageSender** *(setChatMessageSender)* - TDLib function
///
/// Selects a message sender to send messages in a chat.
///
/// * [chatId]: Chat identifier.
/// * [messageSenderId]: New message sender for the chat.
///
/// [Ok] is returned on completion.
final class SetChatMessageSender extends TdFunction {
  
  /// **SetChatMessageSender** *(setChatMessageSender)* - TDLib function
  ///
  /// Selects a message sender to send messages in a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageSenderId]: New message sender for the chat.
  ///
  /// [Ok] is returned on completion.
  const SetChatMessageSender({
    required this.chatId,
    required this.messageSenderId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New message sender for the chat
  final MessageSender messageSenderId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_sender_id": messageSenderId.toJson(),
      "@extra": extra,
		};
	}

  
  SetChatMessageSender copyWith({
    int? chatId,
    MessageSender? messageSenderId,
  }) => SetChatMessageSender(
    chatId: chatId ?? this.chatId,
    messageSenderId: messageSenderId ?? this.messageSenderId,
  );

  static const String objectType = 'setChatMessageSender';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
