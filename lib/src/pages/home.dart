import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/actions.dart';
import 'package:handygram/src/telegram/chats.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/chat_tile.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';
import 'package:rotary_scrollbar/rotary_scrollbar.dart';
import 'package:handygram/src/misc/tdlib_utils.dart' as tdlib;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();

  List<String> getWritersList(List<int> rawWriters) => rawWriters
      .map<String>(
        (id) => (session.usersInfoCache.maybeGet(id)?.firstName) ?? "Someone",
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        TgChatList list = ref.watch(session.chatListsP[TgChatListType.main]!);
        TgChatActions acts = ref.watch(session.chatActionsP);
        var chatsInfo = ref.watch(session.chatsInfoCacheP);
        ref.watch(session.usersInfoCacheP);

        if (list.chats.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Please wait..."),
                if (!settingsStorage.isAsyncUpdates)
                  Text(
                    "Handling all missed events...\n"
                    "${session.updStats.handled}/${session.updStats.finalUpdate ?? session.updStats.total}"
                    "${session.updStats.finalUpdate == null ? "" : " (${(session.updStats.handled / session.updStats.finalUpdate! * 100).toStringAsFixed(1)}%)"}\n\n"
                    "This may take from\nsome seconds to minute.",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
              ],
            ),
          );
        }

        var lw = ListView.builder(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          controller: _controller,
          itemCount: list.chats.length + 3, // 2 paddings + settings button
          itemBuilder: (context, pi) {
            if (pi == 0 || pi == list.chats.length + 2) {
              return const SizedBox(height: 50);
            }
            if (pi == 1) {
              return PreSettingsButton(
                title: "Profile",
                icon: Icons.person,
                isCentered: true,
                onPressed: () {
                  Navigator.pushNamed(context, "/pre_settings");
                },
              );
            }
            int i = pi - 2;
            var c = list.chats[i];
            return ChatTile(
              id: c.id,
              lastMsg: c.lastMessage,
              lastDraft: c.draftMessage?.inputMessageText.getText(),
              title: chatsInfo[c.id]?.title,
              writers: getWritersList(acts.getTypersList(c.id)),
            );
          },
        );

        if (session.isSquareScreen) {
          return Scaffold(
            body: lw,
          );
        } else {
          return Scaffold(
            body: RotaryScrollWrapper(
              rotaryScrollbar: RotaryScrollbar(
                controller: _controller,
                width: 3,
              ),
              child: lw,
            ),
          );
        }
      },
    );
  }
}
