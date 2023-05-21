import 'package:flutter/material.dart';
import 'package:handygram/src/misc/color.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/chats.dart';
import 'package:handygram/src/telegram/session.dart';
import 'chat_image.dart';
import 'package:handygram/src/telegram/users.dart';
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

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.id,
    this.title,
    this.image,
    this.lastMsg,
    this.lastDraft,
    this.unreadCount,
    this.online,
    this.writers,
  });

  final int id;
  final String? title;
  final Widget? image;
  final tdlib.Message? lastMsg;
  final String? lastDraft;
  final int? unreadCount;
  final bool? online;
  final List<String>? writers;

  @override
  Widget build(BuildContext context) {
    String userType = _getChatTileType(id);
    bool isRegularUser = userType == "user" && id != 777000;
    tdlib.Message? lastMessage = lastMsg;
    if (session.chatsInfoCache[id]?.lastMessage != null &&
        lastMessage == null) {
      lastMessage = session.chatsInfoCache[id]?.lastMessage;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed("/chat", arguments: {
            "id": id,
            "title": title,
            "image": image,
            "lastMessage": lastMessage,
            "lastDraft": lastDraft,
            "unreadCount": unreadCount,
            "online": online,
            "writers": writers,
            "type": userType,
          });
        },
        child: Row(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ChatImage(
                    key: ValueKey<int>(id),
                    id: id,
                    isUser: false,
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  child: (isRegularUser &&
                          session.usersInfoCache[id]?.status
                              is tdlib.UserStatusOnline)
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
                                      : id == 777000
                                          ? Icons.security
                                          : Icons.delete,
                          size: 12,
                        ),
                      if (!isRegularUser) const SizedBox(width: 3),
                      Expanded(
                        child: Text(
                          title ?? "? ($id)",
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
                  if (writers == null || writers!.isEmpty) ...[
                    if (lastMessage != null &&
                        lastDraft == null &&
                        session.chatsInfoCache[id]?.type
                            is! tdlib.ChatTypePrivate &&
                        lastMessage.senderId.getSenderId() != id)
                      Flexible(
                        child: Text(
                          session.usersInfoCache[
                                      lastMessage.senderId.getSenderId()] ==
                                  null
                              ? session.chatsInfoCache[
                                          lastMessage.senderId.getSenderId()] ==
                                      null
                                  ? lastMessage.senderId
                                      .getSenderId()
                                      .toString()
                                  : session
                                      .chatsInfoCache[
                                          lastMessage.senderId.getSenderId()]!
                                      .title
                              : userToUsername(session.usersInfoCache[
                                  lastMessage.senderId.getSenderId()]!),
                          style: TextStyle(
                            fontSize: scaleText(8),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (lastMessage != null && lastDraft == null)
                      Flexible(
                        child: Text(
                          messageContentToString(lastMessage.content),
                          style: TextStyle(
                            fontSize: scaleText(10),
                            color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (lastDraft != null)
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
                    if (lastDraft != null)
                      Flexible(
                        child: Text(
                          lastDraft ?? "Unknown",
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
                          _writersToString(writers!),
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
                        "${writers!.length == 1 ? "is" : "are"} typing...",
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
              child: ((session.chatsInfoCache[id]?.unreadCount ?? 0) > 0)
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            ((session.chatsInfoCache[id]?.unreadMentionCount ??
                                            0) >
                                        0 ||
                                    isRegularUser)
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
                          session.chatsInfoCache[id]?.unreadCount.toString() ??
                              "",
                          key: ValueKey<String>(session
                                  .chatsInfoCache[id]?.unreadCount
                                  .toString() ??
                              ""),
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
