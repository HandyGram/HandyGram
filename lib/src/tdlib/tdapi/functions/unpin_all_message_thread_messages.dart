part of '../tdapi.dart';

/// **UnpinAllMessageThreadMessages** *(unpinAllMessageThreadMessages)* - TDLib function
///
/// Removes all pinned messages from a forum topic; requires can_pin_messages rights in the supergroup.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier in which messages will be unpinned.
///
/// [Ok] is returned on completion.
final class UnpinAllMessageThreadMessages extends TdFunction {
  
  /// **UnpinAllMessageThreadMessages** *(unpinAllMessageThreadMessages)* - TDLib function
  ///
  /// Removes all pinned messages from a forum topic; requires can_pin_messages rights in the supergroup.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier in which messages will be unpinned.
  ///
  /// [Ok] is returned on completion.
  const UnpinAllMessageThreadMessages({
    required this.chatId,
    required this.messageThreadId,
  });
  
  /// Identifier of the chat
  final int chatId;

  /// Message thread identifier in which messages will be unpinned
  final int messageThreadId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "@extra": extra,
		};
	}

  
  UnpinAllMessageThreadMessages copyWith({
    int? chatId,
    int? messageThreadId,
  }) => UnpinAllMessageThreadMessages(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String objectType = 'unpinAllMessageThreadMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
