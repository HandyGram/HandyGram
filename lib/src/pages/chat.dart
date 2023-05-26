import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
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

  bool _loadingHistory = true;

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
  void dispose() {
    session.functions.closeChat(chatId);
    super.dispose();
  }

  @override
  void initState() {
    chatId = widget.args["id"];
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await _loadHistory(-10, 30);
        await _loadHistory(0, 20);
        setState(() {
          _loadingHistory = false;
        });
      },
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
        setState(() {
          _loadingHistory = true;
        });
        try {
          loadStatus = await _loadHistory(
            0,
            20,
            session.messages[chatId]!.messages.first.idServer,
          );
        } finally {
          loadMutex.release();
          setState(() {
            _loadingHistory = false;
          });
        }
      },
    );
    session.functions.openChat(chatId);
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
                      if (!session.isSquareScreen)
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
                      if (_loadingHistory || list.isEmpty) ...[
                        const SizedBox(
                          height: 10,
                        ),
                        const Center(
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ],
                      if (!session.isSquareScreen)
                        const SizedBox(
                          height: 100,
                        ),
                    ],
                  ),
                  if (!settingsStorage.backButtonDisabled)
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
                          Navigator.of(context).pushNamed(
                            "/chat_menu",
                            arguments: widget.args,
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
