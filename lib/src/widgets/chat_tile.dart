import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/color.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/chats.dart';
import 'package:handygram/src/telegram/session.dart';
import 'chat_image.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

// returns user, bot, deleted_user, unknown_user, channel, group
String _getChatTileType(int id) => switch (session.chatsInfoCache[id]?.type) {
      tdlib.ChatTypePrivate() => switch (session.usersInfoCache[id]?.type) {
          tdlib.UserTypeBot() => "bot",
          tdlib.UserTypeDeleted() => "deleted_user",
          tdlib.UserTypeUnknown() => "unknown_user",
          _ => "user",
        },
      tdlib.ChatTypeSupergroup(isChannel: var isChannel) =>
        isChannel ? "channel" : "group",
      tdlib.ChatTypeSecret() => "user",
      tdlib.ChatTypeBasicGroup() => "group",
      _ => "group",
    };

String _writersToString(List<String> writers) {
  if (writers.length == 1) {
    return writers[0];
  } else {
    return "${writers[0]} and ${writers.length - 1} more";
  }
}

class ChatTile extends ConsumerWidget {
  const ChatTile({
    super.key,
    required this.entry,
  });

  final TgChatListEntry entry;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String userType = _getChatTileType(entry.id);
    bool isRegularUser = userType == "user" && entry.id != 777000;

    // i wanna kill myself
    var lastMsg = ref.watch(
      session.chatsInfoCacheP.select((c) => c[entry.id]?.lastMessage),
    );
    var draftMsg = ref.watch(
      session.chatsInfoCacheP.select((c) => c[entry.id]?.draftMessage),
    );
    var title = ref.watch(
      session.chatsInfoCacheP.select((c) => c[entry.id]?.title),
    );
    var type = ref.watch(
      session.chatsInfoCacheP.select((c) => c[entry.id]?.type),
    );
    var status = ref.watch(
      session.usersInfoCacheP.select((c) => c[entry.id]?.status),
    );
    var writers = ref.watch(
      session.chatActionsP.select((a) => a.getTypersList(entry.id)),
    );
    var unreadCount = ref.watch(
      session.chatsInfoCacheP.select((c) => c[entry.id]?.unreadCount),
    );
    var unreadMentionCount = ref.watch(
      session.chatsInfoCacheP.select((c) => c[entry.id]?.unreadMentionCount),
    );
    String? lastMsgSender;
    if (lastMsg != null) {
      switch (lastMsg.senderId) {
        case tdlib.MessageSenderChat(chatId: var cid):
          lastMsgSender = ref.watch(
            session.chatsInfoCacheP.select((c) => c[cid]?.title),
          );
          break;
        case tdlib.MessageSenderUser(userId: var uid):
          lastMsgSender = ref.watch(
            session.usersInfoCacheP.select((c) => c[uid]?.firstName),
          );
          break;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            "/chat",
            arguments: {"id": entry.id},
          );
        },
        child: Row(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ChatImage(
                    key: ValueKey<int>(entry.id),
                    id: type is tdlib.ChatTypePrivate ? type.userId : entry.id,
                    isUser: type is tdlib.ChatTypePrivate,
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  child: (isRegularUser && status is tdlib.UserStatusOnline)
                      ? SizedBox(
                          height: 40,
                          width: 40,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              width: 13,
                              height: 13,
                              child: Center(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ),
                          ),
                        )
                      : null,
                ),
              ],
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      if (!isRegularUser)
                        Icon(
                          userType == "bot"
                              ? Icons.smart_toy
                              : userType == "group"
                                  ? Icons.group
                                  : userType == "channel"
                                      ? Icons.star
                                      : entry.id == 777000
                                          ? Icons.security
                                          : Icons.delete,
                          size: 12,
                        ),
                      if (!isRegularUser) const SizedBox(width: 3),
                      Expanded(
                        child: Text(
                          title ?? "? (${entry.id})",
                          style: TextStyle(
                            fontSize: scaleText(11),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  if (writers.isEmpty) ...[
                    if (lastMsg != null &&
                        draftMsg == null &&
                        type is! tdlib.ChatTypePrivate &&
                        lastMsg.senderId.getSenderId() != entry.id)
                      Flexible(
                        child: Text(
                          lastMsgSender ?? "Loading...",
                          style: TextStyle(
                            fontSize: scaleText(8),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (lastMsg != null && draftMsg == null)
                      Flexible(
                        child: Text(
                          messageContentToString(lastMsg.content),
                          style: TextStyle(
                            fontSize: scaleText(10),
                            color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (draftMsg != null)
                      Flexible(
                        child: Text(
                          "Draft",
                          style: TextStyle(
                            fontSize: scaleText(8),
                            color: Colors.red,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (draftMsg != null)
                      Flexible(
                        child: Text(
                          draftMsg.inputMessageText.getText() ?? "Unknown",
                          style: TextStyle(
                            fontSize: scaleText(10),
                            color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ] else ...[
                    if (!isRegularUser)
                      Flexible(
                        child: Text(
                          _writersToString(writers.map<String>((e) {
                            return ref.watch(
                                  session.usersInfoCacheP
                                      .select((c) => c[e]?.firstName),
                                ) ??
                                "Someone";
                          }).toList()),
                          style: TextStyle(
                            fontSize: scaleText(8),
                            color: Colors.blue,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    Flexible(
                      child: Text(
                        "${writers.length == 1 ? "is" : "are"} typing...",
                        style: TextStyle(
                          fontSize: scaleText(10),
                          color: Colors.blue,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ]
                ],
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(
                milliseconds: 250,
              ),
              child: ((unreadCount ?? 0) > 0)
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ((unreadMentionCount ?? 0) > 0 || isRegularUser)
                            ? Colors.blue
                            : HColor.blend(Colors.white.withOpacity(0.3)),
                      ),
                      padding: const EdgeInsets.all(3),
                      child: AnimatedSwitcher(
                        duration: const Duration(
                          milliseconds: 200,
                        ),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(0.0, -0.5),
                                    end: const Offset(0.0, 0.0))
                                .animate(animation),
                            child: FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          );
                        },
                        child: Text(
                          unreadCount?.toString() ?? "",
                          key: ValueKey<String>(unreadCount?.toString() ?? ""),
                          style: TextStyle(
                            fontSize: scaleText(8),
                          ),
                        ),
                      ))
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
