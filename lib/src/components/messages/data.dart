import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/service_chat_type.dart';

final class MessageBubbleData<T extends td.MessageContent> {
  final td.Message message;
  final T content;

  final td.Chat? chat;
  final ServiceChatType? chatType;

  final Widget attributesWidget;

  /// Commonized isOutgoing to prevent layout bugs
  final bool commonIsOutgoing;

  MessageBubbleData<A> cast<A extends td.MessageContent>() =>
      MessageBubbleData<A>(
        message: message,
        chat: chat,
        chatType: chatType,
        content: content as A,
        attributesWidget: attributesWidget,
        commonIsOutgoing: commonIsOutgoing,
      );

  const MessageBubbleData({
    required this.message,
    required this.chat,
    required this.chatType,
    required this.content,
    required this.attributesWidget,
    required this.commonIsOutgoing,
  });
}
