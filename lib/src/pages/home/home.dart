/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/chat_list.dart';
import 'package:handygram/src/components/list/page_indicator.dart';
import 'package:handygram/src/pages/home/chat_list/chat_list.dart';
import 'package:handygram/src/components/overlays/network_status.dart';
import 'package:handygram/src/pages/home/settings/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 1;
  List<Widget> _children = [];

  void __updateChats() {
    final lists = CurrentAccount.providers.chatLists;
    _children = [
      const SettingsMain(
        key: ValueKey<String>("settings_main"),
      ),
      ChatListPage(
        list: lists.chatListMain,
        key: ValueKey<ChatList>(lists.chatListMain),
      ),
      ...lists.chatListsFolders.map(
        (list) => ChatListPage(
          list: list,
          key: ValueKey<ChatList>(list),
        ),
      ),
    ];
  }

  void _updateChats() => setState(__updateChats);

  @override
  void initState() {
    super.initState();
    __updateChats();
    CurrentAccount.providers.chatLists.addListener(_updateChats);
  }

  @override
  void dispose() {
    CurrentAccount.providers.chatLists.removeListener(_updateChats);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NetworkStatusOverlay(
      child: PageIndicator(
        pageCount: _children.length,
        currentPage: currentPage,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          controller: PageController(initialPage: 1),
          onPageChanged: (page) => setState(() => currentPage = page),
          children: _children,
        ),
      ),
    );
  }
}
