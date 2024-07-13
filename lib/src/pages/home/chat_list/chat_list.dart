/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/chat_list.dart';
import 'package:handygram/src/components/list/listview.dart';
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
  List<Widget> _chats = [];

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

  void _onListUpdate([bool setStat = true]) {
    int i = 0;
    _chats = [
      for (final chat in widget.list.chats) ...[
        ChatPreview(
          briefChatInfo: chat,
          useTemplateInfoIfNeeded: true,
          key: ValueKey<String>("chat-preview_${chat.chatId}"),
        ),
        SizedBox(
          height: Paddings.betweenSimilarElements,
          key: ValueKey<String>("chat-padding-${i++}"),
        ),
      ]
    ];
    if (setStat) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    widget.list.addListener(_onListUpdate);
    _onListUpdate(false);
    _loadChats();
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    widget.list.removeListener(_onListUpdate);
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

    return AnimatedBuilder(
      animation: widget.list,
      builder: (context, _) => Scaffold(
        body: HandyListView(
          controller: _controller,
          children: [
            PageHeader(
              title: name,
              key: ValueKey<String>("chats-header_${widget.list}"),
            ),
            ..._chats,
          ],
        ),
      ),
    );
  }
}
