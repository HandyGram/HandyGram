import 'dart:async';
import 'dart:convert';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
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

  TgMessagesListCombine messages = TgMessagesListCombine();
  Map<int, Widget> chatPhotos = {};
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
  final List<void Function(tdlib.TdObject, TgSession)> notified = [
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
    _glue = await TdlibGlue.initialize();
    // Setup update loop with wrappers.
    _glue.notifier = (tdlib.TdObject object) {
      for (var i in notified) {
        i(object, this);
      }
    };
    functions = TelegramFunctions._(_glue);

    String shape = await Wear.instance.getShape();
    isSquareScreen = shape != "round";
  }

  // Init
  static late tdlib.SetTdlibParameters options;
  static String appVersion = "0.2.0";
  static String cacheDir = "";

  void kill() {
    _glue.kill();
  }

  static Future<TgSession> init() async {
    var path = (await getApplicationDocumentsDirectory()).path;
    var a = await DeviceInfoPlugin().androidInfo;
    cacheDir = (await getExternalCacheDirectories())![0].path;
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
