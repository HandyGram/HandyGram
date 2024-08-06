/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/display.dart';
import 'package:handygram/src/common/tdlib/extensions/message/sender.dart';
import 'package:handygram/src/common/tdlib/extensions/message/misc.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/content.dart';
import 'package:handygram/src/common/tdlib/misc/thumbnails.dart';
import 'package:handygram/src/components/icons/micro_avatar.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/pages/chat/view/widgets/focus_data.dart';

sealed class _MessageJumpInfo {
  const _MessageJumpInfo();
}

class _MessageJumpInSameChat extends _MessageJumpInfo {
  final int messageId;
  const _MessageJumpInSameChat(this.messageId);
}

class _MessageJumpInOtherChat extends _MessageJumpInfo {
  final int chatId;
  final int messageId;
  const _MessageJumpInOtherChat({
    required this.chatId,
    required this.messageId,
  });
}

class _MessageReplyToInfo {
  final String senderName;
  final InlineSpan text;
  final bool isQuote;
  final Widget? senderMicroAvatar;
  final _MessageJumpInfo? jumpInfo;

  const _MessageReplyToInfo({
    required this.senderName,
    required this.text,
    required this.isQuote,
    this.senderMicroAvatar,
    this.jumpInfo,
  });
}

class MessageReplyHeader extends StatefulWidget {
  const MessageReplyHeader({
    super.key,
    required this.replyMessage,
    this.isChannel = false,
  });

  final td.Message replyMessage;
  final bool isChannel;

  @override
  State<MessageReplyHeader> createState() => _MessageReplyHeaderState();
}

class _MessageReplyHeaderState extends State<MessageReplyHeader> {
  late td.Message reply = widget.replyMessage;
  _MessageReplyToInfo? _replyToInfo;
  ChatColor? chatColor;

  bool get isOutgoing => reply.isOutgoing && !widget.isChannel;

  Color get textColor {
    if (isOutgoing) {
      return ColorStyles.active.surface;
    } else {
      return ColorStyles.active.onSurface;
    }
  }

  Color? get usernameColor {
    if (isOutgoing) {
      return ColorStyles.active.onPrimary;
    } else {
      return (chatColor ?? ColorStyles.instance.defaultChatColor).usernameColor;
    }
  }

  Color get containerColor {
    if (isOutgoing) {
      return const Color(0xFFDFCBFF);
    } else {
      return (chatColor ?? ColorStyles.instance.defaultChatColor).boxColor;
    }
  }

  TextStyle? get textStyle => TextStyles.active.labelLarge?.copyWith(
        color: textColor,
        fontWeight: FontWeight.w500,
      );

  Future<_MessageReplyToInfo?> _loadReplyToStory(
      int storyId, int storySenderChatId) async {
    late final td.Story story;
    late final td.Chat senderChat;
    try {
      story = await CurrentAccount.providers.stories
          .getStory(storyId, storySenderChatId);
      senderChat =
          await CurrentAccount.providers.chats.getChat(storySenderChatId);
    } on TdlibCoreException {
      return null;
    }
    chatColor = _getChatColor(senderChat.accentColorId);

    final thumbSize = textStyle?.fontSize;

    late final int storyDuration;
    late final Widget? thumbnail;
    switch (story.content) {
      case td.StoryContentVideo(video: final video):
        storyDuration = video.duration.round();
        thumbnail = video.thumbnail != null
            ? await getThumbnailWidget(video.thumbnail!, thumbSize)
            : null;
      case td.StoryContentPhoto(photo: final photo):
        storyDuration = 0;
        thumbnail = await getMinimalPhotoSizeWidget(photo, thumbSize);
      default:
        storyDuration = 0;
        thumbnail = null;
    }

    return _MessageReplyToInfo(
      senderName: senderChat.title,
      senderMicroAvatar: MicroAvatar(sender: senderChat.typeAsSender),
      text: TextSpan(children: [
        if (thumbnail != null)
          WidgetSpan(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3 * Scaling.factor),
              child: Container(
                height: thumbSize,
                width: thumbSize,
                color: ColorStyles.active.secondary,
                child: thumbnail,
              ),
            ),
            alignment: PlaceholderAlignment.middle,
          ),
        TextSpan(
          style: textStyle,
          text: storyDuration == 0
              ? AppLocalizations.current.story
              : AppLocalizations.current.storyWithDuration(
                  "${storyDuration ~/ 60}:${storyDuration % 60}",
                ),
        ),
      ]),
      isQuote: false,
    );
  }

  Future<_MessageReplyToInfo?> _loadReplyInSameChat({
    required int chatId,
    required int messageId,
    required td.TextQuote? quote,
  }) async {
    final td.Message message;
    try {
      message =
          await CurrentAccount.providers.messages.getMessage(chatId, messageId);
    } on TdlibCoreException {
      return null;
    }
    chatColor = _getChatColor(await message.senderId.accentColorId);

    return _MessageReplyToInfo(
      senderName: await message.senderName,
      senderMicroAvatar: MicroAvatar(sender: message.senderId),
      jumpInfo: _MessageJumpInSameChat(messageId),
      text: await message.content.getPreview(
        style: textStyle,
        quote: quote,
      ),
      isQuote: quote != null,
    );
  }

  Future<_MessageReplyToInfo> _loadReplyFromOtherSource({
    required int chatId,
    required int messageId,
    required td.MessageOrigin? origin,
    required td.TextQuote? quote,
    required td.MessageContent? otherChatContent,
  }) async {
    String? senderName;
    Widget? senderPfp;
    InlineSpan? contentSpan;
    _MessageJumpInfo? jumpInfo;
    switch (origin) {
      case td.MessageOriginChat(
          senderChatId: final senderChatId,
          authorSignature: final author,
        ):
        late final td.Chat? senderChat;
        try {
          senderChat =
              await CurrentAccount.providers.chats.getChat(senderChatId);
        } on TdlibCoreException {
          senderChat = null;
        }

        senderName = author.isEmpty ? senderChat?.title : author;
        if (senderChat != null) {
          chatColor = _getChatColor(senderChat.accentColorId);
          senderPfp = MicroAvatar(sender: senderChat.typeAsSender);
        } else {
          chatColor = ColorStyles.instance.defaultChatColor;
        }
        jumpInfo = _MessageJumpInOtherChat(
          chatId: chatId,
          messageId: messageId,
        );
        if (otherChatContent != null) {
          contentSpan = await otherChatContent.getPreview(
            style: textStyle,
            quote: quote,
          );
        } else {
          // Try to get message from unknown chat.
          late final td.Message? message;
          try {
            message = await CurrentAccount.providers.messages
                .getMessage(chatId, messageId);
          } on TdlibCoreException {
            message = null;
          }
          contentSpan = await message?.content.getPreview(
            style: textStyle,
            quote: quote,
          );
        }
      case td.MessageOriginChannel(
          chatId: final chatId,
          messageId: final messageId,
        ):
        late final td.Chat? chat;
        try {
          chat = await CurrentAccount.providers.chats.getChat(chatId);
        } on TdlibCoreException {
          chat = null;
        }
        if (chat == null) break;

        chatColor = _getChatColor(chat.accentColorId);
        senderName = chat.title;
        senderPfp = MicroAvatar(sender: chat.typeAsSender);

        late final td.Message? message;
        try {
          message = await CurrentAccount.providers.messages
              .getMessage(chatId, messageId);
        } on TdlibCoreException {
          message = null;
        }
        if (message == null) break;

        contentSpan = await message.content.getPreview(
          style: textStyle,
          quote: quote,
        );
      case td.MessageOriginUser(senderUserId: final userId):
        late final td.User? user;
        try {
          user = await CurrentAccount.providers.users.getUser(userId);
        } on TdlibCoreException {
          user = null;
        }
        if (user == null) break;

        chatColor = _getChatColor(user.accentColorId);
        senderName = user.displayName;
        senderPfp = MicroAvatar(
          sender: td.MessageSenderUser(userId: userId),
        );
      case td.MessageOriginHiddenUser(senderName: final ssenderName):
        chatColor = ColorStyles.instance.defaultChatColor;
        senderName = ssenderName;
      case null:
        break;
    }

    if (quote != null) {
      // If message text is inaccessible, a quote may be
      // auto-generated as a replacement.
      contentSpan ??= TextSpan(
        style: textStyle,
        text: quote.text.text,
      );
    }

    return _MessageReplyToInfo(
      senderName: senderName ?? AppLocalizations.current.someone,
      senderMicroAvatar: senderPfp,
      jumpInfo: jumpInfo,
      text: contentSpan ??
          TextSpan(
            text: AppLocalizations.current.something,
            style: textStyle,
          ),
      isQuote: quote != null && quote.isManual,
    );
  }

  Future<_MessageReplyToInfo?> _loadReplyToMessage({
    required int chatId,
    required int messageId,
    required td.MessageOrigin? origin,
    required td.TextQuote? quote,
    required td.MessageContent? otherChatContent,
  }) async {
    if (chatId == reply.chatId) {
      return _loadReplyInSameChat(
        chatId: chatId,
        messageId: messageId,
        quote: quote,
      );
    } else {
      return _loadReplyFromOtherSource(
        messageId: messageId,
        chatId: chatId,
        quote: quote,
        origin: origin,
        otherChatContent: otherChatContent,
      );
    }
  }

  Future<void> _loadReplyInfo() async {
    switch (reply.replyTo) {
      case td.MessageReplyToStory(
          storyId: final storyId,
          storySenderChatId: final storySenderChatId,
        ):
        _replyToInfo = await _loadReplyToStory(storyId, storySenderChatId);
      case td.MessageReplyToMessage(
          messageId: final messageId,
          chatId: final chatId,
          quote: final quote,
          origin: final origin,
          content: final otherChatContent,
        ):
        _replyToInfo = await _loadReplyToMessage(
          messageId: messageId,
          chatId: chatId,
          quote: quote,
          origin: origin,
          otherChatContent: otherChatContent,
        );
      case null:
        return Future.value(null);
    }

    if (!mounted || !context.mounted) return;
    setState(() {});
  }

  ChatColor _getChatColor(int? id) {
    final normalizedId = id == null
        ? null
        : CurrentAccount.providers.accentColors.state
            ?.convertAdvancedToBasic(id);
    if (normalizedId == null) {
      return ColorStyles.instance.defaultChatColor;
    }
    return ColorStyles.basicChatColors[normalizedId]!;
  }

  @override
  void initState() {
    super.initState();
    _loadReplyInfo();
  }

  @override
  void didUpdateWidget(covariant MessageReplyHeader oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.replyMessage != widget.replyMessage) {
      reply = widget.replyMessage;
      _replyToInfo = null;
      _loadReplyInfo();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? content;

    content = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                _replyToInfo?.senderName ?? AppLocalizations.current.someone,
                maxLines: 1,
                overflow: TextOverflow.fade,
                softWrap: false,
                style: textStyle?.copyWith(color: usernameColor),
                textAlign: isOutgoing ? TextAlign.right : TextAlign.left,
              ),
            ),
            SizedBox(width: Paddings.messageContentPadding),
          ],
        ),
        RichText(
          text: TextSpan(children: [
            _replyToInfo?.text ??
                TextSpan(
                  text: AppLocalizations.current.loadingMessage,
                  style: textStyle,
                ),
            WidgetSpan(
              child: SizedBox(width: Paddings.messageContentPadding),
            ),
          ]),
          maxLines: 1,
          softWrap: false,
          overflow: TextOverflow.fade,
          textWidthBasis: TextWidthBasis.longestLine,
          textAlign: TextAlign.left,
        ),
      ],
    );

    return InkWell(
      onTap: () {
        final jumpInfo = _replyToInfo?.jumpInfo;
        if (jumpInfo == null) return;

        switch (jumpInfo) {
          case _MessageJumpInSameChat(messageId: final messageId):
            MessageFocusData.of(context)?.requestFocus(messageId);
          case _MessageJumpInOtherChat(
              chatId: final chatId,
              messageId: final messageId,
            ):
            GoRouter.of(context).pushNamed(
              "/chat?id=$chatId&focusOnMessageId=$messageId",
            );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadii.messageBubbleContentRadius,
        ),
        padding: EdgeInsets.only(
          top: Paddings.messageContentPadding,
          bottom: Paddings.messageContentPadding,
          left: Paddings.messageContentPadding,
        ),
        child: content,
      ),
    );
  }
}
