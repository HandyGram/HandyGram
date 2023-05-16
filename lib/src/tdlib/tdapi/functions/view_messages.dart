part of '../tdapi.dart';

/// **ViewMessages** *(viewMessages)* - TDLib function
///
/// Informs TDLib that messages are being viewed by the user. Sponsored messages must be marked as viewed only when the entire text of the message is shown on the screen (excluding the button).. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels).
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: If not 0, a message thread identifier in which the messages are being viewed.
/// * [messageIds]: The identifiers of the messages being viewed.
/// * [forceRead]: Pass true to mark as read the specified messages even the chat is closed.
///
/// [Ok] is returned on completion.
final class ViewMessages extends TdFunction {
  
  /// **ViewMessages** *(viewMessages)* - TDLib function
  ///
  /// Informs TDLib that messages are being viewed by the user. Sponsored messages must be marked as viewed only when the entire text of the message is shown on the screen (excluding the button).. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels).
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the messages are being viewed.
  /// * [messageIds]: The identifiers of the messages being viewed.
  /// * [forceRead]: Pass true to mark as read the specified messages even the chat is closed.
  ///
  /// [Ok] is returned on completion.
  const ViewMessages({
    required this.chatId,
    required this.messageThreadId,
    required this.messageIds,
    required this.forceRead,
  });
  
  /// Chat identifier
  final int chatId;

  /// If not 0, a message thread identifier in which the messages are being viewed
  final int messageThreadId;

  /// The identifiers of the messages being viewed
  final List<int> messageIds;

  /// Pass true to mark as read the specified messages even the chat is closed
  final bool forceRead;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "message_ids": messageIds.map((i) => i).toList(),
      "force_read": forceRead,
      "@extra": extra,
		};
	}

  
  ViewMessages copyWith({
    int? chatId,
    int? messageThreadId,
    List<int>? messageIds,
    bool? forceRead,
  }) => ViewMessages(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    messageIds: messageIds ?? this.messageIds,
    forceRead: forceRead ?? this.forceRead,
  );

  static const String objectType = 'viewMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
