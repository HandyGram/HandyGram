/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/brief_chat_info.dart';

class ChatList<T extends td.ChatList> with ChangeNotifier {
  static const String tag = "ChatList";

  final List<BriefChatInfo> chats = [];

  Iterable<BriefChatInfo> get pinnedChats =>
      chats.where((chat) => chat.isPinned);
  Iterable<BriefChatInfo> get unpinnedChats =>
      chats.where((chat) => !chat.isPinned);

  td.ChatFolderInfo? _folderInfo;

  final T chatList;
  final int clientId;
  td.ChatFolderInfo? get folderInfo => _folderInfo;

  void _updateChatPosition(
    final int chatId,
    final td.ChatPosition pos,
  ) {
    late final BriefChatInfo? lastInfo;
    final lastIndex = chats.indexWhere((e) => e.chatId == chatId);
    if (lastIndex != -1) {
      lastInfo = chats[lastIndex];
      chats.removeAt(lastIndex);
    } else {
      lastInfo = null;
    }

    // We need to remove chat from list if the order is 0.
    if (pos.order == 0) return;

    final bci = BriefChatInfo(
      chatId: chatId,
      order: pos.order,
      source: pos.source,
      isPinned: pos.isPinned,
      lastMessage: lastInfo?.lastMessage,
      lastDraftMessage: lastInfo?.lastDraftMessage,
    );

    // Find position higher that this chat one's
    final nextIndex = chats.indexWhere((e) => e.order < pos.order);
    if (nextIndex != -1) {
      chats.insert(nextIndex, bci);
    } else {
      // There are no chats higher than this one. Place chat as the highest one.
      chats.add(bci);
    }
    notifyListeners();
  }

  void _updateChatFolders(final List<td.ChatFolderInfo> chatFolders) {
    final chatList = this.chatList as td.ChatListFolder;
    try {
      _folderInfo =
          chatFolders.firstWhere((e) => e.id == chatList.chatFolderId);
      notifyListeners();
    } on StateError {
      l.e(
        tag,
        "Oh no! We were deleted, but we're still getting updates! "
        "${chatList.chatFolderId}",
      );
      rethrow;
    }
  }

  void _updateLastMessage(final int chatId, final td.Message? message) {
    final index = chats.indexWhere((e) => e.chatId == chatId);
    if (index == -1) return;

    final chat = chats[index];
    chats[index] = BriefChatInfo(
      chatId: chatId,
      order: chat.order,
      isPinned: chat.isPinned,
      source: chat.source,
      lastMessage: message,
      lastDraftMessage: chat.lastDraftMessage,
    );

    notifyListeners();
  }

  void _updateDraftMessage(final int chatId, final td.DraftMessage? message) {
    final index = chats.indexWhere((e) => e.chatId == chatId);
    if (index == -1) return;

    final chat = chats[index];
    chats[index] = BriefChatInfo(
      chatId: chatId,
      order: chat.order,
      isPinned: chat.isPinned,
      source: chat.source,
      lastMessage: chat.lastMessage,
      lastDraftMessage: message,
    );

    notifyListeners();
  }

  bool _compareLists(td.ChatList list) {
    if (list.currentObjectId == chatList.currentObjectId) {
      if (list is! td.ChatListFolder) return true;
      return list.chatFolderId == (chatList as td.ChatListFolder).chatFolderId;
    }
    return false;
  }

  void processUpdate(final td.TdObject update) {
    switch (update) {
      case td.UpdateChatPosition(
          chatId: final chatId,
          position: final pos,
        ):
        if (!_compareLists(pos.list)) return;
        return _updateChatPosition(chatId, pos);
      case td.UpdateChatLastMessage(
          chatId: final chatId,
          lastMessage: final message,
          positions: final positions,
        ):
        // Possible case if user hadn't joined this chat yet.
        if (positions.isEmpty) return;
        final position =
            positions.where((pos) => _compareLists(pos.list)).firstOrNull;
        if (position != null) _updateChatPosition(chatId, position);
        return _updateLastMessage(chatId, message);
      case td.UpdateChatDraftMessage(
          chatId: final chatId,
          draftMessage: final message,
          positions: final positions,
        ):
        // Possible case if user hadn't joined this chat yet.
        if (positions.isEmpty) return;
        final position =
            positions.where((pos) => _compareLists(pos.list)).firstOrNull;
        if (position != null) _updateChatPosition(chatId, position);
        return _updateDraftMessage(chatId, message);
      case td.UpdateChatFolders(chatFolders: final cf):
        if (chatList is! td.ChatListFolder) return;
        return _updateChatFolders(cf);
      default:
        break;
    }
  }

  ChatList({
    required this.chatList,
    required this.clientId,
    td.ChatFolderInfo? folderInfo,
  }) : _folderInfo = folderInfo;
}
