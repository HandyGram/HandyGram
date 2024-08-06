/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';
import 'package:handygram/src/common/tdlib/extensions/message/sender.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/content.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/input.dart';
import 'package:handygram/src/common/tdlib/misc/service_chat_type.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/brief_chat_info.dart';
import 'package:handygram/src/components/icons/avatar.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

const int _kAuthorNameLength = 5;

class _ChatInfo {
  final InlineSpan? draft;
  final InlineSpan? lastMessage;
  final String title;
  final bool notifiable;
  final int unreadCount;
  final int unreadMentionCount;

  _ChatInfo copyWith({
    InlineSpan? draft,
    InlineSpan? lastMessage,
    String? title,
    bool? notifiable,
    int? unreadCount,
    int? unreadMentionCount,
    bool? isMe,
  }) {
    return _ChatInfo(
      draft: draft ?? this.draft,
      lastMessage: lastMessage ?? this.lastMessage,
      title: title ?? this.title,
      notifiable: notifiable ?? this.notifiable,
      unreadCount: unreadCount ?? this.unreadCount,
      unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
    );
  }

  const _ChatInfo({
    required this.draft,
    required this.lastMessage,
    required this.title,
    required this.notifiable,
    required this.unreadCount,
    required this.unreadMentionCount,
  });
}

class ChatPreview extends StatefulWidget {
  const ChatPreview({
    super.key,
    this.useTemplateInfoIfNeeded = false,
    required this.briefChatInfo,
  });

  final bool useTemplateInfoIfNeeded;
  final BriefChatInfo briefChatInfo;

  @override
  State<ChatPreview> createState() => _ChatPreviewState();
}

class _ChatPreviewState extends State<ChatPreview> {
  _ChatInfo? info;
  int? myUserId;

  Future<void> _loadInfo() async {
    myUserId ??= await CurrentAccount.providers.options.getMaybeCached('my_id');
    final td.Chat chat;
    try {
      chat = await CurrentAccount.providers.chats.getChat(
        widget.briefChatInfo.chatId,
      );
    } catch (e) {
      return;
    }

    String? author = await chat.lastMessage?.senderId.title;
    if (await chat.lastMessage?.senderId.isMe ?? false) {
      author = AppLocalizations.current.you;
    }

    if (author != null) {
      author = author.substring(
          0, min(_kAuthorNameLength + 1, author.characters.length));
      if (author.runes.length == _kAuthorNameLength + 1) {
        author = "${author.substring(0, _kAuthorNameLength)}…";
      }
    }

    final settings = await CurrentAccount.providers.scopeNotificationSettings
        .getForChat(chatObj: chat);

    info = _ChatInfo(
      draft: await chat.draftMessage?.inputMessageText.getPreview(
        color: ColorStyles.active.secondary,
      ),
      lastMessage: await chat.lastMessage?.content.getPreview(
        color: ColorStyles.active.secondary,
        authorColor: ColorStyles.active.onSurface,
        author: chat.isGroup ? author : null,
      ),
      title: chat.title,
      notifiable: settings.muteFor <= 0 || chat.unreadMentionCount > 0,
      unreadCount: chat.unreadCount,
      unreadMentionCount: chat.unreadMentionCount,
    );
    if (widget.useTemplateInfoIfNeeded) {
      info = info?.copyWith(
        title: (await getServiceChatType(chat))?.overridenTitle,
      );
    }

    if (mounted && context.mounted) setState(() {});
  }

  @override
  void didUpdateWidget(covariant ChatPreview oldWidget) {
    if (oldWidget.briefChatInfo != widget.briefChatInfo) {
      _loadInfo();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    _loadInfo();
  }

  @override
  Widget build(BuildContext context) {
    final info = this.info;
    return InkWell(
      borderRadius: BorderRadii.tilesRadius,
      onTap: () => GoRouter.of(context).push(
        "/chat?id=${widget.briefChatInfo.chatId}",
      ),
      splashColor: ColorStyles.active.onSurface.withOpacity(0.1),
      highlightColor: ColorStyles.active.onSurface.withOpacity(0.1),
      child: Ink(
        padding: EdgeInsets.all(10 * Scaling.factor),
        height: Sizes.tilesHeight,
        width: Sizes.tilesWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadii.tilesRadius,
          color: ColorStyles.active.surface,
        ),
        child: Row(
          children: [
            ProfileAvatar(
              chatId: widget.briefChatInfo.chatId,
              useTemplateInfoIfNeeded: widget.useTemplateInfoIfNeeded,
              key: ValueKey<String>("avatar_${widget.briefChatInfo.chatId}"),
            ),
            SizedBox(width: 7 * Scaling.factor),
            Expanded(
              key: ValueKey<String>("info_${widget.briefChatInfo.chatId}"),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: info == null
                    ? Container()
                    : Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  info.title,
                                  maxLines: 1,
                                  style: TextStyles.active.titleMedium,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                                RichText(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  text: (info.draft != null)
                                      ? TextSpan(
                                          children: [
                                            TextSpan(
                                              text: AppLocalizations
                                                  .current.draftPrefix,
                                              style: TextStyles
                                                  .active.bodyMedium!
                                                  .copyWith(
                                                color:
                                                    ColorStyles.active.onError,
                                              ),
                                            ),
                                            info.draft!,
                                          ],
                                        )
                                      : (info.lastMessage != null)
                                          ? info.lastMessage!
                                          : const TextSpan(),
                                ),
                              ],
                            ),
                          ),
                          if (info.unreadCount > 0 ||
                              info.unreadMentionCount > 0) ...[
                            SizedBox(width: 5 * Scaling.factor),
                            Center(
                              child: Container(
                                height: 21 * Scaling.factor,
                                width: 21 * Scaling.factor,
                                decoration: BoxDecoration(
                                  color: info.notifiable
                                      ? ColorStyles.active.primary
                                      : ColorStyles.active.onSurfaceVariant,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: info.unreadCount > 0
                                      ? Text(
                                          info.unreadCount > 99
                                              ? "99+"
                                              : info.unreadCount.toString(),
                                          style: (info.unreadCount > 99
                                                  ? TextStyles.active.labelSmall
                                                  : TextStyles
                                                      .active.labelMedium)!
                                              .copyWith(
                                            color: info.notifiable
                                                ? ColorStyles.active.onPrimary
                                                : ColorStyles.active.surface,
                                            fontWeight: FontWeight.w500,
                                            height: 1,
                                          ),
                                        )
                                      : info.unreadMentionCount > 0
                                          ? Icon(
                                              Icons.alternate_email,
                                              color: info.notifiable
                                                  ? ColorStyles.active.onPrimary
                                                  : ColorStyles.active.surface,
                                            )
                                          : null,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
