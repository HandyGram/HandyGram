import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/log.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:mutex/mutex.dart';

import "session.dart";

class TgChatListEntry {
  int order = 0;
  int id = 0;
  tdlib.ChatPosition? pos;
  tdlib.Message? lastMessage;
  tdlib.DraftMessage? draftMessage;
  bool pinned = false;

  TgChatListEntry(
    this.order,
    this.id,
    this.pos,
    this.lastMessage,
    this.draftMessage,
    this.pinned,
  );

  @override
  String toString() => "{ id: $id, order: $order }";
}

enum TgChatListType {
  archive,
  folder,
  main,
}

TgChatListType chatListToChatType(tdlib.ChatList type) => switch (type) {
      tdlib.ChatListMain() => TgChatListType.main,
      tdlib.ChatListArchive() => TgChatListType.archive,
      tdlib.ChatListFilter() => TgChatListType.folder,
    };

class TgChatList extends ChangeNotifier {
  late final TgChatListType type;

  // order -> id
  Map<int, int> _ordersDefault = {};
  Map<int, int> _ordersPinned = {};

  // id -> chat
  final Map<int, TgChatListEntry> _chats = {};

  final Mutex _m = Mutex();

  TgChatList._i(this.type);

  void _reorder(
    int id,
    int order, [
    bool? isPinned,
  ]) async {
    bool isPinnedReal = _ordersPinned.containsValue(id);
    if (isPinnedReal) {
      if (_ordersPinned.containsValue(id)) {
        _ordersPinned.removeWhere((k, v) => v == id);
      }
      if (isPinned ?? false) {
        _ordersPinned[order] = id;
      }
    }

    if (_ordersDefault.containsValue(id)) {
      _ordersDefault.removeWhere((k, v) => v == id);
    }
    _ordersDefault[order] = id;
    _sortChats();
  }

  static Future<TgChatList> initialize(TgChatListType type) async {
    TgChatList cache = TgChatList._i(type);
    return cache;
  }

  Future<void> updateLast(int id, tdlib.Message? lastMsg) async {
    await _m.acquire();
    _chats[id]?.lastMessage = lastMsg;
    _m.release();
    notifyListeners();
  }

  Future<void> updateDraft(int id, tdlib.DraftMessage? draft) async {
    await _m.acquire();
    _chats[id]?.draftMessage = draft;
    _m.release();
    notifyListeners();
  }

  void add(
    tdlib.ChatPosition p,
    int i, {
    tdlib.Message? lastMsg,
    tdlib.DraftMessage? lastDraft,
  }) async {
    await _m.acquire();
    TgChatListEntry entry = TgChatListEntry(
      p.order,
      i,
      p,
      lastMsg,
      lastDraft,
      p.isPinned,
    );
    _chats[i] = entry;
    _reorder(i, p.order, p.isPinned);
    if (lastMsg == null) {
      session.chatsInfoCache.get(i).then((info) {
        _chats[i]?.lastMessage = info?.lastMessage;
        notifyListeners();
      });
    } else {
      notifyListeners();
    }
    _m.release();
  }

  void remove(tdlib.ChatPosition p) async {
    await _m.acquire();
    _ordersPinned.remove(p.order);
    _ordersPinned.remove(p.order);
    _chats.removeWhere((k, v) => v.order == p.order);
    _sortChats();
    _m.release();
    notifyListeners();
  }

  void removeById(int id) async {
    await _m.acquire();
    _ordersPinned.removeWhere((k, v) => v == id);
    _ordersDefault.removeWhere((k, v) => v == id);
    _chats.remove(id);
    _sortChats();
    notifyListeners();
    _m.release();
  }

  void clear() async {
    await _m.acquire();
    _chats.clear();
    _ordersDefault = {};
    _ordersPinned = {};
    _lastSortDefault = [];
    _lastSortPinned = [];
    _m.release();
  }

  List<TgChatListEntry> _lastSortDefault = [], _lastSortPinned = [];

  List<TgChatListEntry> _sortChatsLl(Map<int, int> chatOrders) {
    List<int> sortedKeys = chatOrders.keys.toList();
    sortedKeys.sort(
      (a, b) => -a.compareTo(b),
    );
    List<TgChatListEntry> entries = [];
    for (var i in sortedKeys) {
      entries.add(_chats[chatOrders[i]]!);
    }
    return entries;
  }

  void _sortChats() {
    _lastSortDefault = _sortChatsLl(_ordersDefault);
    _lastSortPinned = _sortChatsLl(_ordersPinned);
  }

  List<TgChatListEntry> get chats => _lastSortPinned + _lastSortDefault;
  List<TgChatListEntry> get pinnedChats => _lastSortPinned;
}

class TgChatFilter {
  final tdlib.ChatFilter _filter;

  List<int> _filteredChatIds = [];
  final Map<int, int> _overridenPositions = {};

  List<TgChatListEntry> get chats {
    List<TgChatListEntry> entries = session.chatLists.main.chats
      ..addAll(session.chatLists.archive.chats);
    return _filteredChatIds
        .map((e) => entries.firstWhere((a) => a.id == e))
        .toList();
  }

  void _filterOut() {
    Set<int> chatIds = {};
    Set<int> pinnedIds = _filter.pinnedChatIds.toSet();
    List<TgChatListEntry> entries = session.chatLists.main.chats;
    if (!_filter.excludeArchived) {
      entries.addAll(session.chatLists.archive.chats);
    }
    if (_filter.excludeMuted) {
      entries.removeWhere((e) {
        var s = session.chatsInfoCache[e.id]?.notificationSettings;
        if (s == null) return false;
        // TODO: handle muted by default chats
        return s.muteFor > 0;
      });
    }
    if (_filter.excludeRead) {
      entries
          .removeWhere((e) => session.chatsInfoCache[e.id]?.unreadCount == 0);
    }
    if (_filter.includeBots) {
      chatIds.addAll(
        entries
            // Sorting out only private chats
            .where((e) =>
                session.chatsInfoCache[e.id]?.type is tdlib.ChatTypePrivate)
            // Sorting out only bots
            .where(
                (e) => session.usersInfoCache[e.id]?.type is tdlib.UserTypeBot)
            .map((e) => e.id),
      );
    }
    if (_filter.includeChannels) {
      chatIds.addAll(
        entries
            // Sorting out only supergroups
            .where((e) =>
                session.chatsInfoCache[e.id]?.type is tdlib.ChatTypeSupergroup)
            // Sorting out only channels
            .where((e) => session.supergroups[e.id]?.isChannel ?? false)
            .map((e) => e.id),
      );
    }
    if (_filter.includeContacts) {
      chatIds.addAll(
        entries
            // Sorting out only private chats
            .where((e) =>
                session.chatsInfoCache[e.id]?.type is tdlib.ChatTypePrivate)
            // Sorting out only contacts
            .where((e) => session.usersInfoCache[e.id]?.isContact ?? false)
            .map((e) => e.id),
      );
    }
    if (_filter.includeGroups) {
      chatIds.addAll(
        entries
            // Sorting out only supergroups
            .where((e) =>
                session.chatsInfoCache[e.id]?.type is tdlib.ChatTypeSupergroup)
            // Sorting out only groups
            .where((e) => !(session.supergroups[e.id]?.isChannel ?? false))
            .map((e) => e.id),
      );
      chatIds.addAll(
        entries
            // Sorting out only basic groups
            .where((e) =>
                session.chatsInfoCache[e.id]?.type is tdlib.ChatTypeBasicGroup)
            .map((e) => e.id),
      );
    }
    if (_filter.includeNonContacts) {
      chatIds.addAll(
        entries
            // Sorting out only private chats
            .where((e) =>
                session.chatsInfoCache[e.id]?.type is tdlib.ChatTypePrivate)
            // Sorting out only non-contacts
            .where((e) => !(session.usersInfoCache[e.id]?.isContact ?? false))
            .map((e) => e.id),
      );
    }
    chatIds.removeAll(_filter.excludedChatIds);
    chatIds.addAll(_filter.includedChatIds);
    chatIds.removeAll(_filter.pinnedChatIds);

    Map<int, int> posToId = {}, posToIdPinned = {};
    for (var i in chatIds) {
      var pos =
          _overridenPositions[i] ?? entries.firstWhere((e) => e.id == i).order;
      posToId[pos] = i;
    }
    for (var i in pinnedIds) {
      var pos =
          _overridenPositions[i] ?? entries.firstWhere((e) => e.id == i).order;
      posToIdPinned[pos] = i;
    }

    List<int> sortedKeys = posToId.keys.toList(),
        sortedKeysPinned = posToIdPinned.keys.toList();
    sortedKeys.sort(
      (a, b) => -a.compareTo(b),
    );
    sortedKeysPinned.sort(
      (a, b) => -a.compareTo(b),
    );
    List<int> sortedIds = [], sortedIdsPinned = [];
    for (var i in sortedKeys) {
      sortedIds.add(posToId[i]!);
    }
    for (var i in sortedKeysPinned) {
      sortedIdsPinned.add(posToId[i]!);
    }
    _filteredChatIds = [...sortedIdsPinned, ...sortedIds];
  }

  void update(int chatId, tdlib.ChatPosition pos) {
    _overridenPositions[chatId] = pos.order;
    _filterOut();
  }

  TgChatFilter._i(this._filter) {
    _filterOut();
  }

  static Future<TgChatFilter?> initialize(tdlib.ChatFilterInfo info) async {
    var filter = await session.functions.getChatFilter(info.id);
    if (filter == null) return null;
    return TgChatFilter._i(filter);
  }
}

class TgChatLists extends ChangeNotifier {
  final TgChatList main;
  final TgChatList archive;
  late final ChangeNotifierProvider<TgChatList> mainP;
  late final ChangeNotifierProvider<TgChatList> archiveP;
  final Map<int, TgChatFilter> _filters = {};
  int _mainListId = 0;

  int get mainListPosition => _mainListId;
  Map<int, TgChatFilter> get filters => _filters;

  Future<void> updateFilters(
      List<tdlib.ChatFilterInfo> infos, int mainPos) async {
    _mainListId = mainPos;
    _filters.clear();
    for (var i in infos) {
      var f = await TgChatFilter.initialize(i);
      if (f != null) _filters[i.id] = f;
    }
    notifyListeners();
  }

  TgChatLists._i(this.main, this.archive) {
    mainP = ChangeNotifierProvider((_) => main);
    archiveP = ChangeNotifierProvider((_) => archive);
  }

  static Future<TgChatLists> initialize() async {
    var main = await TgChatList.initialize(TgChatListType.main);
    var archive = await TgChatList.initialize(TgChatListType.archive);
    return TgChatLists._i(main, archive);
  }
}

String messageContentToString(tdlib.MessageContent content) =>
    switch (content) {
      tdlib.MessageAnimatedEmoji() => content.animatedEmoji.sticker!.emoji,
      tdlib.MessageAnimation() =>
        "🖼 ${content.caption.text.isEmpty ? "GIF" : content.caption.text}",
      tdlib.MessageAudio() =>
        "💿 ${content.caption.text.isEmpty ? "Audio" : content.caption.text}",
      tdlib.MessageDocument() =>
        "📄 ${content.caption.text.isEmpty ? "Document" : content.caption.text}",
      tdlib.MessageVideo() =>
        "🎥 ${content.caption.text.isEmpty ? "Video" : content.caption.text}",
      tdlib.MessagePhoto() =>
        "🖼 ${content.caption.text.isEmpty ? "Photo" : content.caption.text}",
      tdlib.MessageBasicGroupChatCreate() => "Group was created",
      tdlib.MessageSupergroupChatCreate() => "Group was created",
      tdlib.MessageCall() =>
        "${content.isVideo ? "Video" : "Voice"} call (${Duration(seconds: content.duration).toString()})",
      tdlib.MessageChatAddMembers() => "Someone was added to chat",
      tdlib.MessageChatChangePhoto() => "Photo was changed",
      tdlib.MessageChatChangeTitle() => "Title was changed",
      tdlib.MessageChatDeletePhoto() => "Chat photo was deleted",
      tdlib.MessageChatJoinByLink() => "Someone joined the chat by link",
      tdlib.MessageChatJoinByRequest() => "Someone's join request was accepted",
      tdlib.MessageChatSetTheme() => "Chat theme was changed",
      tdlib.MessageChatSetMessageAutoDeleteTime() =>
        "Message time-to-live was changed",
      tdlib.MessageChatUpgradeFrom() => "Chat became a supergroup",
      tdlib.MessageChatUpgradeTo() => "Basic group became a supergroup",
      tdlib.MessageContact() => "Contact",
      tdlib.MessageContactRegistered() => "User has joined Telegram!",
      tdlib.MessageCustomServiceAction() => content.text,
      tdlib.MessageDice() =>
        "${content.emoji} ${content.value == 0 ? "is spinning" : "gave ${content.value}"}",
      tdlib.MessageExpiredPhoto() => "Photo has self-destructed",
      tdlib.MessageExpiredVideo() => "Video has self-destructed",
      tdlib.MessageGame() => content.game.title,
      tdlib.MessageGameScore() => "Game highest score was increased",
      tdlib.MessageInviteVideoChatParticipants() =>
        "Someone was invited to join the video chat",
      tdlib.MessageInvoice() => "INVOICE",
      tdlib.MessageLocation() => "Location",
      tdlib.MessagePassportDataReceived() => "Telegram Passport",
      tdlib.MessagePassportDataSent() => "Telegram Passport was sent",
      tdlib.MessagePaymentSuccessful() => "Payment was successful",
      tdlib.MessagePaymentSuccessfulBot() => "Payment was successful",
      tdlib.MessagePinMessage() => "Message was pinned",
      tdlib.MessagePoll() => "Poll",
      tdlib.MessageProximityAlertTriggered() => "Proximity alert",
      tdlib.MessageScreenshotTaken() => "Screenshot was taken",
      tdlib.MessageSticker() => "Sticker ${content.sticker.emoji}",
      tdlib.MessageText() => content.text.text,
      tdlib.MessageUnsupported() => "Unsupported by TDlib",
      tdlib.MessageVenue() => "Venue",
      tdlib.MessageVideoChatEnded() => "Video chat ended",
      tdlib.MessageVideoChatScheduled() => "New scheduled video chat",
      tdlib.MessageVideoChatStarted() => "Video chat started",
      tdlib.MessageVideoNote() =>
        "Video message (${Duration(milliseconds: content.videoNote.duration).toString()})",
      tdlib.MessageVoiceNote() =>
        "Voice message (${Duration(milliseconds: content.voiceNote.duration).toString()})",
      tdlib.MessageWebsiteConnected() => "Website connected",
      _ => "Unknown message",
    };

// Saves all chats info, manages it and gives us
// ability to synchronously (maybe)get chat info.
class TgChatInfoCache extends ChangeNotifier {
  final Map<int, tdlib.Chat> _chats = {};
  final List<int> _loading = [];

  TgChatInfoCache._i();

  Future<void> _asyncInit() async {
    // _chats = await SuperBox.initialize<int, tdlib.Chat>(
    //   "cache-chatinfo",
    //   (json) => tdlib.Chat.fromJson(json),
    //   (value) => Map<String, dynamic>.from(value.toJson()),
    // );
  }

  static Future<TgChatInfoCache> initialize() async {
    TgChatInfoCache cache = TgChatInfoCache._i();
    await cache._asyncInit();
    return cache;
  }

  void add(tdlib.Chat chat) {
    _chats[chat.id] = chat;
    notifyListeners();
  }

  void update(
    int id, {
    tdlib.DraftMessage? draft,
    tdlib.Message? lastMessage,
    int? lastReadOutboxMessageId,
    int? lastReadInboxMessageId,
    int? unreadCount,
    tdlib.ChatPhotoInfo? photo,
  }) async {
    if (_chats.containsKey(id)) {
      if (draft != null || lastMessage != null) {
        if (lastMessage != null) {
          _chats[id] = _chats[id]!.copyWith(
            lastMessage: lastMessage,
          );
        }
        _chats[id] = _chats[id]!.copyWith(
          draftMessage: draft,
        );
      } else if (lastReadOutboxMessageId != null) {
        _chats[id] = _chats[id]!.copyWith(
          lastReadOutboxMessageId: lastReadOutboxMessageId,
        );
      } else if (lastReadInboxMessageId != null) {
        _chats[id] = _chats[id]!.copyWith(
          unreadCount: unreadCount,
          lastReadInboxMessageId: lastReadInboxMessageId,
        );
      } else if (photo != null) {
        _chats[id] = _chats[id]!.copyWith(
          photo: photo,
        );
      }
    }
    notifyListeners();
  }

  void updateFully(tdlib.Chat chat) => add(chat);

  Future<tdlib.Chat?> _get(int id) async {
    _loading.add(id);
    tdlib.Chat? tdchat;
    try {
      tdchat = await session.functions.getChat(id);
      if (tdchat != null) {
        add(tdchat);
      }
    } catch (e, st) {
      l.e("TgChatInfoCache._get", "$e $st");
    } finally {
      _loading.remove(id);
    }

    return tdchat;
  }

  Future<tdlib.Chat?> get(int id) async {
    // Sth like a mutex for every chat
    if (_loading.contains(id)) {
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
        ).then((_) => _loading.contains(id)),
      );
    }

    if (_chats[id] == null) {
      return _get(id);
    }
    return _chats[id];
  }

  tdlib.Chat? maybeGet(int id) {
    if (_chats[id] == null) {
      get(id);
      return null;
    }
    return _chats[id];
  }

  void clear() {
    _chats.clear();
  }

  tdlib.Chat? operator [](int id) {
    return maybeGet(id);
  }
}

class TgSupergroupCache extends ChangeNotifier {
  final Map<int, tdlib.Supergroup> _supergroups = {};
  final List<int> _loading = [];

  TgSupergroupCache();

  void add(tdlib.Supergroup supergroup) {
    _supergroups[supergroup.id] = supergroup;
    notifyListeners();
  }

  void update(tdlib.Supergroup supergroup) => add(supergroup);

  Future<tdlib.Supergroup?> _get(int id) async {
    _loading.add(id);
    tdlib.Supergroup? tdsupergroup;
    try {
      tdsupergroup = await session.functions.getSupergroup(id);
      if (tdsupergroup != null) {
        add(tdsupergroup);
      }
    } catch (e, st) {
      l.e("TgChatInfoCache._get", "$e $st");
    } finally {
      _loading.remove(id);
    }

    return tdsupergroup;
  }

  Future<tdlib.Supergroup?> get(int id) async {
    // Sth like a mutex for every chat
    if (_loading.contains(id)) {
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
        ).then((_) => _loading.contains(id)),
      );
    }

    if (_supergroups[id] == null) {
      return _get(id);
    }
    return _supergroups[id];
  }

  tdlib.Supergroup? maybeGet(int id) {
    if (_supergroups[id] == null) {
      get(id);
      return null;
    }
    return _supergroups[id];
  }

  void clear() {
    _supergroups.clear();
  }

  tdlib.Supergroup? operator [](int id) {
    return maybeGet(id);
  }
}

class TgSupergroupFullInfoCache extends ChangeNotifier {
  final Map<int, tdlib.SupergroupFullInfo> _supergroupsFullInfo = {};
  final List<int> _loading = [];

  TgSupergroupFullInfoCache();

  void add(tdlib.SupergroupFullInfo supergroupFullInfo, int id) {
    _supergroupsFullInfo[id] = supergroupFullInfo;
    notifyListeners();
  }

  void update(tdlib.SupergroupFullInfo supergroupFullInfo, int id) =>
      _supergroupsFullInfo.containsKey(id) ? add(supergroupFullInfo, id) : null;

  Future<tdlib.SupergroupFullInfo?> _get(int id) async {
    _loading.add(id);
    tdlib.SupergroupFullInfo? tdsupergroupFullInfo;
    try {
      tdsupergroupFullInfo = await session.functions.getSupergroupFullInfo(id);
      if (tdsupergroupFullInfo != null) {
        add(tdsupergroupFullInfo, id);
      }
    } catch (e, st) {
      l.e("TgChatInfoCache._get", "$e $st");
    } finally {
      _loading.remove(id);
    }

    return tdsupergroupFullInfo;
  }

  Future<tdlib.SupergroupFullInfo?> get(int id) async {
    // Sth like a mutex for every chat
    if (_loading.contains(id)) {
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
        ).then((_) => _loading.contains(id)),
      );
    }

    if (_supergroupsFullInfo[id] == null) {
      return _get(id);
    }
    return _supergroupsFullInfo[id];
  }

  tdlib.SupergroupFullInfo? maybeGet(int id) {
    if (_supergroupsFullInfo[id] == null) {
      get(id);
      return null;
    }
    return _supergroupsFullInfo[id];
  }

  void clear() {
    _supergroupsFullInfo.clear();
  }

  tdlib.SupergroupFullInfo? operator [](int id) {
    return maybeGet(id);
  }
}

class TgBasicGroupCache extends ChangeNotifier {
  final Map<int, tdlib.BasicGroup> _basicGroups = {};
  final List<int> _loading = [];

  TgBasicGroupCache();

  void add(tdlib.BasicGroup basicGroup) {
    _basicGroups[basicGroup.id] = basicGroup;
    notifyListeners();
  }

  void update(tdlib.BasicGroup basicGroup) => add(basicGroup);

  Future<tdlib.BasicGroup?> _get(int id) async {
    _loading.add(id);
    tdlib.BasicGroup? tdbasicGroup;
    try {
      tdbasicGroup = await session.functions.getBasicGroup(id);
      if (tdbasicGroup != null) {
        add(tdbasicGroup);
      }
    } catch (e, st) {
      l.e("TgChatInfoCache._get", "$e $st");
    } finally {
      _loading.remove(id);
    }

    return tdbasicGroup;
  }

  Future<tdlib.BasicGroup?> get(int id) async {
    // Sth like a mutex for every chat
    if (_loading.contains(id)) {
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
        ).then((_) => _loading.contains(id)),
      );
    }

    if (_basicGroups[id] == null) {
      return _get(id);
    }
    return _basicGroups[id];
  }

  tdlib.BasicGroup? maybeGet(int id) {
    if (_basicGroups[id] == null) {
      get(id);
      return null;
    }
    return _basicGroups[id];
  }

  void clear() {
    _basicGroups.clear();
  }

  tdlib.BasicGroup? operator [](int id) {
    return maybeGet(id);
  }
}

class TgBasicGroupFullInfoCache extends ChangeNotifier {
  final Map<int, tdlib.BasicGroupFullInfo> _basicGroupsFullInfo = {};
  final List<int> _loading = [];

  TgBasicGroupFullInfoCache();

  void add(tdlib.BasicGroupFullInfo basicGroupFullInfo, int id) {
    _basicGroupsFullInfo[id] = basicGroupFullInfo;
    notifyListeners();
  }

  void update(tdlib.BasicGroupFullInfo basicGroupFullInfo, int id) =>
      _basicGroupsFullInfo.containsKey(id) ? add(basicGroupFullInfo, id) : null;

  Future<tdlib.BasicGroupFullInfo?> _get(int id) async {
    _loading.add(id);
    tdlib.BasicGroupFullInfo? tdbasicGroupFullInfo;
    try {
      tdbasicGroupFullInfo = await session.functions.getBasicGroupFullInfo(id);
      if (tdbasicGroupFullInfo != null) {
        add(tdbasicGroupFullInfo, id);
      }
    } catch (e, st) {
      l.e("TgChatInfoCache._get", "$e $st");
    } finally {
      _loading.remove(id);
    }

    return tdbasicGroupFullInfo;
  }

  Future<tdlib.BasicGroupFullInfo?> get(int id) async {
    // Sth like a mutex for every chat
    if (_loading.contains(id)) {
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
        ).then((_) => _loading.contains(id)),
      );
    }

    if (_basicGroupsFullInfo[id] == null) {
      return _get(id);
    }
    return _basicGroupsFullInfo[id];
  }

  tdlib.BasicGroupFullInfo? maybeGet(int id) {
    if (_basicGroupsFullInfo[id] == null) {
      get(id);
      return null;
    }
    return _basicGroupsFullInfo[id];
  }

  void clear() {
    _basicGroupsFullInfo.clear();
  }

  tdlib.BasicGroupFullInfo? operator [](int id) {
    return maybeGet(id);
  }
}

Future<void> chatsHandler(tdlib.TdObject object, TgSession session) async {
  switch (object) {
    case tdlib.UpdateChatLastMessage(
        chatId: var id,
        positions: var pos,
        lastMessage: var lastMsg,
      ):
      if (pos.isNotEmpty) {
        for (var i in pos) {
          switch (i.list) {
            case tdlib.ChatListArchive():
              session.chatLists.archive.add(i, id, lastMsg: lastMsg);
              break;
            case tdlib.ChatListMain():
              session.chatLists.main.add(i, id, lastMsg: lastMsg);
              break;
            case tdlib.ChatListFilter():
              break;
          }
        }
      } else {
        session.chatLists.archive.updateLast(id, lastMsg);
        session.chatLists.main.updateLast(id, lastMsg);
      }
      session.chatsInfoCache.update(id, lastMessage: lastMsg);
      break;
    case tdlib.UpdateChatDraftMessage(
        positions: var pos,
        chatId: var id,
        draftMessage: var draftMsg,
      ):
      if (pos.isNotEmpty) {
        for (var i in pos) {
          switch (i.list) {
            case tdlib.ChatListArchive():
              session.chatLists.archive.add(i, id, lastDraft: draftMsg);
              break;
            case tdlib.ChatListMain():
              session.chatLists.main.add(i, id, lastDraft: draftMsg);
              break;
            case tdlib.ChatListFilter():
              break;
          }
        }
      } else {
        session.chatLists.archive.updateDraft(id, draftMsg);
        session.chatLists.main.updateDraft(id, draftMsg);
      }
      session.chatsInfoCache.update(id, draft: draftMsg);
      break;
    case tdlib.UpdateChatPosition(
        chatId: var id,
        position: var pos,
      ):
      switch (pos.list) {
        case tdlib.ChatListArchive():
          session.chatLists.archive.add(pos, id);
          break;
        case tdlib.ChatListMain():
          session.chatLists.main.add(pos, id);
          break;
        case tdlib.ChatListFilter(chatFilterId: var fid):
          session.chatLists.filters[fid]?.update(id, pos);
          break;
      }
      break;
    case tdlib.UpdateChatReadInbox(
        chatId: var id,
        lastReadInboxMessageId: var msg,
        unreadCount: var unread,
      ):
      session.chatsInfoCache
          .update(id, lastReadInboxMessageId: msg, unreadCount: unread);
      break;
    case tdlib.UpdateChatReadOutbox(
        chatId: var id,
        lastReadOutboxMessageId: var msg,
      ):
      session.chatsInfoCache.update(id, lastReadOutboxMessageId: msg);
      break;
    case tdlib.UpdateChatPhoto(chatId: var id, photo: var photo):
      session.chatsInfoCache.update(id, photo: photo);
      break;
    case tdlib.UpdateSupergroup(supergroup: var sg):
      session.supergroups.update(sg);
      break;
    case tdlib.UpdateSupergroupFullInfo(
        supergroupFullInfo: var fi,
        supergroupId: var id,
      ):
      session.supergroupsFullInfo.update(fi, id);
      break;
    case tdlib.UpdateBasicGroup(basicGroup: var bi):
      session.basicGroups.update(bi);
      break;
    case tdlib.UpdateBasicGroupFullInfo(
        basicGroupId: var id,
        basicGroupFullInfo: var fi,
      ):
      session.basicGroupsFullInfo.update(fi, id);
      break;
    case tdlib.UpdateChatFilters(
        chatFilters: var infos,
        mainChatListPosition: var mainPos,
      ):
      session.chatLists.updateFilters(infos, mainPos);
      break;
    default:
      return;
  }
}
