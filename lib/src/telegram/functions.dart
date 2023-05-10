part of 'session.dart';

class TelegramError implements Exception {
  final String message;
  final tdlib.TdObject? abuser;

  @override
  String toString() {
    if (abuser?.getConstructor() == tdlib.TdError.constructor) {
      var e = abuser as tdlib.TdError;
      return "[${e.extra is int ? (e.extra as int).toRadixString(16) : e.extra}] [TelegramError/TdError ${e.code}] ${e.message}";
    }
    return "[TelegramError/${abuser?.getConstructor()}] $message (object data: ${abuser?.toJson()})";
  }

  TelegramError(
    this.abuser,
    this.message,
  ) {
    if (abuser?.getConstructor() == tdlib.TdError.constructor) {
      var e = abuser as tdlib.TdError;
      l.e(
        "TelegramError",
        "[${e.extra is int ? (e.extra as int).toRadixString(16) : e.extra}] [TdError ${e.code}] ${e.message}",
      );
    }
  }
}

class TelegramFunctions {
  final TdlibGlue _glue;
  final Mutex _invokeLock = Mutex();

  TelegramFunctions._(
    this._glue,
  );

  // Synchronize tdlib invokes to increase performance and get rid of the
  // "X timed out" errors
  //
  // Was made private to force functions recreation here instead of calling
  // low-level invoke() in graphics code.
  Future<tdlib.TdObject?> _invoke(
    tdlib.TdFunction function, [
    int timeout = 5,
  ]) async {
    if (settingsStorage.isAsyncInvokes) {
      await _invokeLock.acquire();
    }
    try {
      return _glue.invoke(
        function,
        timeout,
      );
    } finally {
      if (settingsStorage.isAsyncInvokes) {
        _invokeLock.release();
      }
    }
  }

  Future<void> getAuthQR() {
    return _invoke(
      const tdlib.RequestQrCodeAuthentication(
        otherUserIds: [],
      ),
    );
  }

  Future<void> setAuthPassword(String password) {
    return _invoke(
      tdlib.CheckAuthenticationPassword(
        password: password,
      ),
    );
  }

  Future<List<int>?> getChatList([
    int limit = 10,
    tdlib.ChatList chatList = const tdlib.ChatListMain(),
  ]) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetChats(
      limit: limit,
      chatList: chatList,
    ));
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.Chats.constructor) {
      throw TelegramError(obj, "object is not tdlib.Chats");
    }
    tdlib.Chats list = obj as tdlib.Chats;
    return list.chatIds;
  }

  Future<tdlib.Chat?> getChat(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetChat(
        chatId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.Chat.constructor) {
      throw TelegramError(
          obj, "object ${obj.getConstructor()} is not tdlib.Chat");
    }
    return obj as tdlib.Chat;
  }

  Future<tdlib.User?> getUser(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetUser(
        userId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.User.constructor) {
      throw TelegramError(obj, "object is not tdlib.User");
    }
    return obj as tdlib.User;
  }

  Future<tdlib.UserFullInfo?> getUserFullInfo(int id) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetUserFullInfo(
      userId: id,
    ));
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.UserFullInfo.constructor) {
      throw TelegramError(obj, "object is not tdlib.UserFullInfo");
    }
    return obj as tdlib.UserFullInfo;
  }

  Future<List<TgMessage?>?> getMessages(
    int chatId,
    List<int> messageIds,
  ) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetMessages(
      chatId: chatId,
      messageIds: messageIds,
    ));
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.Messages.constructor) {
      throw TelegramError(obj, "object is not tdlib.Messages");
    }
    tdlib.Messages list = obj as tdlib.Messages;
    return list.messages.map((e) => TgMessage(e)).toList();
  }

  Future<TgMessage?> getMessage(
    int chatId,
    int messageId,
  ) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetMessage(
      chatId: chatId,
      messageId: messageId,
    ));
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.Message.constructor) {
      throw TelegramError(obj, "object is not tdlib.Message");
    }
    return TgMessage(obj as tdlib.Message);
  }

  Future<List<TgMessage?>?> getChatHistory(
    int chatId, [
    int fromMessageId = 0,
    int offset = 0,
    int limit = 50,
    bool onlyLocal = false,
  ]) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetChatHistory(
      chatId: chatId,
      fromMessageId: fromMessageId,
      offset: offset,
      limit: limit,
      onlyLocal: onlyLocal,
    ));
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.Messages.constructor) {
      throw TelegramError(obj, "object is not tdlib.Messages");
    }
    tdlib.Messages list = obj as tdlib.Messages;
    return list.messages.map((e) => TgMessage(e)).toList();
  }

  Future<tdlib.User?> getMe() async {
    tdlib.TdObject? obj = await _invoke(const tdlib.GetMe());
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.User.constructor) {
      throw TelegramError(obj, "object is not tdlib.User");
    }
    return obj as tdlib.User;
  }

  Future<void> logOut() async {
    tdlib.TdObject? obj = await _invoke(const tdlib.LogOut());
    if (obj == null) return;
    if (obj.getConstructor() != tdlib.Ok.constructor) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<void> setTdlibParameters(
    tdlib.SetTdlibParameters setTdlibParameters,
  ) async {
    tdlib.TdObject? obj = await _invoke(setTdlibParameters);
    if (obj == null) return;
    if (obj.getConstructor() != tdlib.Ok.constructor) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<tdlib.File?> getFile(int fileId) async {
    tdlib.TdObject? obj = await _invoke(
      tdlib.GetFile(
        fileId: fileId,
      ),
    );
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.File.constructor) {
      throw TelegramError(obj, "object is not tdlib.File");
    }
    return obj as tdlib.File;
  }

  Future<tdlib.File?> getRemoteFile(
    String remoteFileId, [
    tdlib.FileType? type,
  ]) async {
    tdlib.TdObject? obj = await _invoke(
      tdlib.GetRemoteFile(
        remoteFileId: remoteFileId,
        fileType: type,
      ),
    );
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.File.constructor) {
      throw TelegramError(obj, "object is not tdlib.File");
    }
    return obj as tdlib.File;
  }

  Future<tdlib.File?> downloadFile(
    int fileId,
    int priority, [
    int offset = 0,
    int limit = 0,
    bool synchronous = true,
  ]) async {
    tdlib.TdObject? obj = await _invoke(
      tdlib.DownloadFile(
        fileId: fileId,
        priority: priority,
        offset: offset,
        limit: limit,
        synchronous: synchronous,
      ),
    );
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.File.constructor) {
      throw TelegramError(obj, "object is not tdlib.File");
    }
    return obj as tdlib.File;
  }

  Future<void> loadChats([
    int limit = 10,
    tdlib.ChatList chatList = const tdlib.ChatListMain(),
  ]) async {
    tdlib.TdObject? obj = await _invoke(tdlib.LoadChats(
      limit: limit,
      chatList: chatList,
    ));
    if (obj == null) return;
    if (obj.getConstructor() != tdlib.Ok.constructor) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<tdlib.ChatPhotos?> getUserProfilePhotos(
    int id, [
    int offset = 0,
    int limit = 1,
  ]) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetUserProfilePhotos(
      userId: id,
      offset: offset,
      limit: limit,
    ));
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.ChatPhotos.constructor) {
      throw TelegramError(obj, "object is not tdlib.ChatPhotos");
    }
    return obj as tdlib.ChatPhotos;
  }

  Future<tdlib.Supergroup?> getSupergroup(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetSupergroup(
        supergroupId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.Supergroup.constructor) {
      throw TelegramError(obj, "object is not tdlib.Supergroup");
    }
    return obj as tdlib.Supergroup;
  }

  Future<tdlib.SupergroupFullInfo?> getSupergroupFullInfo(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetSupergroupFullInfo(
        supergroupId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.SupergroupFullInfo.constructor) {
      throw TelegramError(obj, "object is not tdlib.SupergroupFullInfo");
    }
    return obj as tdlib.SupergroupFullInfo;
  }

  Future<tdlib.BasicGroup?> getBasicGroup(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetBasicGroup(
        basicGroupId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.BasicGroup.constructor) {
      throw TelegramError(obj, "object is not tdlib.BasicGroup");
    }
    return obj as tdlib.BasicGroup;
  }

  Future<tdlib.BasicGroupFullInfo?> getBasicGroupFullInfo(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetBasicGroupFullInfo(
        basicGroupId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.BasicGroupFullInfo.constructor) {
      throw TelegramError(obj, "object is not tdlib.BasicGroupFullInfo");
    }
    return obj as tdlib.BasicGroupFullInfo;
  }

  Future<List<tdlib.ChatMember>?> getSupergroupMembers(
    int id, {
    int? offset,
    int? limit,
  }) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetSupergroupMembers(
        supergroupId: id,
        offset: offset ?? 0,
        limit: limit ?? 200,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj.getConstructor() != tdlib.ChatMembers.constructor) {
      throw TelegramError(obj, "object is not tdlib.User");
    }
    return (obj as tdlib.ChatMembers).members;
  }
}
