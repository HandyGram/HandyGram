import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/telegram/actions.dart';
import 'package:handygram/src/telegram/api_config.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/telegram/tdlib.dart';
import 'package:path_provider/path_provider.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:mutex/mutex.dart';
import 'login.dart';
import 'chats.dart';
import 'users.dart';
import 'loadfile.dart';
import 'package:wear/wear.dart';
part 'functions.dart';

class TgSessionUpdates extends ChangeNotifier {
  int _totalUpdates = 0;
  int _handledUpdates = 0;
  int? _final;

  int get total => _totalUpdates;
  int get handled => _handledUpdates;
  int? get finalUpdate => _final;

  void addUpdate(tdlib.TdObject obj) {
    _totalUpdates++;
    if (obj is tdlib.UpdateChatPosition) _final ??= _totalUpdates;
    notifyListeners();
  }

  void handleUpdate() {
    _handledUpdates++;
    notifyListeners();
  }
}

class TgSession {
  late final TdlibGlue _glue;
  late final TelegramFunctions functions;

  // Functions variables
  Function(String)? authQRListener;
  Function(String)? authStateListener;
  bool? isLoggedInPriv;

  late Map<TgChatListType, TgChatList> chatLists;
  late Map<TgChatListType, ChangeNotifierProvider<TgChatList>> chatListsP;

  late TgChatInfoCache chatsInfoCache;
  late ChangeNotifierProvider<TgChatInfoCache> chatsInfoCacheP;

  late TgUserInfoCache usersInfoCache;
  late ChangeNotifierProvider<TgUserInfoCache> usersInfoCacheP;

  late TgUserFullInfoCache usersFullInfoCache;
  late ChangeNotifierProvider<TgUserFullInfoCache> usersFullInfoCacheP;

  TgChatActions chatActions = TgChatActions();
  late ChangeNotifierProvider<TgChatActions> chatActionsP;

  TgSupergroupCache supergroups = TgSupergroupCache();
  late ChangeNotifierProvider<TgSupergroupCache> supergroupsP;

  TgSupergroupFullInfoCache supergroupsFullInfo = TgSupergroupFullInfoCache();
  late ChangeNotifierProvider<TgSupergroupFullInfoCache> supergroupsFullInfoP;

  TgBasicGroupCache basicGroups = TgBasicGroupCache();
  late ChangeNotifierProvider<TgBasicGroupCache> basicGroupsP;

  TgBasicGroupFullInfoCache basicGroupsFullInfo = TgBasicGroupFullInfoCache();
  late ChangeNotifierProvider<TgBasicGroupFullInfoCache> basicGroupsFullInfoP;

  TgMessagesListCombine messages = TgMessagesListCombine();
  Map<int, Map<String, dynamic>> chatPhotos = {};
  Map<String, Function(int, int)> fileDlNotifiers = {};

  late final bool isSquareScreen;

  // Functions (codeless)
  Future<void> updateChatList(
    int chatId, {
    tdlib.ChatPosition? chat,
    tdlib.Message? lastMessage,
    tdlib.DraftMessage? draft,
  }) async {
    return updateChatListImpl(
      chatId,
      chat,
      this,
      lastDraft: draft,
      lastMsg: lastMessage,
    );
  }

  // Functions
  Future<bool?> isLoggedIn() async {
    int i = 0;
    while (i < 300) {
      if (isLoggedInPriv != null) break;
      await Future.delayed(const Duration(seconds: 1));
      i++;
    }
    return isLoggedInPriv;
  }

  TgChatListType? getChatListType(int id) {
    for (var l in chatLists.entries) {
      if (l.value.chats.indexWhere((e) => e.id == id) != -1) {
        return l.key;
      }
    }
    return TgChatListType.main;
  }

  // Base
  final List<FutureOr<void> Function(tdlib.TdObject, TgSession)> notified = [
    loginHandler,
    chatsHandler,
    usersHandler,
    actionsHandler,
    messagesHandler,
    filesHandler,
  ];
  TgSession() {
    chatActionsP = ChangeNotifierProvider((_) => chatActions);
  }

  Future? hiveFuture;
  final Mutex _m = Mutex();
  TgSessionUpdates updStats = TgSessionUpdates();

  Future<void> _init() async {
    chatLists = {
      TgChatListType.archive: await TgChatList.initialize(
        TgChatListType.archive,
      ),
      TgChatListType.main: await TgChatList.initialize(
        TgChatListType.main,
      ),
    };
    chatsInfoCache = await TgChatInfoCache.initialize();
    usersInfoCache = await TgUserInfoCache.initialize();
    usersFullInfoCache = await TgUserFullInfoCache.initialize();
    chatListsP = {
      TgChatListType.archive: ChangeNotifierProvider(
        (_) => chatLists[TgChatListType.archive]!,
      ),
      TgChatListType.main: ChangeNotifierProvider(
        (_) => chatLists[TgChatListType.main]!,
      ),
    };
    chatsInfoCacheP = ChangeNotifierProvider((_) => chatsInfoCache);
    usersInfoCacheP = ChangeNotifierProvider((_) => usersInfoCache);
    usersFullInfoCacheP = ChangeNotifierProvider((_) => usersFullInfoCache);
    supergroupsP = ChangeNotifierProvider((_) => supergroups);
    supergroupsFullInfoP = ChangeNotifierProvider((_) => supergroupsFullInfo);
    basicGroupsP = ChangeNotifierProvider((_) => basicGroups);
    basicGroupsFullInfoP = ChangeNotifierProvider((_) => basicGroupsFullInfo);
    _glue = await TdlibGlue.initialize();
    // Setup update loop with wrappers.
    _glue.notifier = (tdlib.TdObject object) async {
      if (!settingsStorage.isAsyncUpdates) {
        updStats.addUpdate(object);
        await _m.acquire();
      }
      for (var i in notified) {
        await i(object, this);
      }
      if (!settingsStorage.isAsyncUpdates) {
        await Future.delayed(const Duration(milliseconds: 4));
        updStats.handleUpdate();
        _m.release();
      }
    };
    functions = TelegramFunctions._(_glue);

    String shape = await Wear.instance.getShape();
    isSquareScreen = shape != "round";
  }

  // Init
  static late tdlib.SetTdlibParameters options;
  static String appVersion = "0.4.0";
  static String cacheDir = "";

  void kill() {
    _glue.kill();
  }

  static Future<TgSession> init() async {
    var path = (await getApplicationDocumentsDirectory()).path;
    var a = await DeviceInfoPlugin().androidInfo;
    cacheDir = (await getExternalCacheDirectories())![0].path;
    await Directory("$cacheDir/thumbnails").create(recursive: true);
    options = tdlib.SetTdlibParameters(
      useTestDc: false,
      databaseDirectory: "$path/tdlib/db/",
      filesDirectory: "$path/tdlib/files/",
      systemLanguageCode: Platform.localeName,
      deviceModel: '${a.manufacturer} ${a.product}',
      systemVersion: a.version.release,
      useSecretChats: false,
      applicationVersion: appVersion,
      databaseEncryptionKey: base64.encode(utf8.encode("mysuperenckey")),
      useFileDatabase: true,
      useChatInfoDatabase: true,
      useMessageDatabase: true,
      enableStorageOptimizer: true,
      ignoreFileNames: true,
      apiId: TgApiConfig.apiId,
      apiHash: TgApiConfig.apiHash,
    );
    var td = TgSession();
    await td._init();
    sessionReady = true;
    return td;
  }
}

bool sessionReady = false;
late TgSession session;
