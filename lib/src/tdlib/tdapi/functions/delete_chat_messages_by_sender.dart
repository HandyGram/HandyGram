part of '../tdapi.dart';

/// **DeleteChatMessagesBySender** *(deleteChatMessagesBySender)* - TDLib function
///
/// Deletes all messages sent by the specified message sender in a chat. Supported only for supergroups; requires can_delete_messages administrator privileges.
///
/// * [chatId]: Chat identifier.
/// * [senderId]: Identifier of the sender of messages to delete.
///
/// [Ok] is returned on completion.
final class DeleteChatMessagesBySender extends TdFunction {
  
  /// **DeleteChatMessagesBySender** *(deleteChatMessagesBySender)* - TDLib function
  ///
  /// Deletes all messages sent by the specified message sender in a chat. Supported only for supergroups; requires can_delete_messages administrator privileges.
  ///
  /// * [chatId]: Chat identifier.
  /// * [senderId]: Identifier of the sender of messages to delete.
  ///
  /// [Ok] is returned on completion.
  const DeleteChatMessagesBySender({
    required this.chatId,
    required this.senderId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Identifier of the sender of messages to delete
  final MessageSender senderId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "sender_id": senderId.toJson(),
      "@extra": extra,
		};
	}

  
  DeleteChatMessagesBySender copyWith({
    int? chatId,
    MessageSender? senderId,
  }) => DeleteChatMessagesBySender(
    chatId: chatId ?? this.chatId,
    senderId: senderId ?? this.senderId,
  );

  static const String objectType = 'deleteChatMessagesBySender';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
