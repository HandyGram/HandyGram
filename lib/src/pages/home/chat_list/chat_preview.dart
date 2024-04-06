import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/content.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/input.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/brief_chat_info.dart';
import 'package:handygram/src/components/icons/avatar.dart';

const int _kAuthorNameLength = 5;

class _ChatInfo {
  final InlineSpan? draft;
  final InlineSpan? lastMessage;
  final String title;
  final bool notifiable;
  final int unreadCount;
  final int unreadMentionCount;

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
    required this.briefChatInfo,
  });

  final BriefChatInfo briefChatInfo;

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

    return _ChatInfo(
      draft: await chat.draftMessage?.inputMessageText.getPreview(
        color: ColorStyles.active.secondary,
      ),
      lastMessage: await chat.lastMessage?.content.getPreview(
        color: ColorStyles.active.secondary,
        authorColor: ColorStyles.active.onSurface,
        author: noAuthor ? null : author,
      ),
      title: chat.title,
      notifiable: false,
      unreadCount: chat.unreadCount,
      unreadMentionCount: chat.unreadMentionCount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(31),
      onTap: () => GoRouter.of(context).push(
        "/chat?id=${briefChatInfo.chatId}",
      ),
      splashColor: ColorStyles.active.onSurface.withOpacity(0.1),
      highlightColor: ColorStyles.active.onSurface.withOpacity(0.1),
      child: Ink(
        padding: const EdgeInsets.all(10),
        height: 61.5,
        width: MediaQuery.of(context).size.width * 0.89,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31),
          color: ColorStyles.active.surface,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 38,
              width: 38,
              child: ProfileAvatar(
                chatId: briefChatInfo.chatId,
                key: ValueKey<String>("avatar_${briefChatInfo.chatId}"),
              ),
            ),
            const SizedBox(width: 7),
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
                          const SizedBox(width: 5),
                          Center(
                            child: Container(
                              height: 21,
                              width: 21,
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
