import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/exceptions/ui_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/scrollbar.dart';
import 'package:handygram/src/components/list/scrollwrapper.dart';
import 'package:handygram/src/components/overlays/notice/notice.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/pages/chat/bloc/bloc.dart';
import 'package:handygram/src/pages/chat/bloc/data.dart';
import 'package:handygram/src/pages/chat/view/widgets/focus_data.dart';
import 'package:handygram/src/pages/chat/view/widgets/loading_more.dart';
import 'package:handygram/src/pages/chat/view/widgets/message_focusable.dart';
import 'package:handygram/src/pages/chat/view/widgets/header.dart';
import 'package:mutex/mutex.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  static const String tag = "ChatView";

  StreamSubscription? _focusNewMessages, _focusMessages, _msgSubcription;
  final _scrollController = ScrollController();
  late final _scrollObserverController = ListObserverController(
    controller: _scrollController,
  );
  late final _chatObserver = ChatScrollObserver(_scrollObserverController)
    ..fixedPositionOffset = 5;

  final StreamController<ChatBlocMessageContentUpdated>
      _messageUpdatesController = StreamController.broadcast();
  late final Stream<ChatBlocMessageContentUpdated> _messageUpdates =
      _messageUpdatesController.stream;

  bool _initFinished = false;

  late ChatBloc bloc;

  List<ChatBlocContainer> _containers = [];
  final _errorsQueue = StreamController<String>();

  final _focusLock = Mutex();

  Stream<BaseNotice?> get _errors async* {
    await for (final error in _errorsQueue.stream) {
      yield StringNotice(error, color: ColorStyles.active.onError);
      await Future.delayed(const Duration(seconds: 5));
      yield null;
    }
  }

  void _focus(ChatBlocFocusData? data) async {
    if (data == null) return;

    final id = data.focusOnMessageId;
    l.i(tag, "Focus requested on $id");

    final index = _containers.indexWhere((e) => switch (e) {
          ChatBlocMessageId(id: final mid) => mid == id,
          _ => false,
        });
    if (index == -1) {
      l.e(tag, "Couldn't find message id $id");
      _errorsQueue.add(
        AppLocalizations.current.chatViewMessageNotFoundError(id),
      );
      if (data.mustFocusInstantly) {
        setState(() {
          _initFinished = true;
        });
      }
      return;
    }

    await _focusLock.protect(() async {
      if (data.mustFocusInstantly) {
        await _scrollObserverController.jumpTo(
          index: index + 1,
        );
        setState(() {
          _initFinished = true;
        });
      } else {
        await _scrollObserverController.animateTo(
          index: index + 1,
          duration: const Duration(milliseconds: 300),
          alignment: 0,
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _onBlocUpdate(final ChatBlocStreamedData update) {
    if (!mounted) {
      return _dispose();
    }

    switch (update) {
      case ChatBlocMessageContentUpdated():
        _messageUpdatesController.add(update);
      case ChatBlocMessagesListData():
        int delta = update.containers.length - _containers.length;
        delta += _containers.whereType<ChatBlocNoMoreMessages>().length;
        delta -= update.containers.whereType<ChatBlocNoMoreMessages>().length;

        _chatObserver.standby(
          changeCount: delta.abs(),
          isRemove: delta < 0,
        );

        setState(() {
          _containers = update.containers;
        });

        if (update.focusData != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _focus(update.focusData);
          });
        }
    }
  }

  void _dispose() async {
    await _focusMessages?.cancel();
    await _focusNewMessages?.cancel();
    await _msgSubcription?.cancel();
    bloc.dispose();
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    final focus = MessageFocusData.of(context)!;
    _focusNewMessages ??= focus.newFocusedMessages.listen((id) {
      if (!mounted) return;
      context.read<ChatBloc>().add(ChatBlocNewFocusedMessageEvent(id));
    });
    _focusMessages ??= focus.focusedMessages.listen((ids) {
      if (!mounted) return;
      context.read<ChatBloc>().add(ChatBlocCurrentlyFocusedMessagesEvent(ids));
    });
    bloc = context.read<ChatBloc>();
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<ChatBloc>().add(const ChatBlocReadyToShowEvent()),
    );
  }

  Widget _build(BuildContext context, Stream<ChatBlocStreamedData> stream) {
    _msgSubcription ??= stream.listen(_onBlocUpdate);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          HandyScrollbar(
            controller: _scrollController,
            child: HandyScrollWrapper(
              controller: _scrollController,
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Paddings.messageBubblesPadding,
                  ),
                  child: ListViewObserver(
                    controller: _scrollObserverController,
                    child: ListView.builder(
                      controller: _scrollController,
                      reverse: true,
                      physics: ChatObserverClampingScrollPhysics(
                        observer: _chatObserver,
                      ),
                      shrinkWrap: _chatObserver.isShrinkWrap,
                      itemCount: _containers.length + 1,
                      itemBuilder: (context, i) {
                        if (i == 0) {
                          return const ChatHeader();
                        }

                        i -= 1;
                        final container = _containers[i];
                        final bloc = context.read<ChatBloc>();

                        return switch (container) {
                          ChatBlocMessageId(id: final id) => Padding(
                              padding: EdgeInsets.only(
                                  bottom: Paddings.betweenSimilarElements),
                              key: ValueKey("msg-$id"),
                              child: FocusableMessageBubble(
                                chat: bloc.chat,
                                message: bloc.messagesData[id] ??
                                    (throw HandyUiException(
                                        tag, "No such message $id")),
                                updatesStream: _messageUpdates
                                    .where((e) => e.updatedMessage.id == id),
                              ),
                            ),
                          ChatBlocNoMoreMessages(older: final older) =>
                            Container(key: ValueKey("nomoremessages-$older")),
                          ChatBlocLoadMore(
                            fromMessageId: final id,
                            older: final older
                          ) =>
                            LoadMoreWidget(
                              data: container,
                              key: ValueKey("loadmore-from-$id-$older"),
                            ),
                        };
                      },
                    ),
                  )),
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            switchInCurve: Easing.standardDecelerate,
            switchOutCurve: Easing.standardDecelerate,
            child: _initFinished
                ? const IgnorePointer(
                    key: ValueKey<String>("chat_ip"),
                  )
                : _spinner,
          ),
        ],
      ),
    );
  }

  final _spinner = SizedBox.expand(
      child: Container(
    color: Colors.black,
    child: const Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: CircularProgressIndicator(
          key: ValueKey<String>(
            "pro_fortnait_babaji_caesgo_cybersport_120fps_4k_ultra_hd_spinner",
          ),
        ),
      ),
    ),
  ));

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ChatBloc>();
    return switch (bloc.state) {
      ChatBlocLoadingState() => Scaffold(
          body: _spinner,
        ),
      ChatBlocError(error: final errorData) => Scaffold(
          backgroundColor: ColorStyles.active.error,
          body: Center(
            child: Padding(
                padding:
                    EdgeInsets.all(Paddings.afterPageEndingWithSmallButton),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.error, color: ColorStyles.active.onError),
                    Text(
                      errorData,
                      style: TextStyles.active.titleLarge?.copyWith(
                        color: ColorStyles.active.onError,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ),
        ),
      ChatBlocReady(dataStream: final stream) => NoticeOverlay(
          noticeUpdates: _errors,
          child: _build(context, stream),
        ),
    };
  }
}
