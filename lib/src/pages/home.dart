import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/chats.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/chat_tile.dart';
import 'package:handygram/src/widgets/rotary_wrapper.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';
import 'package:handygram/src/widgets/textbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildList(
      List<TgChatListEntry> chats, TgChatListType type, BuildContext context) {
    final ScrollController controller = ScrollController();

    return HandyRotaryScrollWrapper(
      controller: controller,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: type == TgChatListType.main
            ? chats.length + 4
            : chats.length + 2, // 2 paddings + settings button
        itemBuilder: (context, pi) {
          var pad = type == TgChatListType.main ? 3 : 1;
          if (pi == 0 || pi == chats.length + pad) {
            return const SizedBox(height: 50);
          }
          if (pi == 1 && type == TgChatListType.main) {
            return PreSettingsButton(
              title: "Profile",
              icon: Icons.person,
              isCentered: true,
              onPressed: () {
                Navigator.pushNamed(context, "/pre_settings");
              },
            );
          }
          if (pi == 2 && type == TgChatListType.main) {
            return Consumer(
              builder: (context, ref, _) {
                int umc = ref.watch(session.chatsInfoCacheP
                    .select((ci) => ci.unreadMentionCount));
                return umc > 0
                    ? Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: PrettyTextBox(
                          text: "$umc unread messages",
                        ),
                      )
                    : Container();
              },
            );
          }
          int i = pi - pad;
          var c = chats[i];
          return ChatTile(entry: c);
        },
      ),
    );
  }

  final int curList = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<_HomePageState>(),
      body: Consumer(
        builder: (context, ref, _) {
          var main = ref.watch(session.chatLists.mainP);
          if (main.chats.isEmpty ||
              (session.updStats.finalUpdate ?? 0) > session.updStats.handled) {
            var stats =
                ref.watch(ChangeNotifierProvider((_) => session.updStats));
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
                      "${stats.handled}/${stats.finalUpdate ?? stats.total}"
                      "${stats.finalUpdate == null ? "" : " (${(stats.handled / stats.finalUpdate! * 100).toStringAsFixed(1)}%)"}\n\n"
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

          return Stack(
            children: [
              SizedBox.expand(
                child: buildList(
                  main.chats,
                  main.type,
                  context,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
