/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handy_tdlib/handy_tdlib.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';
import 'package:handygram/src/components/messages/content/photo.dart';
import 'package:handygram/src/components/messages/content/sticker.dart';
import 'package:handygram/src/components/messages/content/text.dart';
import 'package:handygram/src/components/messages/inherited/chat_info.dart';
import 'package:handygram/src/components/messages/content/unsupported.dart';
import 'package:handygram/src/components/messages/header.dart';
import 'package:handygram/src/components/messages/inherited/message_info.dart';
import 'package:handygram/src/components/messages/reply_header.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.message,
    required this.chat,
    super.key,
  });

  final td.Message message;
  final td.Chat chat;

  @override
  Widget build(BuildContext context) {
    final isOutgoing = message.isOutgoing && !chat.isChannel;
    final shouldShowHeader = !isOutgoing && chat.isGroup;
    final contentKey = ValueKey("content,${message.chatId},${message.id}");
    final content = message.content;
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
            maxWidth:
                chat.isChannel ? double.infinity : Sizes.maxMessageBubbleWidth,
          ),
          child: Column(
            mainAxisAlignment:
                !isOutgoing ? MainAxisAlignment.start : MainAxisAlignment.end,
            crossAxisAlignment:
                !isOutgoing ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (shouldShowHeader)
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: Paddings.betweenSimilarElements,
                    ),
                    child: MessageHeader(message: message),
                  ),
                ),
              if (message.replyTo != null)
                Padding(
                  padding: EdgeInsets.only(
                    bottom: Paddings.betweenSimilarElements,
                  ),
                  child: MessageReplyHeader(message: message),
                ),
              Flexible(
                child: switch (content) {
                  MessageText() => TextMessageContent(
                      content,
                      isOutgoing: isOutgoing,
                      key: contentKey,
                    ),
                  MessageSticker() => StickerMessageContent(
                      content,
                      key: contentKey,
                    ),
                  MessagePhoto() => PhotoMessageContent(
                      content,
                      isOutgoing: isOutgoing,
                      key: contentKey,
                    ),
                  _ => UnsupportedMessageContent(
                      content,
                      isOutgoing: isOutgoing,
                      key: contentKey,
                    ),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
