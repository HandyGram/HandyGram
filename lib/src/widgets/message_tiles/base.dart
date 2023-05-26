import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/widgets/chat_image.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/widgets/message_tiles/reaction_chip.dart';
import 'package:visibility_detector/visibility_detector.dart';

Size downscaleProperly(Size contentSize, Size screenSize, double factor) {
  if (contentSize.width > contentSize.height) {
    // Horizontal (width as base, height is scaled)
    double scaledWidth = screenSize.width / factor;
    double heightScaling = contentSize.width / contentSize.height;
    return Size(
      scaledWidth,
      scaledWidth / heightScaling,
    );
  } else if (contentSize.width < contentSize.height) {
    // Vertical (height as base, width is scaled)
    double scaledHeight = screenSize.height / factor;
    double widthScaling =
        contentSize.width / contentSize.height; // should be < 1
    return Size(
      scaledHeight * widthScaling,
      scaledHeight,
    );
  } else {
    // Square (width == height)
    double scaled = screenSize.height / factor;
    return Size(
      scaled,
      scaled,
    );
  }
}

class _ReplyMessagePreview extends StatefulWidget {
  const _ReplyMessagePreview({
    super.key,
    required this.chatId,
    required this.id,
  });

  final int chatId;
  final int id;

  @override
  State<_ReplyMessagePreview> createState() => _ReplyMessagePreviewState();
}

class _ReplyMessagePreviewState extends State<_ReplyMessagePreview> {
  TgMessage? msg;
  String? title, content;
  bool noReplyMsg = false;

  final Color someoneTextColor = Color.alphaBlend(
    Colors.white.withOpacity(0.8),
    Colors.black,
  );

  void getMessageProperties() async {
    msg = session.messages[widget.chatId]?[widget.id];
    msg ??= await session.functions.getMessage(widget.chatId, widget.id);
    if (msg == null) {
      setState(() => noReplyMsg = true);
      return;
    }

    if (msg!.senderId is tdlib.MessageSenderUser) {
      title = (await session.usersInfoCache.get(msg!.senderId.getSenderId()))
          ?.firstName;
    } else {
      title = (await session.chatsInfoCache.get(msg!.senderId.getSenderId()))
          ?.title;
    }
    title ??= "Unknown user";
    if (title!.length > 17) {
      title = "${title!.substring(0, 16)}...";
    }

    content = msg.toString();
    if (content!.length > 47) {
      content = "${content!.substring(0, 46)}...";
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getMessageProperties();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (noReplyMsg) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.reply,
            size: 10,
            color: someoneTextColor,
          ),
          Text(
            "Deleted message",
            style: TextStyle(
              fontSize: scaleText(8),
              color: someoneTextColor,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.reply,
          size: 10,
          color: someoneTextColor,
        ),
        msg == null
            ? Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                      width: 16,
                      child: Center(
                        child: SizedBox(
                          height: 8,
                          width: 8,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: someoneTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? "Unknown user",
                      style: TextStyle(
                        fontSize: scaleText(8),
                        color: someoneTextColor,
                        fontStyle: FontStyle.italic,
                      ),
                      maxLines: 1,
                    ),
                    Text(
                      content ?? "Failed to load message",
                      style: TextStyle(
                        fontSize: scaleText(8),
                        color: someoneTextColor,
                        fontStyle: FontStyle.italic,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}

class MessageBaseTile extends ConsumerWidget {
  MessageBaseTile({
    Key? key,
    required this.msg,
    this.child,
    required this.small,
  }) : super(key: key);

  final TgMessage msg;
  final Widget? child;
  final bool small;

  final Color myMessageColor = Colors.lightBlue.shade900;
  final Color myTextColor = Color.alphaBlend(
    Colors.white.withOpacity(0.8),
    Colors.black,
  );

  final someoneMessageColor = Colors.grey.shade800;
  final Color someoneTextColor = Color.alphaBlend(
    Colors.white.withOpacity(0.8),
    Colors.black,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? ptitle;
    switch (msg.senderId) {
      case tdlib.MessageSenderChat(chatId: var cid):
        ptitle = ref.watch(session.chatsInfoCacheP.select(
          (c) => c[cid]?.title,
        ));
        break;
      case tdlib.MessageSenderUser(userId: var uid):
        ptitle = ref.watch(session.usersInfoCacheP.select(
          (c) => c[uid]?.firstName,
        ));
        break;
    }

    var title = ptitle ?? "Unnamed";
    if (title.length > 15) {
      title = "${title.substring(0, 15)}...";
    }

    bool isFakeMessage = isInternalMessageId(msg.id);

    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (vi) {
        if (vi.visibleFraction > 0.5 && !isFakeMessage) {
          session.functions.viewMessages(msg.chatId, [msg.id]);
        }
      },
      child: GestureDetector(
        onLongPress: () {
          if (!isFakeMessage) {
            Navigator.pushNamed(
              context,
              "/message_menu",
              arguments: {
                "message": msg,
              },
            );
          }
        },
        child: Row(
          key: ValueKey<int>(msg.id),
          mainAxisAlignment:
              msg.isOutgoing ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (!msg.isOutgoing) const SizedBox(width: 15),
            if (!msg.isOutgoing && !small && !settingsStorage.noProfilePhotos)
              SizedBox(
                height: 25,
                width: 25,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/informator",
                      arguments: {
                        "sender": msg.senderId,
                      },
                    );
                  },
                  child: ChatImage(
                    key: ValueKey<int>(
                      msg.senderId.getSenderId(),
                    ),
                    id: msg.senderId.getSenderId(),
                    messageSender: msg.senderId,
                  ),
                ),
              )
            else if ((msg.isOutgoing || small) &&
                !settingsStorage.noProfilePhotos)
              const SizedBox(
                height: 25,
                width: 25,
              ),
            const SizedBox(width: 10),
            Flexible(
              child: Container(
                padding: msg.type == TgMessageType.sticker
                    ? null
                    : const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: msg.type == TgMessageType.sticker
                      ? null
                      : isFakeMessage
                          ? Theme.of(context).colorScheme.background
                          : !msg.isOutgoing
                              ? someoneMessageColor
                              : myMessageColor,
                  borderRadius: msg.type == TgMessageType.sticker
                      ? null
                      : BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: msg.isOutgoing
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    if (msg.replyToMessageId != 0)
                      _ReplyMessagePreview(
                        id: msg.replyToMessageId,
                        chatId: msg.replyInChatId != 0
                            ? msg.replyInChatId
                            : msg.chatId,
                        key: ValueKey<int>(
                          msg.replyToMessageId,
                        ),
                      ),
                    child ??
                        Text(
                          msg.toString(),
                          style: TextStyle(
                            fontSize: scaleText(12),
                          ),
                        ),
                    if (child != null &&
                        (!small || msg.interactionInfo != null))
                      const SizedBox(
                        height: 1,
                      ),
                    if (msg.interactionInfo?.reactions.isNotEmpty ?? false)
                      LayoutBuilder(builder: (ctx, constraints) {
                        var r = msg.interactionInfo!.reactions;
                        return SizedBox(
                          width: constraints.maxWidth,
                          height: 30,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            reverse: !msg.isOutgoing,
                            itemCount: r.length * 2,
                            shrinkWrap: true,
                            itemBuilder: (context, i) {
                              if (i % 2 == (msg.isOutgoing ? 1 : 0)) {
                                return const SizedBox(width: 5);
                              }

                              return ReactionChip(
                                chatId: msg.chatId,
                                messageId: msg.id,
                                reaction: r[i ~/ 2],
                              );
                            },
                          ),
                        );
                      }),
                    const SizedBox(height: 1),
                    if (!small)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              isFakeMessage
                                  ? "Sending..."
                                  : !msg.isOutgoing
                                      ? "$title, ${msg.date.hour.toString().padLeft(2, '0')}:${msg.date.minute.toString().padLeft(2, '0')}"
                                      : "${msg.date.hour.toString().padLeft(2, '0')}:${msg.date.minute.toString().padLeft(2, '0')}",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: scaleText(10),
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: msg.isOutgoing
                                  ? TextAlign.right
                                  : TextAlign.left,
                            ),
                          ),
                          if (msg.isOutgoing && !isFakeMessage)
                            const SizedBox(width: 5),
                          if (msg.isOutgoing && !isFakeMessage)
                            (session.chatsInfoCache[msg.chatId]
                                            ?.lastReadOutboxMessageId ??
                                        0) >=
                                    msg.id
                                ? const Icon(
                                    Icons.done_all,
                                    size: 10,
                                    color: Colors.grey,
                                  )
                                : const Icon(
                                    Icons.done,
                                    size: 10,
                                    color: Colors.grey,
                                  )
                        ],
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            if (msg.isOutgoing && !small && !settingsStorage.noProfilePhotos)
              SizedBox(
                height: 25,
                width: 25,
                child: ChatImage(
                  key: ValueKey<int>(
                    msg.senderId.getSenderId(),
                  ),
                  id: msg.senderId.getSenderId(),
                  messageSender: msg.senderId,
                ),
              )
            else if ((!msg.isOutgoing || small) &&
                !settingsStorage.noProfilePhotos)
              const SizedBox(
                height: 25,
                width: 25,
              ),
            if (msg.isOutgoing) const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
