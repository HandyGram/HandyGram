/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/content.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/input.dart';
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

class ChatPreview extends StatelessWidget {
  const ChatPreview({
    super.key,
    this.useTemplateInfoIfNeeded = false,
    required this.briefChatInfo,
  });

  final bool useTemplateInfoIfNeeded;
  final BriefChatInfo briefChatInfo;

  Future<_ChatInfo> _correctInfo(_ChatInfo info, td.Chat chat) async {
    final me = await CurrentAccount.providers.users.getMe();
    final isMe = switch (chat.type) {
      td.ChatTypePrivate(userId: final uid) => me.id == uid,
      _ => false,
    };
    final repliesBotId =
        await CurrentAccount.providers.options.get("replies_bot_chat_id");

    String? title;
    if (isMe) {
      title = AppLocalizations.current.templateTitleSavedMessages;
    } else if (briefChatInfo.chatId == repliesBotId) {
      title = AppLocalizations.current.templateTitleRepliesBot;
    }
    return info.copyWith(
      title: title,
    );
  }

  Future<_ChatInfo> _loadInfo() async {
    final chat = await CurrentAccount.providers.chats.getChat(
      briefChatInfo.chatId,
    );

    final noAuthor = chat.type is td.ChatTypePrivate ||
        chat.type is td.ChatTypeSecret ||
        (chat.type is td.ChatTypeSupergroup &&
            (chat.type as td.ChatTypeSupergroup).isChannel);

    String? author = switch (chat.lastMessage?.senderId) {
      td.MessageSenderUser(userId: final userId) =>
        (await CurrentAccount.providers.users.getUser(userId)).firstName,
      td.MessageSenderChat(chatId: final chatId) =>
        (await CurrentAccount.providers.chats.getChat(chatId)).title,
      null => null,
    };

    final isMe = switch (chat.lastMessage?.senderId) {
      td.MessageSenderUser(userId: final userId) =>
        (await CurrentAccount.providers.users.getMe()).id == userId,
      _ => false,
    };
    if (isMe) author = AppLocalizations.current.you;

    if (author != null) {
      author = author.substring(
          0, min(_kAuthorNameLength + 1, author.characters.length));
      if (author.runes.length == _kAuthorNameLength + 1) {
        author = "${author.substring(0, _kAuthorNameLength)}…";
      }
    }

    final settings = await CurrentAccount.providers.scopeNotificationSettings
        .getForChat(chatObj: chat);

    var ci = _ChatInfo(
      draft: await chat.draftMessage?.inputMessageText.getPreview(
        color: ColorStyles.active.secondary,
      ),
      lastMessage: await chat.lastMessage?.content.getPreview(
        color: ColorStyles.active.secondary,
        authorColor: ColorStyles.active.onSurface,
        author: noAuthor ? null : author,
      ),
      title: chat.title,
      notifiable: settings.muteFor <= 0 || chat.unreadMentionCount > 0,
      unreadCount: chat.unreadCount,
      unreadMentionCount: chat.unreadMentionCount,
    );
    if (useTemplateInfoIfNeeded) ci = await _correctInfo(ci, chat);
    return ci;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadii.tilesRadius,
      onTap: () => GoRouter.of(context).push(
        "/chat?id=${briefChatInfo.chatId}",
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
            SizedBox(
              height: 38 * Scaling.factor,
              width: 38 * Scaling.factor,
              child: ProfileAvatar(
                chatId: briefChatInfo.chatId,
                useTemplateInfoIfNeeded: useTemplateInfoIfNeeded,
                key: ValueKey<String>("avatar_${briefChatInfo.chatId}"),
              ),
            ),
            SizedBox(width: 7 * Scaling.factor),
            Expanded(
              key: ValueKey<String>("info_${briefChatInfo.chatId}"),
              child: FutureBuilder<_ChatInfo>(
                future: _loadInfo(),
                builder: (context, snapshot) {
                  late Widget child;
                  if (!snapshot.hasData || snapshot.data == null) {
                    child = Text(
                      snapshot.hasError
                          ? AppLocalizations.of(context).error
                          : "",
                      style: TextStyles.active.bodyMedium,
                    );
                  } else {
                    child = Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                snapshot.data!.title,
                                maxLines: 1,
                                style: TextStyles.active.titleMedium,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                              ),
                              RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: (snapshot.data?.draft != null)
                                    ? TextSpan(
                                        children: [
                                          TextSpan(
                                            text: AppLocalizations
                                                .current.draftPrefix,
                                            style: TextStyles.active.bodyMedium!
                                                .copyWith(
                                              color: ColorStyles.active.onError,
                                            ),
                                          ),
                                          snapshot.data!.draft!,
                                        ],
                                      )
                                    : (snapshot.data?.lastMessage != null)
                                        ? snapshot.data!.lastMessage!
                                        : const TextSpan(),
                              ),
                            ],
                          ),
                        ),
                        if (snapshot.data!.unreadCount > 0 ||
                            snapshot.data!.unreadMentionCount > 0) ...[
                          SizedBox(width: 5 * Scaling.factor),
                          Center(
                            child: Container(
                              height: 21 * Scaling.factor,
                              width: 21 * Scaling.factor,
                              decoration: BoxDecoration(
                                color: snapshot.data!.notifiable
                                    ? ColorStyles.active.primary
                                    : ColorStyles.active.onSurfaceVariant,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: snapshot.data!.unreadCount > 0
                                    ? Text(
                                        snapshot.data!.unreadCount > 99
                                            ? "99+"
                                            : snapshot.data!.unreadCount
                                                .toString(),
                                        style: (snapshot.data!.unreadCount > 99
                                                ? TextStyles.active.labelSmall
                                                : TextStyles
                                                    .active.labelMedium)!
                                            .copyWith(
                                          color: snapshot.data!.notifiable
                                              ? ColorStyles.active.onPrimary
                                              : ColorStyles.active.surface,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                        ),
                                      )
                                    : snapshot.data!.unreadMentionCount > 0
                                        ? Icon(
                                            Icons.alternate_email,
                                            color: snapshot.data!.notifiable
                                                ? ColorStyles.active.onPrimary
                                                : ColorStyles.active.surface,
                                          )
                                        : null,
                              ),
                            ),
                          ),
                        ],
                      ],
                    );
                  }
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: child,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
