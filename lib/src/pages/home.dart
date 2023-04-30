import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/telegram/actions.dart';
import 'package:handygram/src/telegram/chats.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/telegram/users.dart';
import 'package:handygram/src/widgets/chat_image.dart';
import 'package:handygram/src/widgets/chat_tile.dart';
import 'package:rotary_scrollbar/rotary_scrollbar.dart';
import 'package:handygram/src/misc/tdlib_utils.dart' as tdlib;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<int, Widget> _tiles = {};
  final ScrollController _controller = ScrollController(
    initialScrollOffset: 100,
  );
  bool _expanded = false;

  List<String> getWritersList(List<int> rawWriters) {
    return rawWriters
        .map<String>(
          (id) => (session.usersInfoCache.maybeGet(id)?.firstName) ?? "Someone",
        )
        .toList();
  }

  void _buildTilesList(TgChatList list, TgChatActions acts) {
    _tiles.clear();
    for (var i in list.chats) {
      _tiles[i.id] = ChatTile(
        id: i.id,
        lastMsg: i.lastMessage,
        lastDraft: i.draftMessage?.inputMessageText.getText(),
        title: session.chatsInfoCache[i.id]?.title,
        writers: getWritersList(acts.getTypersList(i.id)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        TgChatList list = ref.watch(session.chatListsP[TgChatListType.main]!);
        ref.watch(session.chatsInfoCacheP);
        ref.watch(session.usersInfoCacheP);
        TgChatActions acts = ref.watch(session.chatActionsP);
        _buildTilesList(list, acts);

        return Scaffold(
          body: RotaryScrollWrapper(
            rotaryScrollbar: RotaryScrollbar(
              controller: _controller,
              width: 3,
            ),
            child: ListView(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              controller: _controller,
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: session.usersInfoCache.me != null
                                ? ChatImage(
                                    id: session.usersInfoCache.me!.id,
                                  )
                                : Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                          ),
                          Center(
                            child: Text(
                              session.usersInfoCache.me != null
                                  ? userToUsername(
                                      session.usersInfoCache.me!,
                                    )
                                  : "Loading...",
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => setState(() {
                        _expanded = !_expanded;
                      }),
                    ),
                    AnimatedSize(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      alignment: Alignment.centerLeft,
                      reverseDuration: const Duration(milliseconds: 50),
                      child: Container(
                        child: _expanded
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 15),
                                  IconButton(
                                    icon: const Icon(Icons.settings),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed("/settings");
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {
                                      exit(0);
                                    },
                                  ),
                                ],
                              )
                            : null,
                      ),
                    ),
                  ],
                ),
                ..._tiles.values,
                const SizedBox(height: 50),
              ],
            ),
          ),
        );
      },
    );
  }
}
