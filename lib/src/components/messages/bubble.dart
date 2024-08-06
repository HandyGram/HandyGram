/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';
import 'package:handygram/src/common/tdlib/extensions/message/misc.dart';
import 'package:handygram/src/common/tdlib/misc/service_chat_type.dart';
import 'package:handygram/src/components/layout/flexible_constraints_column/widget.dart';
import 'package:handygram/src/components/messages/content/animated_emoji.dart';
import 'package:handygram/src/components/messages/content/photo/photo_content.dart';
import 'package:handygram/src/components/messages/data.dart';
import 'package:handygram/src/components/messages/parts/attributes.dart';
import 'package:handygram/src/components/messages/content/sticker.dart';
import 'package:handygram/src/components/messages/content/text.dart';
import 'package:handygram/src/components/messages/content/unsupported.dart';
import 'package:handygram/src/components/messages/parts/sender_header.dart';
import 'package:handygram/src/components/messages/parts/reply_header.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.message,
    this.chat,
    this.chatType,
    super.key,
  });

  final td.Message message;
  final td.Chat? chat;
  final ServiceChatType? chatType;

  Widget _content(
    BuildContext context,
    bool isOutgoing,
    td.MessageContent content,
  ) {
    final contentKey = ValueKey<String>("msg,${message.id},content");
    final data = MessageBubbleData(
      message: message,
      chat: chat,
      chatType: chatType,
      content: content,
      attributesWidget: MessageAttributes(
        message: message,
        chat: chat,
        chatType: chatType,
      ),
      commonIsOutgoing: isOutgoing,
    );

    return switch (content) {
      td.MessageText() => TextMessageContent(
          data: data.cast(),
          key: contentKey,
        ),
      td.MessageSticker() => StickerMessageContent(
          data: data.cast(),
          key: contentKey,
        ),
      td.MessagePhoto() => PhotoMessageContent(
          data: data.cast(),
          key: contentKey,
        ),
      td.MessageAnimatedEmoji() => AnimatedEmojiMessageContent(
          data: data.cast(),
          key: contentKey,
        ),
      _ => UnsupportedMessageContent(
          data: data.cast(),
          key: contentKey,
        ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final isOutgoing = message.isReallyOutgoing && !(chat?.isChannel ?? false);
    final shouldShowHeader = !isOutgoing && (chat?.isGroup ?? true);

    return Align(
      alignment: isOutgoing ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadii.messageBubbleRadius,
          color: isOutgoing
              ? ColorStyles.active.primary
              : ColorStyles.active.surface,
        ),
        padding: EdgeInsets.all(Paddings.messageBubblesPadding),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: (chat?.isChannel ?? false)
                ? double.infinity
                : Sizes.maxMessageBubbleWidth,
          ),
          child: FlexibleConstraintsColumn(
            children: [
              if (shouldShowHeader)
                Constrained(
                  isTarget: true,
                  constrainMaxWidth: false,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: Paddings.betweenSimilarElements,
                    ),
                    child: MessageHeader(message: message),
                  ),
                ),
              if (message.replyTo != null)
                Constrained(
                  isTarget: true,
                  constrainMinWidth: true,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: Paddings.betweenSimilarElements,
                    ),
                    child: MessageReplyHeader(
                      replyMessage: message,
                      isChannel: chat?.isChannel ?? false,
                    ),
                  ),
                ),
              Constrained(
                isTarget: true,
                constrainMinWidth: true,
                child: StreamBuilder<td.MessageContent>(
                  initialData: message.content,
                  stream: CurrentAccount.providers.messages.filter(
                    message.chatId,
                    messageId: message.id,
                    tdUpdateTypes: [td.UpdateMessageContent],
                  ).map(
                      (e) => (e.update as td.UpdateMessageContent).newContent),
                  builder: (context, snapshot) =>
                      _content(context, isOutgoing, snapshot.data!),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
