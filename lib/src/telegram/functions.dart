part of 'session.dart';

class TelegramError implements Exception {
  final String message;
  final tdlib.TdObject? abuser;

  @override
  String toString() {
    if (abuser is tdlib.TdError) {
      var e = abuser as tdlib.TdError;
      return "[${e.extra is int ? (e.extra as int).toRadixString(16) : e.extra}] [TelegramError/TdError ${e.code}] ${e.message}";
    }
    return "[TelegramError/${abuser?.instanceType}] $message (object data: ${abuser?.toJson()})";
  }

  TelegramError(
    this.abuser,
    this.message,
  ) {
    if (abuser is tdlib.TdError) {
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
    if (obj is! tdlib.Chats) {
      throw TelegramError(obj, "object is not tdlib.Chats");
    }
    return obj.chatIds;
  }

  Future<tdlib.Chat?> getChat(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetChat(
        chatId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.Chat) {
      throw TelegramError(obj, "object is not tdlib.Chat");
    }
    return obj;
  }

  Future<tdlib.User?> getUser(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetUser(
        userId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.User) {
      throw TelegramError(obj, "object is not tdlib.User");
    }
    return obj;
  }

  Future<tdlib.UserFullInfo?> getUserFullInfo(int id) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetUserFullInfo(
      userId: id,
    ));
    if (obj == null) return null;
    if (obj is! tdlib.UserFullInfo) {
      throw TelegramError(obj, "object is not tdlib.UserFullInfo");
    }
    return obj;
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
    if (obj is! tdlib.Messages) {
      throw TelegramError(obj, "object is not tdlib.Messages");
    }
    return obj.messages.map((e) => TgMessage(e)).toList();
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
    if (obj is! tdlib.Message) {
      throw TelegramError(obj, "object is not tdlib.Message");
    }
    return TgMessage(obj);
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
    if (obj is! tdlib.Messages) {
      throw TelegramError(obj, "object is not tdlib.Messages");
    }
    return obj.messages.map((e) => TgMessage(e)).toList();
  }

  Future<tdlib.User?> getMe() async {
    tdlib.TdObject? obj = await _invoke(const tdlib.GetMe());
    if (obj == null) return null;
    if (obj is! tdlib.User) {
      throw TelegramError(obj, "object is not tdlib.User");
    }
    return obj;
  }

  Future<void> logOut() async {
    tdlib.TdObject? obj = await _invoke(const tdlib.LogOut());
    if (obj == null) return;
    if (obj is! tdlib.Ok) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<void> setTdlibParameters(
    tdlib.SetTdlibParameters setTdlibParameters,
  ) async {
    tdlib.TdObject? obj = await _invoke(setTdlibParameters);
    if (obj == null) return;
    if (obj is! tdlib.Ok) {
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
    if (obj is! tdlib.File) {
      throw TelegramError(obj, "object is not tdlib.File");
    }
    return obj;
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
    if (obj is! tdlib.File) {
      throw TelegramError(obj, "object is not tdlib.File");
    }
    return obj;
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
    if (obj is! tdlib.File) {
      throw TelegramError(obj, "object is not tdlib.File");
    }
    return obj;
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
    if (obj is! tdlib.Ok) {
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
    if (obj is! tdlib.ChatPhotos) {
      throw TelegramError(obj, "object is not tdlib.ChatPhotos");
    }
    return obj;
  }

  Future<tdlib.Supergroup?> getSupergroup(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetSupergroup(
        supergroupId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.Supergroup) {
      throw TelegramError(obj, "object is not tdlib.Supergroup");
    }
    return obj;
  }

  Future<tdlib.SupergroupFullInfo?> getSupergroupFullInfo(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetSupergroupFullInfo(
        supergroupId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.SupergroupFullInfo) {
      throw TelegramError(obj, "object is not tdlib.SupergroupFullInfo");
    }
    return obj;
  }

  Future<tdlib.BasicGroup?> getBasicGroup(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetBasicGroup(
        basicGroupId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.BasicGroup) {
      throw TelegramError(obj, "object is not tdlib.BasicGroup");
    }
    return obj;
  }

  Future<tdlib.BasicGroupFullInfo?> getBasicGroupFullInfo(int id) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetBasicGroupFullInfo(
        basicGroupId: id,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.BasicGroupFullInfo) {
      throw TelegramError(obj, "object is not tdlib.BasicGroupFullInfo");
    }
    return obj;
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
    if (obj is! tdlib.ChatMembers) {
      throw TelegramError(obj, "object is not tdlib.ChatMembers");
    }
    return obj.members;
  }

  Future<tdlib.Message?> sendMessage({
    required int chatId,
    required tdlib.InputMessageContent content,
    int messageThreadId = 0,
    int replyToMessageId = 0,
    tdlib.MessageSendOptions? options,
  }) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.SendMessage(
        chatId: chatId,
        inputMessageContent: content,
        messageThreadId: messageThreadId,
        replyToMessageId: replyToMessageId,
        options: options,

        // Used only for bots, so we just set it as null
        replyMarkup: null,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.Message) {
      throw TelegramError(obj, "object is not tdlib.Message");
    }
    return obj;
  }

  Future<List<tdlib.Sticker>?> getStickers(
    String query,
    tdlib.StickerType type,
    int chatId, [
    int? limit,
  ]) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetStickers(
        query: query,
        stickerType: type,
        chatId: chatId,
        limit: limit ?? 25,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.Stickers) {
      throw TelegramError(obj, "object is not tdlib.Stickers");
    }
    return obj.stickers;
  }

  Future<List<tdlib.StickerSetInfo>?> getInstalledStickerSets(
    tdlib.StickerType type,
  ) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetInstalledStickerSets(
        stickerType: type,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.StickerSets) {
      throw TelegramError(obj, "object is not tdlib.StickerSets");
    }
    return obj.sets;
  }

  Future<void> addMessageReaction({
    required int chatId,
    required int messageId,
    required tdlib.ReactionType type,
    bool isBig = false,
    bool updateRecentReactions = true,
  }) async {
    tdlib.TdObject? obj = await _invoke(tdlib.AddMessageReaction(
      chatId: chatId,
      messageId: messageId,
      reactionType: type,
      isBig: isBig,
      updateRecentReactions: updateRecentReactions,
    ));
    if (obj == null) return;
    if (obj is! tdlib.Ok) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<void> removeMessageReaction({
    required int chatId,
    required int messageId,
    required tdlib.ReactionType type,
  }) async {
    tdlib.TdObject? obj = await _invoke(tdlib.RemoveMessageReaction(
      chatId: chatId,
      messageId: messageId,
      reactionType: type,
    ));
    if (obj == null) return;
    if (obj is! tdlib.Ok) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<List<List<tdlib.ReactionType>>?> getMessageAvailableReactions(
    int chatId,
    int messageId,
    int rowSize,
  ) async {
    tdlib.TdObject? obj;
    try {
      obj = await _invoke(tdlib.GetMessageAvailableReactions(
        chatId: chatId,
        messageId: messageId,
        rowSize: rowSize,
      ));
    } catch (_) {}
    if (obj == null) return null;
    if (obj is! tdlib.AvailableReactions) {
      throw TelegramError(obj, "object is not tdlib.AvailableReactions");
    }

    // We do not support Premium features yet.
    obj.topReactions.removeWhere((e) => e.needsPremium);
    obj.recentReactions.removeWhere((e) => e.needsPremium);
    obj.popularReactions.removeWhere((e) => e.needsPremium);

    return [
      obj.topReactions.map((e) => e.type).toList(),
      obj.recentReactions.map((e) => e.type).toList(),
      obj.popularReactions.map((e) => e.type).toList(),
    ];
  }

  Future<void> deleteMessage(
    int chatId,
    int messageId, [
    bool revoke = true,
  ]) async {
    tdlib.TdObject? obj = await _invoke(tdlib.DeleteMessages(
      chatId: chatId,
      messageIds: [messageId],
      revoke: revoke,
    ));
    if (obj == null) return;
    if (obj is! tdlib.Ok) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<List<TgMessage>?> forwardMessage(
    int chatId,
    int messageId,
    int fromChatId, [
    int messageThreadId = 0,
    bool copy = false,
    bool removeCaption = false,
  ]) async {
    tdlib.TdObject? obj = await _invoke(tdlib.ForwardMessages(
      chatId: chatId,
      messageIds: [messageId],
      fromChatId: fromChatId,
      messageThreadId: messageThreadId,
      sendCopy: copy,
      removeCaption: removeCaption,

      // wtf pavel
      onlyPreview: false,
    ));
    if (obj == null) return null;
    if (obj is! tdlib.Messages) {
      throw TelegramError(obj, "object is not tdlib.Messages");
    }
    return obj.messages.map<TgMessage>((e) => TgMessage(e)).toList();
  }

  Future<List<tdlib.Sticker>?> getRecentStickers([
    bool isAttached = false,
  ]) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetRecentStickers(
      isAttached: isAttached,
    ));
    if (obj == null) return null;
    if (obj is! tdlib.Stickers) {
      throw TelegramError(obj, "object is not tdlib.Stickers");
    }
    return obj.stickers;
  }

  Future<List<tdlib.Animation>?> getSavedAnimations() async {
    tdlib.TdObject? obj = await _invoke(const tdlib.GetSavedAnimations());
    if (obj == null) return null;
    if (obj is! tdlib.Animations) {
      throw TelegramError(obj, "object is not tdlib.Animations");
    }
    return obj.animations;
  }

  Future<tdlib.StickerSet?> getStickerSet(
    int setId,
  ) async {
    tdlib.TdObject? obj = await _invoke(tdlib.GetStickerSet(
      setId: setId,
    ));
    if (obj == null) return null;
    if (obj is! tdlib.StickerSet) {
      throw TelegramError(obj, "object is not tdlib.StickerSet");
    }
    return obj;
  }

  Future<void> openChat(
    int chatId,
  ) async {
    tdlib.TdObject? obj = await _invoke(tdlib.OpenChat(chatId: chatId));
    if (obj == null) return;
    if (obj is! tdlib.Ok) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<void> closeChat(
    int chatId,
  ) async {
    tdlib.TdObject? obj = await _invoke(tdlib.CloseChat(chatId: chatId));
    if (obj == null) return;
    if (obj is! tdlib.Ok) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }

  Future<void> viewMessages(
    int chatId,
    List<int> messageIds, [
    int messageThreadId = 0,
    bool forceRead = false,
  ]) async {
    tdlib.TdObject? obj = await _invoke(tdlib.ViewMessages(
      chatId: chatId,
      messageIds: messageIds,
      messageThreadId: messageThreadId,
      forceRead: forceRead,
    ));
    if (obj == null) return;
    if (obj is! tdlib.Ok) {
      throw TelegramError(obj, "object is not tdlib.Ok");
    }
  }
}
