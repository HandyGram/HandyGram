/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/foundation.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/brief_chat_info.dart';

class ChatList<T extends td.ChatList>
    extends ValueListenable<List<BriefChatInfo>> {
  static const String tag = "ChatList";

  final List<BriefChatInfo> _chats = [];
  final List<VoidCallback> _listeners = [];

  @override
  void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  void _update() {
    for (final listener in _listeners) {
      listener();
    }
  }

  @override
  List<BriefChatInfo> get value => _chats;

  Iterable<BriefChatInfo> get pinnedChats =>
      _chats.where((chat) => chat.isPinned);
  Iterable<BriefChatInfo> get unpinnedChats =>
      _chats.where((chat) => !chat.isPinned);

  td.ChatFolderInfo? _folderInfo;

  final T chatList;
  final int clientId;
  td.ChatFolderInfo? get folderInfo => _folderInfo;

  void _updateChatPosition(
    final int chatId,
    final td.ChatPosition pos,
  ) {
    late final BriefChatInfo? lastInfo;
    final lastIndex = _chats.indexWhere((e) => e.chatId == chatId);
    if (lastIndex != -1) {
      lastInfo = _chats[lastIndex];
      _chats.removeAt(lastIndex);
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
    final nextIndex = _chats.indexWhere((e) => e.order < pos.order);
    if (nextIndex != -1) {
      _chats.insert(nextIndex, bci);
    } else {
      // There are no chats higher than this one. Place chat as the highest one.
      _chats.add(bci);
    }
    _update();
  }

  void _updateChatFolders(final List<td.ChatFolderInfo> chatFolders) {
    final chatList = this.chatList as td.ChatListFolder;
    try {
      _folderInfo =
          chatFolders.firstWhere((e) => e.id == chatList.chatFolderId);
      _update();
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
    final index = _chats.indexWhere((e) => e.chatId == chatId);
    if (index == -1) return;

    final chat = _chats[index];
    _chats[index] = BriefChatInfo(
      chatId: chatId,
      order: chat.order,
      isPinned: chat.isPinned,
      source: chat.source,
      lastMessage: message,
      lastDraftMessage: chat.lastDraftMessage,
    );

    _update();
  }

  void _updateDraftMessage(final int chatId, final td.DraftMessage? message) {
    final index = _chats.indexWhere((e) => e.chatId == chatId);
    if (index == -1) return;

    final chat = _chats[index];
    _chats[index] = BriefChatInfo(
      chatId: chatId,
      order: chat.order,
      isPinned: chat.isPinned,
      source: chat.source,
      lastMessage: chat.lastMessage,
      lastDraftMessage: message,
    );

    _update();
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
