/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/client/management/multi_manager.dart';
import 'package:handygram/src/components/list/page_indicator.dart';
import 'package:handygram/src/pages/home/chat_list/chat_list.dart';
import 'package:handygram/src/components/overlays/network_status.dart';
import 'package:handygram/src/pages/home/settings/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    this.openChatId,
    this.openUserId,
  });

  final int? openChatId;
  final int? openUserId;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 1;
  final _controller = PageController(initialPage: 1);

  void _updateChats() => setState(() {});

  @override
  void initState() {
    super.initState();
    CurrentAccount.providers.chatLists.addListener(_updateChats);
    if (widget.openChatId != null && widget.openUserId != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final clientId =
            TdlibMultiManager.instance.fromUserId(widget.openUserId!)!.clientId;
        if (CurrentAccount.currentClientId != clientId) {
          CurrentAccount.instance.clientId = clientId;
          Settings().put(
            SettingsEntries.lastDatabaseId,
            TdlibMultiManager.instance.fromClientId(clientId)!.databaseId,
          );
        }

        GoRouter.of(context).push("/chat?id=${widget.openChatId}");
      });
    }
  }

  @override
  void dispose() {
    CurrentAccount.providers.chatLists.removeListener(_updateChats);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lists = CurrentAccount.providers.chatLists;
    final pageCount = lists.chatListsFolders.length + 2;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        SystemNavigator.pop();
      },
      child: NetworkStatusOverlay(
        child: PageIndicator(
          pageCount: pageCount,
          currentPage: currentPage,
          child: PageView.builder(
              key: const ValueKey<String>("home,pv"),
              physics: const BouncingScrollPhysics(),
              controller: _controller,
              onPageChanged: (page) => setState(() => currentPage = page),
              itemCount: pageCount,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return const SettingsMain(
                    key: ValueKey<String>("home,settings"),
                  );
                } else if (i == 1) {
                  return ChatListPage(
                    list: lists.chatListMain,
                    key: const ValueKey<String>("cl,main"),
                  );
                }

                i -= 2;

                final folder = lists.chatListsFolders[i];
                return ChatListPage(
                  list: folder,
                  key: ValueKey<String>("cl,folder,${folder.folderInfo?.id}"),
                );
              }),
        ),
      ),
    );
  }
}
