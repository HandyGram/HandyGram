import 'package:handygram/src/misc/log.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

import "session.dart";

class TgChatListEntry {
  int order = 0;
  int id = 0;
  tdlib.Message? lastMessage;
  tdlib.DraftMessage? draftMessage;

  TgChatListEntry(
    this.order,
    this.id,
    this.lastMessage,
    this.draftMessage,
  );

  TgChatListEntry.fromJson(Map<String, dynamic> raw) {
    order = raw["order"];
    id = raw["id"];
    lastMessage = raw["lastMessage"] == null
        ? null
        : tdlib.Message.fromJson(
            Map<String, dynamic>.from(raw["lastMessage"]),
          );
    draftMessage = raw["draftMessage"] == null
        ? null
        : tdlib.DraftMessage.fromJson(
            Map<String, dynamic>.from(raw["draftMessage"]),
          );
  }

  Map<String, dynamic> get json => {
        "order": order,
        "id": id,
        "lastMessage": lastMessage != null
            ? Map<String, dynamic>.from(lastMessage!.toJson())
            : null,
        "draftMessage": draftMessage != null
            ? Map<String, dynamic>.from(draftMessage!.toJson())
            : null,
      };

  @override
  String toString() => "{ id: $id, order: $order }";
}

enum TgChatListType {
  archive,
  folder,
  main,
}

TgChatListType stringToChatType(String type) {
  switch (type) {
    case 'chatListArchive':
      return TgChatListType.archive;
    case 'chatListFilter':
      return TgChatListType.folder;
    case 'chatListMain':
    default:
      return TgChatListType.main;
  }
}

String chatTypeToString(TgChatListType type) {
  switch (type) {
    case TgChatListType.archive:
      return 'chatListArchive';
    case TgChatListType.folder:
      return 'chatListFilter';
    case TgChatListType.main:
    default:
      return 'chatListMain';
  }
}

class TgChatList extends ChangeNotifier {
  late final TgChatListType type;
  final Map<int, TgChatListEntry> _pinned = {};
  final Map<int, TgChatListEntry> _chats = {};
  late final String? folderName;
  final List<int> _loading = [];

  TgChatList._i(this.type, this.folderName);

  Future<void> _asyncInit() async {
    // _chats = await SuperBox.initialize<int, TgChatListEntry>(
    //   "cache-chatinfo-${chatTypeToString(type)}",
    //   (json) => TgChatListEntry.fromJson(json),
    //   (value) => value.json,
    // );
    // _pinned = await SuperBox.initialize<int, TgChatListEntry>(
    //   "cache-chatinfo-pinned-${chatTypeToString(type)}",
    //   (json) => TgChatListEntry.fromJson(json),
    //   (value) => value.json,
    // );
  }

  static Future<TgChatList> initialize(
    TgChatListType type, [
    String? folderName,
  ]) async {
    TgChatList cache = TgChatList._i(type, folderName);
    await cache._asyncInit();
    return cache;
  }

  void add(
    tdlib.ChatPosition p,
    int i, {
    tdlib.Message? lastMsg,
    tdlib.DraftMessage? lastDraft,
  }) async {
    // Sth like a mutex for every chat
    if (_loading.contains(i)) {
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
        ).then((_) => _loading.contains(i)),
      );
    }
    _loading.add(i);

    var map = _chats;
    if (p.isPinned) {
      map = _pinned;
    }

    TgChatListEntry entry = TgChatListEntry(
      p.order,
      i,
      lastMsg,
      lastDraft,
    );
    if (map[p.order] != null) {
      _chats.remove(i);
      _pinned.remove(i);
    }
    map[p.order] = entry;
    if (lastMsg == null) {
      session.chatsInfoCache.get(i).then((info) {
        map[p.order] = map[p.order]!..lastMessage = info?.lastMessage;
        notifyListeners();
      });
    } else {
      notifyListeners();
    }
    _needUpdateSort = true;
    _loading.remove(i);
  }

  void remove(tdlib.ChatPosition p) {
    _pinned.remove(p.order);
    _chats.remove(p.order);
    _needUpdateSort = true;
    notifyListeners();
  }

  void removeById(int id) {
    _pinned.removeWhere((key, element) => element.id == id);
    _chats.removeWhere((key, element) => element.id == id);
    _needUpdateSort = true;
    notifyListeners();
  }

  void clear() {
    _pinned.clear();
    _chats.clear();
    _lastSort = [];
  }

  bool _needUpdateSort = true;
  List<TgChatListEntry> _lastSort = [];

  List<TgChatListEntry> _sortChats(Map<int, TgChatListEntry> map) {
    List<int> sortedKeys = map.keys.toList();
    sortedKeys.sort(
      (a, b) => -a.compareTo(b),
    );
    List<TgChatListEntry> entries = [];
    for (var i in sortedKeys) {
      entries.add(map[i]!);
    }
    return entries;
  }

  Map<int, TgChatListEntry> get chatsInMap {
    return Map.fromEntries(_pinned.entries.followedBy(_chats.entries));
  }

  List<TgChatListEntry> get chats {
    if (!_needUpdateSort) {
      return _lastSort;
    }

    _lastSort = _sortChats(_pinned);
    _lastSort.addAll(
      _sortChats(_chats),
    );
    _needUpdateSort = false;
    return _lastSort;
  }

  List<TgChatListEntry> get pinnedChats {
    return chats.sublist(0, _pinned.length);
  }
}

Future<void> getChatListImpl(TgSession session) async {
  while (true) {
    try {
      await session.functions.loadChats(25);
    } catch (e, st) {
      l.e("getChatListImpl", "$e\n$st");
      return;
    }
  }
}

final List<int> _notFoundChats = [];
Future<tdlib.Chat?> getChatImpl(TgSession session, int id) async {
  if (_notFoundChats.contains(id)) {
    return null;
  }

  tdlib.Chat? chat;
  try {
    chat = await session.functions.getChat(id);
  } catch (e, st) {
    if (e.toString().contains("Chat not found")) {
      _notFoundChats.add(id);
      return null;
    }
    l.e("getChatImpl", "$e\n$st");
    return null;
  }
  return chat;
}

// Add or replace a chat in one of lists.
Future<void> updateChatListImpl(
  int chatId,
  tdlib.ChatPosition? pos,
  TgSession session, {
  tdlib.Message? lastMsg,
  tdlib.DraftMessage? lastDraft,
}) async {
  if (pos == null) {
    return;
  } else {
    TgChatListType t = stringToChatType(pos.list.getConstructor());
    if (t == TgChatListType.folder) {
      // TODO: folders
      return;
    }
    session.chatLists[t]!.add(
      pos,
      chatId,
      lastDraft: lastDraft,
      lastMsg: lastMsg,
    );
  }
}

String messageContentToString(tdlib.MessageContent content) {
  switch (content.getConstructor()) {
    case "messageAnimatedEmoji":
      content as tdlib.MessageAnimatedEmoji;
      return content.animatedEmoji.sticker!.emoji;
    case "messageAnimation":
      content as tdlib.MessageAnimation;
      return "🖼 ${content.caption.text.isEmpty ? "GIF" : content.caption.text}";
    case "messageAudio":
      content as tdlib.MessageAudio;
      return "💿 ${content.caption.text.isEmpty ? "Audio" : content.caption.text}";
    case "messageDocument":
      content as tdlib.MessageDocument;
      return "📄 ${content.caption.text.isEmpty ? "Document" : content.caption.text}";
    case "messageVideo":
      content as tdlib.MessageVideo;
      return "🎥 ${content.caption.text.isEmpty ? "Video" : content.caption.text}";
    case "messagePhoto":
      content as tdlib.MessagePhoto;
      return "🖼 ${content.caption.text.isEmpty ? "Photo" : content.caption.text}";
    case "messageBasicGroupCreate":
    case "messageSupergroupChatCreate":
      return "Group was created";
    case "messageCall":
      content as tdlib.MessageCall;
      return "${content.isVideo ? "Video" : "Voice"} call (${Duration(seconds: content.duration).toString()})";
    case "messageChatAddMembers":
      return "Someone was added to chat";
    case "messageChatChangePhoto":
      return "Photo was changed";
    case "messageChatChangeTitle":
      return "Title was changed";
    case "messageCallDeleteMember":
      return "Someone left the call";
    case "messageChatDeletePhoto":
      return "Chat photo was deleted";
    case "messageChatJoinByLink":
      return "Someone joined the chat by link";
    case "messageChatJoinByRequest":
      return "Someone's join request was accepted";
    case "messageChatSetTheme":
      return "Chat theme was changed";
    case "messageChatSetTtl":
      return "Message time-to-live was changed";
    case "messageChatUpgradeFrom":
      return "Chat became a supergroup";
    case "messageChatUpgradeTo":
      return "Basic group became a supergroup";
    case "messageContact":
      return "Contact";
    case "messageContactRegistered":
      return "User has joined Telegram!";
    case "messageCustomServiceAction":
      content as tdlib.MessageCustomServiceAction;
      return content.text;
    case "messageDice":
      content as tdlib.MessageDice;
      return "${content.emoji} ${content.value == 0 ? "is spinning" : "gave ${content.value}"}";
    case "messageExpiredPhoto":
      return "Photo has self-destructed";
    case "messageExpiredVideo":
      return "Video has self-destructed";
    case "messageGame":
      content as tdlib.MessageGame;
      return content.game.title;
    case "messageGameScore":
      return "Game highest score was increased";
    case "messageInviteVideoChatParticipants":
      return "Someone was invited to join the video chat";
    case "messageInvoice":
      return "INVOICE";
    case "messageLocation":
      return "Location";
    case "messagePassportDataReceived":
      return "Telegram Passport";
    case "messagePassportDataSent":
      return "Telegram Passport was sent";
    case "messagePaymentSuccessful":
    case "messagePaymentSuccessfulBot":
      return "Payment was successful";
    case "messagePinMessage":
      return "Message was pinned";
    case "messagePoll":
      return "Poll";
    case "messageProximityAlertTriggered":
      return "Proximity alert";
    case "messageScreenshotTaken":
      return "Screenshot was taken";
    case "messageSticker":
      content as tdlib.MessageSticker;
      return "Sticker ${content.sticker.emoji}";
    case "messageText":
      content as tdlib.MessageText;
      return content.text.text;
    case "messageUnsupported":
      return "Unsupported by TDlib";
    case "messageVenue":
      return "Venue";
    case "messageVideoChatEnded":
      return "Video chat ended";
    case "messageVideoChatScheduled":
      return "New scheduled video chat";
    case "messageVideoChatStarted":
      return "Video chat started";
    case "messageVideoNote":
      content as tdlib.MessageVideoNote;
      return "Video message (${Duration(milliseconds: content.videoNote.duration).toString()})";
    case "messageVoiceNote":
      content as tdlib.MessageVoiceNote;
      return "Voice message (${Duration(milliseconds: content.voiceNote.duration).toString()})";
    case "messageWebsiteConnected":
      return "Website connected";
  }
  return "Unknown message";
}

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

void chatsHandler(tdlib.TdObject object, TgSession session) async {
  if (object.getConstructor() == tdlib.UpdateChatLastMessage.constructor) {
    object as tdlib.UpdateChatLastMessage;
    if (object.positions.isNotEmpty) {
      for (var i in object.positions) {
        session.updateChatList(
          object.chatId,
          chat: i,
          lastMessage: object.lastMessage,
        );
      }
    } else {
      session.updateChatList(
        object.chatId,
        lastMessage: object.lastMessage,
      );
    }
    session.chatsInfoCache.update(
      object.chatId,
      lastMessage: object.lastMessage,
    );
  } else if (object.getConstructor() ==
      tdlib.UpdateChatDraftMessage.constructor) {
    object as tdlib.UpdateChatDraftMessage;
    if (object.positions.isNotEmpty) {
      for (var i in object.positions) {
        session.updateChatList(
          object.chatId,
          chat: i,
          draft: object.draftMessage,
        );
      }
    } else {
      session.updateChatList(
        object.chatId,
        draft: object.draftMessage,
      );
    }
    session.chatsInfoCache.update(
      object.chatId,
      draft: object.draftMessage,
    );
  } else if (object.getConstructor() == tdlib.UpdateChatPosition.constructor) {
    object as tdlib.UpdateChatPosition;
    session.updateChatList(
      object.chatId,
      chat: object.position,
    );
  } else if (object.getConstructor() == tdlib.UpdateChatReadInbox.constructor) {
    object as tdlib.UpdateChatReadInbox;
    session.chatsInfoCache.update(
      object.chatId,
      lastReadInboxMessageId: object.lastReadInboxMessageId,
      unreadCount: object.unreadCount,
    );
  } else if (object.getConstructor() ==
      tdlib.UpdateChatReadOutbox.constructor) {
    object as tdlib.UpdateChatReadOutbox;
    session.chatsInfoCache.update(
      object.chatId,
      lastReadOutboxMessageId: object.lastReadOutboxMessageId,
    );
  } else if (object.getConstructor() == tdlib.UpdateChatPhoto.constructor) {
    object as tdlib.UpdateChatPhoto;
    session.chatsInfoCache.update(
      object.chatId,
      photo: object.photo,
    );
  }
}
