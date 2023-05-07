import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:mutex/mutex.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

typedef TdMsg = tdlib.Message;

/// This giant number of message types
/// is reserved for future implementation of them :p
enum TgMessageType {
  animatedEmoji,
  animation,
  audio,
  document,
  video,
  groupCreate,
  call,
  chatAddMembers,
  chatChangePhoto,
  chatChangeTitle,
  callDeleteMember,
  chatDeletePhoto,
  chatJoinByLink,
  chatJoinByRequest,
  chatUpgradeFrom,
  chatUpgradeTo,
  contact,
  contactRegistered,
  customServiceAction,
  dice,
  expiredPhoto,
  expiredVideo,
  game,
  gameScore,
  inviteVideoChatParticipants,
  invoice,
  location,
  photo,
  pinMessage,
  poll,
  screenshotTaken,
  sticker,
  text,
  videoChatEnded,
  videoChatScheduled,
  videoChatStartedm,
  videoNote,
  voiceNote,
  unsupportedTdlib,
  unsupportedHandygram,
}

final Map<String, TgMessageType> _stringToTypeMap = {
  // Media messages.
  "messageAnimation": TgMessageType.animation, // implemented
  "messageAudio": TgMessageType.audio,
  "messageDocument": TgMessageType.document,
  "messageVideo": TgMessageType.video, // implemented
  "messagePhoto": TgMessageType.photo, // implemented
  "messageSticker": TgMessageType.sticker, // implemented

  // Call events messages.
  // "messageCall": TgMessageType.call,

  // Object messages.
  "messageContact": TgMessageType.contact,
  "messageDice": TgMessageType.dice,
  "messagePoll": TgMessageType.poll,

  // Text messages.
  "messagePinMessage": TgMessageType.pinMessage,
  "messageText": TgMessageType.text, // implemented

  // Notes.
  "messageVideoNote": TgMessageType.videoNote,
  "messageVoiceNote": TgMessageType.voiceNote, // implemented

  // Extras.
  "messageUnsupported": TgMessageType.unsupportedTdlib,
};

/// TgMessageType to String converter
TgMessageType stringToMsgType(String s) {
  return _stringToTypeMap[s] ?? TgMessageType.unsupportedHandygram;
}

/// String to TgMessageType converter
String msgTypeToStr(TgMessageType type) {
  try {
    return _stringToTypeMap.entries.where((e) => e.value == type).single.key;
  } catch (e) {
    return "messageUnsupported";
  }
}

TgMessageContent parseMessageContent(tdlib.MessageContent content) {
  TgMessageType type = stringToMsgType(content.getConstructor());
  switch (type) {
    case TgMessageType.animation:
      content as tdlib.MessageAnimation;
      return TgAnimationMessageContent(
        content.animation,
        content.caption,
        content.isSecret,
        content,
      );
    case TgMessageType.audio:
      content as tdlib.MessageAudio;
      return TgAudioMessageContent(
        content.audio,
        content.caption,
        content,
      );
    case TgMessageType.document:
      content as tdlib.MessageDocument;
      return TgDocumentMessageContent(
        content.document,
        content.caption,
        content,
      );
    case TgMessageType.video:
      content as tdlib.MessageVideo;
      return TgVideoMessageContent(
        content.video,
        content.caption,
        content.isSecret,
        content,
      );
    case TgMessageType.photo:
      content as tdlib.MessagePhoto;
      return TgPhotoMessageContent(
        content.photo,
        content.caption,
        content.isSecret,
        content.hasSpoiler,
        content,
      );
    case TgMessageType.sticker:
      content as tdlib.MessageSticker;
      return TgStickerMessageContent(
        content.sticker,
        content,
      );
    case TgMessageType.contact:
      content as tdlib.MessageContact;
      return TgContactMessageContent(
        content.contact,
        content,
      );
    case TgMessageType.dice:
      content as tdlib.MessageDice;
      return TgDiceMessageContent(
        content.initialState,
        content.finalState,
        content.emoji,
        content.value,
        content.successAnimationFrameNumber,
        content,
      );
    case TgMessageType.poll:
      content as tdlib.MessagePoll;
      return TgPollMessageContent(
        content.poll,
        content,
      );
    case TgMessageType.pinMessage:
      content as tdlib.MessagePinMessage;
      return TgPinMessageMessageContent(
        content.messageId,
        content,
      );
    case TgMessageType.text:
      content as tdlib.MessageText;
      return TgTextMessageContent(
        content.text,
        content.webPage,
        content,
      );
    case TgMessageType.videoNote:
      content as tdlib.MessageVideoNote;
      return TgVideoNoteMessageContent(
        content.videoNote,
        content.isViewed,
        content.isSecret,
        content,
      );
    case TgMessageType.voiceNote:
      content as tdlib.MessageVoiceNote;
      return TgVoiceNoteMessageContent(
        content.voiceNote,
        content.caption,
        content.isListened,
        content,
      );
    case TgMessageType.unsupportedHandygram:
    case TgMessageType.unsupportedTdlib:
    default:
      return TgUnknownMessageContent(content);
  }
}

class TgMessage {
  //
  // Internal properties
  //

  final TdMsg tgMsg;
  late final TgMessageType type;

  //
  // Class "message" properties
  //

  /// Message identifier; unique for the chat to which the message belongs.
  late final int id = tgMsg.id;
  late final int idServer = convertMessageId(id);

  /// Identifier of the sender of the message.
  late final tdlib.MessageSender senderId = tgMsg.senderId;

  /// Chat identifier.
  late final int chatId = tgMsg.chatId;

  /// The sending state of the message; may be null.
  late final tdlib.MessageSendingState? sendingState = tgMsg.sendingState;

  /// The scheduling state of the message; may be null.
  late final tdlib.MessageSchedulingState? schedulingState =
      tgMsg.schedulingState;

  /// True, if the message is outgoing.
  late final bool isOutgoing = tgMsg.isOutgoing;

  /// True, if the message is pinned.
  late final bool isPinned = tgMsg.isPinned;

  /// True, if the message can be edited. For live location and poll messages
  /// this fields shows whether editMessageLiveLocation or stopPoll can be used
  /// with this message by the application.
  late final bool canBeEdited = tgMsg.canBeEdited;

  /// True, if the message can be forwarded.
  late final bool canBeForwarded = tgMsg.canBeForwarded;

  /// True, if content of the message can be saved locally or copied.
  late final bool canBeSaved = tgMsg.canBeSaved;

  /// True, if the message can be deleted only for the current user
  /// while other users will continue to see it.
  late final bool canBeDeletedOnlyForSelf = tgMsg.canBeDeletedOnlyForSelf;

  /// True, if the message can be deleted for all users.
  late final bool canBeDeletedForAllUsers = tgMsg.canBeDeletedForAllUsers;

  /// True, if the message statistics are available.
  late final bool canGetStatistics = tgMsg.canGetStatistics;

  /// True, if the message thread info is available.
  late final bool canGetMessageThread = tgMsg.canGetMessageThread;

  /// True, if chat members already viewed the message
  /// can be received through getMessageViewers.
  late final bool canGetViewers = tgMsg.canGetViewers;

  /// True, if media timestamp links can be generated for media timestamp
  /// entities in the message text, caption or web page description.
  late final canGetMediaTimestampLinks = tgMsg.canGetMediaTimestampLinks;

  /// True, if the message is a channel post. All messages to channels are
  /// channel posts, all other messages are not channel posts.
  late final bool isChannelPost = tgMsg.isChannelPost;

  /// True, if the message contains an unread mention for the current user.
  late final bool containsUnreadMessage = tgMsg.containsUnreadMention;

  /// Point in time when the message was sent.
  late final DateTime date = DateTime.fromMillisecondsSinceEpoch(
    tgMsg.date * 1000,
  );

  /// Point in time when the message was last edited.
  late final DateTime editDate = DateTime.fromMillisecondsSinceEpoch(
    tgMsg.editDate * 1000,
  );

  /// Information about the initial message sender; may be null.
  late final tdlib.MessageForwardInfo? forwardInfo = tgMsg.forwardInfo;

  /// Information about the initial message sender; may be null.
  late final tdlib.MessageInteractionInfo? interactionInfo =
      tgMsg.interactionInfo;

  /// If non-zero, the identifier of the chat to which the replied message belongs;
  /// Currently, only messages in the Replies chat can have different
  /// reply_in_chat_id and chat_id.
  late final int replyInChatId = tgMsg.replyInChatId;

  /// If non-zero, the identifier of the message this message is replying to;
  /// can be the identifier of a deleted message.
  late final int replyToMessageId = tgMsg.replyToMessageId;
  late final int replyToMessageIdServer = convertMessageId(replyToMessageId);

  /// If non-zero, the identifier of the message thread the message belongs to;
  /// unique within the chat to which the message belongs.
  late final int messageThreadMessageId = tgMsg.messageThreadId;
  late final int messageThreadMessageIdServer =
      convertMessageId(messageThreadMessageId);

  /// For self-destructing messages, the message's TTL (Time To Live),
  /// in seconds; 0 if none. TDLib will send updateDeleteMessages or
  /// updateMessageContent once the TTL expires.
  late final Duration selfDestructTime =
      Duration(seconds: tgMsg.selfDestructTime);

  /// If non-zero, the user identifier of the bot through
  /// which this message was sent.
  late final int viaBotUserId = tgMsg.viaBotUserId;

  /// For channel posts and anonymous group messages, optional author signature.
  late final String authorSignature = tgMsg.authorSignature;

  /// Unique identifier of an album this message belongs to.
  /// Only audios, documents, photos and videos can be grouped together in albums.
  late final int mediaAlbumId = tgMsg.mediaAlbumId;

  /// If non-empty, contains a human-readable description of
  /// the reason why access to this message must be restricted.
  late final String restrictionReason = tgMsg.restrictionReason;

  /// True, if media timestamp entities refers to a media in this message
  /// as opposed to a media in the replied message.
  late final hasTimestampedMedia = tgMsg.hasTimestampedMedia;

  /// Content of the message.
  late final TgMessageContent content = parseMessageContent(tgMsg.content);

  /// Reply markup for the message; may be null.
  late final tdlib.ReplyMarkup? replyMarkup = tgMsg.replyMarkup;

  /// Convert image to String, shown in some UI widgets.
  ///
  /// Ex.: TgPhotoMessage -> "'photo_emoji' Photo"
  /// (Please use converter in chats.dart for LAST message!)
  @override
  String toString() => settingsStorage.debug
      ? "[ID: $idServer ($id)]\n${content.toString()}"
      : content.toString();

  TgMessage(
    this.tgMsg,
  ) {
    type = stringToMsgType(tgMsg.content.getConstructor());
  }
}

class TgMessageContent {
  final tdlib.MessageContent tgMsg;
  late final TgMessageType type;

  /// Convert image to String, shown in some UI widgets.
  ///
  /// Ex.: TgPhotoMessage -> "'photo_emoji' Photo"
  /// (Please use converter in chats.dart for LAST message!)
  @override
  String toString();

  TgMessageContent(
    this.tgMsg,
  ) {
    type = stringToMsgType(tgMsg.getConstructor());
  }
}

/// messageUnsupported or non-implemented ones.
class TgUnknownMessageContent extends TgMessageContent {
  @override
  String toString() => "Unknown message.";
  TgUnknownMessageContent(
    tdlib.MessageContent t,
  ) : super(t);
}

/// messageAnimation (GIF)
class TgAnimationMessageContent extends TgMessageContent {
  @override
  String toString() => "GIF";

  /// The animation description.
  final tdlib.Animation animation;

  /// Animation caption.
  final tdlib.FormattedText? caption;

  /// True, if the animation thumbnail must be blurred and
  /// the animation must be shown only while tapped.
  final bool isSecret;

  TgAnimationMessageContent(
    this.animation,
    this.caption,
    this.isSecret,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messageAudio (audio NOT as file)
class TgAudioMessageContent extends TgMessageContent {
  @override
  String toString() => "Audio";

  /// The audio description.
  final tdlib.Audio audio;

  /// Audio caption.
  final tdlib.FormattedText? caption;

  TgAudioMessageContent(
    this.audio,
    this.caption,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messageDocument (general file)
class TgDocumentMessageContent extends TgMessageContent {
  @override
  String toString() => "Document";

  /// The document description.
  final tdlib.Document document;

  /// Document caption.
  final tdlib.FormattedText? caption;

  TgDocumentMessageContent(
    this.document,
    this.caption,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messageVideo (video NOT as file)
class TgVideoMessageContent extends TgMessageContent {
  @override
  String toString() => "Video";

  /// The video description.
  final tdlib.Video video;

  /// Video caption.
  final tdlib.FormattedText? caption;

  /// True, if the animation thumbnail must be blurred and
  /// the animation must be shown only while tapped.
  final bool isSecret;

  TgVideoMessageContent(
    this.video,
    this.caption,
    this.isSecret,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messagePhoto (photo NOT as file)
class TgPhotoMessageContent extends TgMessageContent {
  @override
  String toString() => "Photo";

  /// The photo description.
  final tdlib.Photo photo;

  /// Photo caption.
  final tdlib.FormattedText? caption;

  /// True, if the animation thumbnail must be blurred and
  /// the animation must be shown only while tapped.
  final bool isSecret;

  /// True, if the photo is under the spoiler.
  final bool hasSpoiler;

  TgPhotoMessageContent(
    this.photo,
    this.caption,
    this.isSecret,
    this.hasSpoiler,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messageSticker (will you guess what's in this message?)
class TgStickerMessageContent extends TgMessageContent {
  @override
  String toString() => "${sticker.emoji} Sticker";

  /// The sticker description.
  final tdlib.Sticker sticker;

  TgStickerMessageContent(
    this.sticker,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messageContact (contact card)
class TgContactMessageContent extends TgMessageContent {
  @override
  String toString() => "Contact";

  /// The contact description.
  final tdlib.Contact contact;

  TgContactMessageContent(
    this.contact,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messageDice (emojis with value - casino machine, cube, bowling pins, ...)
class TgDiceMessageContent extends TgMessageContent {
  @override
  String toString() => "$emoji Dice";

  /// The animated stickers with the initial dice animation;
  /// may be null if unknown. updateMessageContent will be sent
  /// when the sticker became known.
  final tdlib.DiceStickers? initialState;

  /// The animated stickers with the final dice animation;
  /// may be null if unknown. updateMessageContent will be sent
  /// when the sticker became known.
  final tdlib.DiceStickers? finalState;

  /// Emoji on which the dice throw animation is based.
  final String emoji;

  /// The dice value. If the value is 0, the dice don't have final state yet.
  final int value;

  /// Number of frame after which a success animation like a shower of
  /// confetti needs to be shown on updateMessageSendSucceeded.
  final int successAnimationFrameNumber;

  TgDiceMessageContent(
    this.initialState,
    this.finalState,
    this.emoji,
    this.value,
    this.successAnimationFrameNumber,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messagePoll (will you guess what's in this message?)
class TgPollMessageContent extends TgMessageContent {
  @override
  String toString() => "Poll (${poll.question})";

  /// The poll description.
  final tdlib.Poll poll;

  TgPollMessageContent(
    this.poll,
    tdlib.MessageContent t,
  ) : super(t);
}

/// messagePinMessage (the message was pinned event)
class TgPinMessageMessageContent extends TgMessageContent {
  @override
  String toString() => "Message was pinned";

  /// Identifier of the pinned message,
  /// can be an identifier of a deleted message or 0.
  final int messageId;

  TgPinMessageMessageContent(
    this.messageId,
    tdlib.MessageContent t,
  ) : super(t);
}

// messageText (default text)
class TgTextMessageContent extends TgMessageContent {
  @override
  String toString() => text.text;

  /// Text of the message.
  final tdlib.FormattedText text;

  /// A preview of the web page that's mentioned in the text; may be null.
  final tdlib.WebPage? webPage;

  TgTextMessageContent(
    this.text,
    this.webPage,
    tdlib.MessageContent t,
  ) : super(t);
}

// messageVideoNote (video message aka "circle")
class TgVideoNoteMessageContent extends TgMessageContent {
  @override
  String toString() => "Video message";

  /// The video note description.
  final tdlib.VideoNote videoNote;

  /// True, if at least one of the recipients has viewed the video note.
  final bool isViewed;

  /// True, if the video note thumbnail must be blurred and
  /// the video note must be shown only while tapped.
  final bool isSecret;

  TgVideoNoteMessageContent(
    this.videoNote,
    this.isViewed,
    this.isSecret,
    tdlib.MessageContent t,
  ) : super(t);
}

// messageVoiceNote (voice message)
class TgVoiceNoteMessageContent extends TgMessageContent {
  @override
  String toString() => "Voice message";

  /// The voice note description.
  final tdlib.VoiceNote voiceNote;

  /// Voice note caption.
  final tdlib.FormattedText? caption;

  /// True, if at least one of the recipients has listened to the voice note.
  final bool isListened;

  TgVoiceNoteMessageContent(
    this.voiceNote,
    this.caption,
    this.isListened,
    tdlib.MessageContent t,
  ) : super(t);
}

class TgMessagesList extends ChangeNotifier {
  // Use map to quickly find messages by id
  final Map<int, TgMessage> _messages = {};
  final Mutex _m = Mutex();
  List<TgMessage> _latestSort = [];

  static List<int> _resortIsolated(List<int> toSort) {
    return List.from(toSort)
      ..sort(
        (a, b) => a.compareTo(b),
      );
  }

  // Sort in descending order
  Future<void> _resort() async {
    List<int> sortedKeys = List<int>.from(_messages.keys);
    sortedKeys = await compute(
      _resortIsolated,
      sortedKeys,
    );
    _latestSort = sortedKeys.map<TgMessage>((i) => _messages[i]!).toList();
  }

  List<TgMessage> get messages => _latestSort;

  void insert(TgMessage? msg) async {
    if (msg == null) return;
    await _m.acquire();
    _messages[msg.id] = msg;
    await _resort();
    _m.release();
    notifyListeners();
  }

  void insertAll(List<TgMessage?> messages) async {
    await _m.acquire();
    try {
      for (var i in messages) {
        if (i != null) _messages[i.id] = i;
      }
      await _resort();
    } finally {
      _m.release();
    }
    notifyListeners();
  }

  void deleteAll(List<int> messageIds) async {
    await _m.acquire();
    try {
      for (var i in messageIds) {
        _messages.remove(i);
      }
      await _resort();
    } finally {
      _m.release();
    }
    notifyListeners();
  }

  void clear() async {
    await _m.acquire();
    _messages.clear();
    _latestSort = [];
    _m.release();
  }

  TgMessagesList.withHistory(int chatId) {
    _m.acquire();
    session.functions.getChatHistory(chatId).then((value) async {
      if (value == null) {
        _m.release();
        return;
      }
      try {
        for (var i in value) {
          if (i == null) continue;
          _messages[i.id] = i;
        }
        await _resort();
      } finally {
        _m.release();
      }
    });
  }

  TgMessagesList.fromList({
    List<TgMessage>? messages,
    List<tdlib.Message>? rawMessages,
  }) {
    if (messages != null) {
      for (var i in messages) {
        _messages[i.id] = i;
      }
    } else if (rawMessages != null) {
      for (var ir in rawMessages) {
        var i = TgMessage(ir);
        _messages[i.id] = i;
      }
    }
    _resort();
  }

  TgMessagesList();

  TgMessage? operator [](int id) {
    return _messages[id];
  }
}

class TgMessagesListCombine {
  final Map<int, bool> _isLoading = {};
  final Map<int, TgMessagesList> _messageLists = {};
  final Map<int, ChangeNotifierProvider<TgMessagesList>> _providers = {};

  TgMessagesList? operator [](int id) {
    return _messageLists[id];
  }

  ChangeNotifierProvider<TgMessagesList>? getProvider(int chatId) {
    return _providers[chatId];
  }

  Future<TgMessagesList> tryToLoadChat(int chatId) async {
    if (_messageLists[chatId] == null &&
        (_isLoading[chatId] ?? false) == false) {
      await add(chatId);
    } else if ((_isLoading[chatId] ?? false) == true) {
      while (_messageLists[chatId] == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }
    return _messageLists[chatId]!;
  }

  Future<void> add(int chatId) async {
    if (_messageLists.containsKey(chatId)) return;
    _messageLists[chatId] = TgMessagesList();
    _providers[chatId] = ChangeNotifierProvider(
      (_) => _messageLists[chatId]!,
    );
    _isLoading[chatId] = true;
  }

  Future<void> updateLastMessage(
    int chatId,
    tdlib.Message? message,
  ) async {
    if (_messageLists[chatId] == null && !(_isLoading[chatId] ?? false)) {
      return;
    }

    if (_isLoading[chatId] ?? false) {
      while (_messageLists[chatId] == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }

    _messageLists[chatId]!.insert(
      message == null ? null : TgMessage(message),
    );
  }

  Future<void> updateMessageContent(
    int chatId,
    int messageId,
    tdlib.MessageContent content,
  ) async {
    if (_messageLists[chatId] == null && !(_isLoading[chatId] ?? false)) {
      return;
    }

    if (_isLoading[chatId] ?? false) {
      while (_messageLists[chatId] == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }

    var oldMsg = session.messages[chatId]?[messageId];
    if (oldMsg == null) return;

    var newMsg = oldMsg.tgMsg.copyWith(
      content: content,
    );
    _messageLists[chatId]!.insert(TgMessage(newMsg));
  }

  Future<void> updateInteractionInfo(
    int chatId,
    int messageId,
    tdlib.MessageInteractionInfo? info,
  ) async {
    if (_messageLists[chatId] == null && !(_isLoading[chatId] ?? false)) {
      return;
    }

    if (_isLoading[chatId] ?? false) {
      while (_messageLists[chatId] == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }

    var oldMsg = session.messages[chatId]?[messageId];
    if (oldMsg == null) return;

    var newMsg = oldMsg.tgMsg.copyWith(
      interactionInfo: info,
    );
    _messageLists[chatId]!.insert(TgMessage(newMsg));
  }

  Future<void> updateEditData(
    int chatId,
    int messageId,
    tdlib.ReplyMarkup? info,
    int editDate,
  ) async {
    if (_messageLists[chatId] == null && !(_isLoading[chatId] ?? false)) {
      return;
    }

    if (_isLoading[chatId] ?? false) {
      while (_messageLists[chatId] == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }

    var oldMsg = session.messages[chatId]?[messageId];
    if (oldMsg == null) return;

    var newMsg = oldMsg.tgMsg.copyWith(
      replyMarkup: info,
      editDate: editDate,
    );
    _messageLists[chatId]!.insert(TgMessage(newMsg));
  }

  Future<void> updateMessages(
    int chatId,
    List<tdlib.Message?> messages,
  ) async {
    if (_messageLists[chatId] == null && !(_isLoading[chatId] ?? false)) {
      return;
    }

    if (_isLoading[chatId] ?? false) {
      while (_messageLists[chatId] == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }

    _messageLists[chatId]!.insertAll(
      messages
          .map(
            (e) => e == null ? null : TgMessage(e),
          )
          .toList(),
    );
  }

  Future<void> deleteMessages(
    int chatId,
    List<int> messageIds,
  ) async {
    if (_messageLists[chatId] == null && !(_isLoading[chatId] ?? false)) {
      return;
    }

    if (_isLoading[chatId] ?? false) {
      while (_messageLists[chatId] == null) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }

    _messageLists[chatId]!.deleteAll(messageIds);
  }

  void clear() {
    _messageLists.forEach((key, value) {
      value.clear();
    });
    _messageLists.clear();
  }
}

void messagesHandler(tdlib.TdObject object, TgSession session) async {
  switch (object.getConstructor()) {
    case tdlib.UpdateNewMessage.constructor:
      object as tdlib.UpdateNewMessage;
      session.messages.updateLastMessage(
        object.message.chatId,
        object.message,
      );
      return;
    case tdlib.UpdateDeleteMessages.constructor:
      object as tdlib.UpdateDeleteMessages;
      session.messages.deleteMessages(
        object.chatId,
        object.messageIds,
      );
      return;
    case tdlib.UpdateMessageContent.constructor:
      object as tdlib.UpdateMessageContent;
      session.messages.updateMessageContent(
        object.chatId,
        object.messageId,
        object.newContent,
      );
      return;
    case tdlib.UpdateMessageInteractionInfo.constructor:
      object as tdlib.UpdateMessageInteractionInfo;
      session.messages.updateInteractionInfo(
        object.chatId,
        object.messageId,
        object.interactionInfo,
      );
      break;
    case tdlib.UpdateMessageEdited.constructor:
      object as tdlib.UpdateMessageEdited;
      session.messages.updateEditData(
        object.chatId,
        object.messageId,
        object.replyMarkup,
        object.editDate,
      );
      break;
    default:
      return;
  }
}

int convertMessageId(int id) {
  if ((id % 1048576) == 0) {
    // TDLib message ID -> server one
    return id ~/ 1048576;
  } else {
    // Server message ID -> TDLib one
    return id * 1048576;
  }
}
