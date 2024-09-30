import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/components/list/page_indicator.dart';
import 'package:handygram/src/pages/chat_send/pages/gifs.dart';
import 'package:handygram/src/pages/chat_send/pages/photos.dart';
import 'package:handygram/src/pages/chat_send/pages/stickers.dart';
import 'package:handygram/src/pages/chat_send/pages/text.dart';
import 'package:handygram/src/pages/chat_send/pages/voice.dart';

import 'package:handy_tdlib/api.dart' as td;

class ChatSendPage extends StatefulWidget {
  const ChatSendPage({
    super.key,
    required this.chatId,
    this.viewId,
    this.replyToMessageId,
    this.messageThreadId,
  });

  final int chatId;
  final String? viewId;
  final int? messageThreadId;
  final int? replyToMessageId;

  @override
  State<ChatSendPage> createState() => _ChatSendPageState();
}

class MessageSendInfo {
  final int chatId;
  final int? messageThreadId;
  final int? replyToMessageId;
  final Function(td.InputMessageContent, {bool wait}) sendMessage;
  final td.DraftMessage? draft;

  const MessageSendInfo({
    required this.chatId,
    required this.sendMessage,
    this.messageThreadId,
    this.replyToMessageId,
    this.draft,
  });
}

class _ChatSendPageState extends State<ChatSendPage> {
  late final initialPage = switch (widget.viewId) {
    "media" => 0, // stickers - 0, gifs - 1
    "photo" => 2,
    "voice" => 4,
    //"file" => 5,
    "text" || _ => 3,
  };
  late final controller = PageController(initialPage: initialPage);
  late int currentPage = initialPage;

  void _sendMessage(td.InputMessageContent content, {bool wait = true}) async {
    final future = CurrentAccount.providers.messages.sendMessage(
      widget.chatId,
      content,
      replyTo: widget.replyToMessageId == null
          ? null
          : td.InputMessageReplyToMessage(
              messageId: widget.replyToMessageId!,
            ),
      messageThreadId: widget.messageThreadId,
    );
    if (wait) await future;
    if (mounted && context.mounted) GoRouter.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final info = MessageSendInfo(
      chatId: widget.chatId,
      replyToMessageId: widget.replyToMessageId,
      sendMessage: _sendMessage,
      messageThreadId: widget.messageThreadId,
    );

    final children = [
      ChatSendStickerPage(info), // 0
      ChatSendGIFPage(info), //     1
      ChatSendPhotoPage(info), //   2
      ChatSendTextPage(info), //    3
      ChatSendVoicePage(info), //   4
      //ChatSendFilePage(info), //    5
    ];

    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: PageIndicator(
          pageCount: children.length,
          currentPage: currentPage,
          child: PageView(
            controller: controller,
            onPageChanged: (index) => setState(() => currentPage = index),
            physics: const BouncingScrollPhysics(),
            children: children,
          ),
        ),
      ),
    );
  }
}
