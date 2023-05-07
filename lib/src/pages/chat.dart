import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/message_tiles/wrapper.dart';
import 'package:mutex/mutex.dart';
import 'package:rotary_scrollbar/rotary_scrollbar.dart';

// TODO: fix jumps on new messages
class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  int chatId = 0;

  final ScrollController _scrCont = ScrollController();

  bool isChatLoaded = false;

  Mutex loadMutex = Mutex();
  bool loadStatus = true;

  Future<bool> _loadHistory(int offset, int count, [int? fromMsgId]) async {
    if (session.messages[chatId] == null) {
      await session.messages.tryToLoadChat(chatId);
    }

    var msgs = await session.functions.getChatHistory(
      chatId,
      fromMsgId ??
          session.chatsInfoCache.maybeGet(chatId)?.lastMessage?.id ??
          0,
      offset,
      count,
    );

    if (msgs != null) {
      setState(() {
        isChatLoaded = true;
        session.messages[chatId]!.insertAll(msgs);
      });
      Future.delayed(const Duration(seconds: 1)).then(
        (value) => loadStatus = false,
      );
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    chatId = widget.args["id"];
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) => _loadHistory(-10, 30),
    );
    _scrCont.addListener(
      () async {
        double pos =
            _scrCont.position.pixels / _scrCont.position.maxScrollExtent;
        if (pos < 0.8 || loadStatus) return;

        await loadMutex.acquire();
        if (loadStatus) {
          loadMutex.release();
          return;
        }
        try {
          loadStatus = await _loadHistory(
              0, 20, session.messages[chatId]!.messages.first.id);
        } finally {
          loadMutex.release();
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!isChatLoaded) {
      return const Scaffold(
        body: Center(
          child: SizedBox(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    final TgMessagesList msgs =
        ref.watch<TgMessagesList>(session.messages.getProvider(chatId)!);
    int prevSenderId = 0;
    DateTime prevTime = DateTime.now();
    final List<TgMessage> list = msgs.messages.reversed.toList();

    if (list.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.backspace,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Center(
                child: Text(
                  session.chatsInfoCache[chatId]?.title ?? chatId.toString(),
                ),
              ),
              const Center(
                child: Text(
                  "No messages, this is an error :/",
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: RotaryScrollWrapper(
        rotaryScrollbar: RotaryScrollbar(
          controller: _scrCont,
          width: 3,
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    shrinkWrap: true,
                    reverse: true,
                    controller: _scrCont,
                    clipBehavior: Clip.antiAlias,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      // Why don't we use ListView.builder - it doesn't load
                      // messages in their order, so small messsages are broken
                      ...list.map<Widget>((e) {
                        int senderId = e.senderId.getSenderId();
                        DateTime date = e.date;

                        var w = Center(
                          key: Key("message-${e.id}"),
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: prevTime.minute == date.minute &&
                                      prevSenderId == senderId
                                  ? 2
                                  : 10,
                            ),
                            child: MessageTile(
                              msg: e,
                              small: prevTime.minute == date.minute &&
                                  prevSenderId == senderId,
                            ),
                          ),
                        );
                        prevSenderId = senderId;
                        prevTime = date;
                        return w;
                      }).toList(),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                  SizedBox.expand(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        padding: const EdgeInsets.all(2),
                        icon: const Icon(
                          Icons.navigate_before,
                          shadows: [
                            Shadow(
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  SizedBox.expand(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: IconButton(
                        padding: const EdgeInsets.all(2),
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          shadows: [
                            Shadow(
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        color: Colors.white,
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Center(
                                child: Text("TODO"),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
