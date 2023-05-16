part of '../tdapi.dart';

/// **ForwardMessages** *(forwardMessages)* - TDLib function
///
/// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message.
///
/// * [chatId]: Identifier of the chat to which to forward messages.
/// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent; for forum threads only.
/// * [fromChatId]: Identifier of the chat from which to forward messages.
/// * [messageIds]: Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously.
/// * [options]: Options to be used to send the messages; pass null to use default options *(optional)*.
/// * [sendCopy]: Pass true to copy content of the messages without reference to the original sender. Always true if the messages are forwarded to a secret chat or are local.
/// * [removeCaption]: Pass true to remove media captions of message copies. Ignored if send_copy is false.
/// * [onlyPreview]: Pass true to get fake messages instead of actually forwarding them.
///
/// [Messages] is returned on completion.
final class ForwardMessages extends TdFunction {
  
  /// **ForwardMessages** *(forwardMessages)* - TDLib function
  ///
  /// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message.
  ///
  /// * [chatId]: Identifier of the chat to which to forward messages.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent; for forum threads only.
  /// * [fromChatId]: Identifier of the chat from which to forward messages.
  /// * [messageIds]: Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously.
  /// * [options]: Options to be used to send the messages; pass null to use default options *(optional)*.
  /// * [sendCopy]: Pass true to copy content of the messages without reference to the original sender. Always true if the messages are forwarded to a secret chat or are local.
  /// * [removeCaption]: Pass true to remove media captions of message copies. Ignored if send_copy is false.
  /// * [onlyPreview]: Pass true to get fake messages instead of actually forwarding them.
  ///
  /// [Messages] is returned on completion.
  const ForwardMessages({
    required this.chatId,
    required this.messageThreadId,
    required this.fromChatId,
    required this.messageIds,
    this.options,
    required this.sendCopy,
    required this.removeCaption,
    required this.onlyPreview,
  });
  
  /// Identifier of the chat to which to forward messages
  final int chatId;

  /// If not 0, a message thread identifier in which the message will be sent; for forum threads only
  final int messageThreadId;

  /// Identifier of the chat from which to forward messages
  final int fromChatId;

  /// Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously
  final List<int> messageIds;

  /// Options to be used to send the messages; pass null to use default options
  final MessageSendOptions? options;

  /// Pass true to copy content of the messages without reference to the original sender. Always true if the messages are forwarded to a secret chat or are local
  final bool sendCopy;

  /// Pass true to remove media captions of message copies. Ignored if send_copy is false
  final bool removeCaption;

  /// Pass true to get fake messages instead of actually forwarding them
  final bool onlyPreview;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "from_chat_id": fromChatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "options": options?.toJson(),
      "send_copy": sendCopy,
      "remove_caption": removeCaption,
      "only_preview": onlyPreview,
      "@extra": extra,
		};
	}

  
  ForwardMessages copyWith({
    int? chatId,
    int? messageThreadId,
    int? fromChatId,
    List<int>? messageIds,
    MessageSendOptions? options,
    bool? sendCopy,
    bool? removeCaption,
    bool? onlyPreview,
  }) => ForwardMessages(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    fromChatId: fromChatId ?? this.fromChatId,
    messageIds: messageIds ?? this.messageIds,
    options: options ?? this.options,
    sendCopy: sendCopy ?? this.sendCopy,
    removeCaption: removeCaption ?? this.removeCaption,
    onlyPreview: onlyPreview ?? this.onlyPreview,
  );

  static const String objectType = 'forwardMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
