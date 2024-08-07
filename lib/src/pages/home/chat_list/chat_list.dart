/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/chat_list.dart';
import 'package:handygram/src/components/list/scrollbar.dart';
import 'package:handygram/src/components/list/scrollwrapper.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/home/chat_list/chat_preview.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({
    super.key,
    required this.list,
  });

  final ChatList list;

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage>
    with AutomaticKeepAliveClientMixin<ChatListPage> {
  final ScrollController _controller = ScrollController();
  bool noMoreChats = false, loading = false;

  // chat previews are flashing on switching pages if not keeping alive them
  @override
  final bool wantKeepAlive = true;

  Future<void> _loadChats() async {
    if (noMoreChats) return;
    try {
      await CurrentAccount.providers.chatLists.requestLoadingMoreChats(
        list: widget.list.chatList,
      );
    } on TdlibCoreException {
      noMoreChats = true;
    }
  }

  void _onScroll() async {
    if (_controller.offset / _controller.position.maxScrollExtent > 0.7 &&
        !loading &&
        !noMoreChats) {
      loading = true;
      try {
        await _loadChats();
      } finally {
        loading = false;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    widget.list.addListener(() => setState(() {}));
    _loadChats();
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    widget.list.removeListener(() => setState(() {}));
    super.dispose();
  }

  String get name => switch (widget.list.chatList) {
        td.ChatListMain() => AppLocalizations.current.chatListHeaderMain,
        td.ChatListArchive() => AppLocalizations.current.chatListHeaderArchive,
        td.ChatListFolder() => widget.list.folderInfo?.title ??
            AppLocalizations.current.chatListHeaderFolder,
      };

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ValueListenableBuilder(
      valueListenable: widget.list,
      builder: (context, value, _) => Scaffold(
        body: HandyScrollWrapper(
          controller: _controller,
          child: HandyScrollbar(
            controller: _controller,
            child: ListView.builder(
              controller: _controller,
              key: ValueKey<String>("chats-screen $name"),
              addAutomaticKeepAlives: true,
              padding: EdgeInsets.symmetric(
                horizontal: Paddings.tilesHorizontalPadding,
              ),
              itemCount: max(3, value.length + 2),
              itemBuilder: (context, index) {
                if (index == 0) {
                  return PageHeader(
                    title: name,
                    key: ValueKey<String>("chats-header_${widget.list}"),
                  );
                } else if (index == 1 && value.isEmpty) {
                  return Center(
                    child: Text(
                      AppLocalizations.current.folderIsEmpty,
                    ),
                  );
                } else if (index == value.length + 1) {
                  return SizedBox(height: Paddings.afterPage);
                }
                index -= 1;

                final chat = value[index];
                return Padding(
                  key: ValueKey<String>("chat,$name,preview_${chat.chatId}"),
                  padding: EdgeInsets.only(
                    bottom: Paddings.betweenSimilarElements,
                  ),
                  child: ChatPreview(
                    briefChatInfo: chat,
                    useTemplateInfoIfNeeded: true,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
