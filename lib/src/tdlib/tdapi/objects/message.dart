part of '../tdapi.dart';

/// **Message** *(message)* - basic class
///
/// Describes a message.
///
/// * [id]: Message identifier; unique for the chat to which the message belongs.
/// * [senderId]: Identifier of the sender of the message.
/// * [chatId]: Chat identifier.
/// * [sendingState]: The sending state of the message; may be null *(optional)*.
/// * [schedulingState]: The scheduling state of the message; may be null *(optional)*.
/// * [isOutgoing]: True, if the message is outgoing.
/// * [isPinned]: True, if the message is pinned.
/// * [canBeEdited]: True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application.
/// * [canBeForwarded]: True, if the message can be forwarded.
/// * [canBeSaved]: True, if content of the message can be saved locally or copied.
/// * [canBeDeletedOnlyForSelf]: True, if the message can be deleted only for the current user while other users will continue to see it.
/// * [canBeDeletedForAllUsers]: True, if the message can be deleted for all users.
/// * [canGetAddedReactions]: True, if the list of added reactions is available through getMessageAddedReactions.
/// * [canGetStatistics]: True, if the message statistics are available through getMessageStatistics.
/// * [canGetMessageThread]: True, if information about the message thread is available through getMessageThread and getMessageThreadHistory.
/// * [canGetViewers]: True, if chat members already viewed the message can be received through getMessageViewers.
/// * [canGetMediaTimestampLinks]: True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink.
/// * [canReportReactions]: True, if reactions on the message can be reported through reportMessageReactions.
/// * [hasTimestampedMedia]: True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message.
/// * [isChannelPost]: True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts.
/// * [isTopicMessage]: True, if the message is a forum topic message.
/// * [containsUnreadMention]: True, if the message contains an unread mention for the current user.
/// * [date]: Point in time (Unix timestamp) when the message was sent.
/// * [editDate]: Point in time (Unix timestamp) when the message was last edited.
/// * [forwardInfo]: Information about the initial message sender; may be null *(optional)*.
/// * [interactionInfo]: Information about interactions with the message; may be null *(optional)*.
/// * [unreadReactions]: Information about unread reactions added to the message.
/// * [replyInChatId]: If non-zero, the identifier of the chat to which the replied message belongs; Currently, only messages in the Replies chat can have different reply_in_chat_id and chat_id.
/// * [replyToMessageId]: If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message.
/// * [messageThreadId]: If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs.
/// * [selfDestructTime]: The message's self-destruct time, in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the time expires.
/// * [selfDestructIn]: Time left before the message self-destruct timer expires, in seconds. If the self-destruct timer isn't started yet, equals to the value of the self_destruct_time field.
/// * [autoDeleteIn]: Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never. TDLib will send updateDeleteMessages or updateMessageContent once the time expires.
/// * [viaBotUserId]: If non-zero, the user identifier of the bot through which this message was sent.
/// * [authorSignature]: For channel posts and anonymous group messages, optional author signature.
/// * [mediaAlbumId]: Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums.
/// * [restrictionReason]: If non-empty, contains a human-readable description of the reason why access to this message must be restricted.
/// * [content]: Content of the message.
/// * [replyMarkup]: Reply markup for the message; may be null *(optional)*.
final class Message extends TdObject {
  
  /// **Message** *(message)* - basic class
  ///
  /// Describes a message.
  ///
  /// * [id]: Message identifier; unique for the chat to which the message belongs.
  /// * [senderId]: Identifier of the sender of the message.
  /// * [chatId]: Chat identifier.
  /// * [sendingState]: The sending state of the message; may be null *(optional)*.
  /// * [schedulingState]: The scheduling state of the message; may be null *(optional)*.
  /// * [isOutgoing]: True, if the message is outgoing.
  /// * [isPinned]: True, if the message is pinned.
  /// * [canBeEdited]: True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application.
  /// * [canBeForwarded]: True, if the message can be forwarded.
  /// * [canBeSaved]: True, if content of the message can be saved locally or copied.
  /// * [canBeDeletedOnlyForSelf]: True, if the message can be deleted only for the current user while other users will continue to see it.
  /// * [canBeDeletedForAllUsers]: True, if the message can be deleted for all users.
  /// * [canGetAddedReactions]: True, if the list of added reactions is available through getMessageAddedReactions.
  /// * [canGetStatistics]: True, if the message statistics are available through getMessageStatistics.
  /// * [canGetMessageThread]: True, if information about the message thread is available through getMessageThread and getMessageThreadHistory.
  /// * [canGetViewers]: True, if chat members already viewed the message can be received through getMessageViewers.
  /// * [canGetMediaTimestampLinks]: True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink.
  /// * [canReportReactions]: True, if reactions on the message can be reported through reportMessageReactions.
  /// * [hasTimestampedMedia]: True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message.
  /// * [isChannelPost]: True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts.
  /// * [isTopicMessage]: True, if the message is a forum topic message.
  /// * [containsUnreadMention]: True, if the message contains an unread mention for the current user.
  /// * [date]: Point in time (Unix timestamp) when the message was sent.
  /// * [editDate]: Point in time (Unix timestamp) when the message was last edited.
  /// * [forwardInfo]: Information about the initial message sender; may be null *(optional)*.
  /// * [interactionInfo]: Information about interactions with the message; may be null *(optional)*.
  /// * [unreadReactions]: Information about unread reactions added to the message.
  /// * [replyInChatId]: If non-zero, the identifier of the chat to which the replied message belongs; Currently, only messages in the Replies chat can have different reply_in_chat_id and chat_id.
  /// * [replyToMessageId]: If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message.
  /// * [messageThreadId]: If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs.
  /// * [selfDestructTime]: The message's self-destruct time, in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the time expires.
  /// * [selfDestructIn]: Time left before the message self-destruct timer expires, in seconds. If the self-destruct timer isn't started yet, equals to the value of the self_destruct_time field.
  /// * [autoDeleteIn]: Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never. TDLib will send updateDeleteMessages or updateMessageContent once the time expires.
  /// * [viaBotUserId]: If non-zero, the user identifier of the bot through which this message was sent.
  /// * [authorSignature]: For channel posts and anonymous group messages, optional author signature.
  /// * [mediaAlbumId]: Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums.
  /// * [restrictionReason]: If non-empty, contains a human-readable description of the reason why access to this message must be restricted.
  /// * [content]: Content of the message.
  /// * [replyMarkup]: Reply markup for the message; may be null *(optional)*.
  const Message({
    required this.id,
    required this.senderId,
    required this.chatId,
    this.sendingState,
    this.schedulingState,
    required this.isOutgoing,
    required this.isPinned,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeSaved,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canGetAddedReactions,
    required this.canGetStatistics,
    required this.canGetMessageThread,
    required this.canGetViewers,
    required this.canGetMediaTimestampLinks,
    required this.canReportReactions,
    required this.hasTimestampedMedia,
    required this.isChannelPost,
    required this.isTopicMessage,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.interactionInfo,
    required this.unreadReactions,
    required this.replyInChatId,
    required this.replyToMessageId,
    required this.messageThreadId,
    required this.selfDestructTime,
    required this.selfDestructIn,
    required this.autoDeleteIn,
    required this.viaBotUserId,
    required this.authorSignature,
    required this.mediaAlbumId,
    required this.restrictionReason,
    required this.content,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });
  
  /// Message identifier; unique for the chat to which the message belongs
  final int id;

  /// Identifier of the sender of the message
  final MessageSender senderId;

  /// Chat identifier
  final int chatId;

  /// The sending state of the message; may be null
  final MessageSendingState? sendingState;

  /// The scheduling state of the message; may be null
  final MessageSchedulingState? schedulingState;

  /// True, if the message is outgoing
  final bool isOutgoing;

  /// True, if the message is pinned
  final bool isPinned;

  /// True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application
  final bool canBeEdited;

  /// True, if the message can be forwarded
  final bool canBeForwarded;

  /// True, if content of the message can be saved locally or copied
  final bool canBeSaved;

  /// True, if the message can be deleted only for the current user while other users will continue to see it
  final bool canBeDeletedOnlyForSelf;

  /// True, if the message can be deleted for all users
  final bool canBeDeletedForAllUsers;

  /// True, if the list of added reactions is available through getMessageAddedReactions
  final bool canGetAddedReactions;

  /// True, if the message statistics are available through getMessageStatistics
  final bool canGetStatistics;

  /// True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
  final bool canGetMessageThread;

  /// True, if chat members already viewed the message can be received through getMessageViewers
  final bool canGetViewers;

  /// True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink
  final bool canGetMediaTimestampLinks;

  /// True, if reactions on the message can be reported through reportMessageReactions
  final bool canReportReactions;

  /// True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// True, if the message is a forum topic message
  final bool isTopicMessage;

  /// True, if the message contains an unread mention for the current user
  final bool containsUnreadMention;

  /// Point in time (Unix timestamp) when the message was sent
  final int date;

  /// Point in time (Unix timestamp) when the message was last edited
  final int editDate;

  /// Information about the initial message sender; may be null
  final MessageForwardInfo? forwardInfo;

  /// Information about interactions with the message; may be null
  final MessageInteractionInfo? interactionInfo;

  /// Information about unread reactions added to the message
  final List<UnreadReaction> unreadReactions;

  /// If non-zero, the identifier of the chat to which the replied message belongs; Currently, only messages in the Replies chat can have different reply_in_chat_id and chat_id
  final int replyInChatId;

  /// If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message
  final int replyToMessageId;

  /// If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;

  /// The message's self-destruct time, in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the time expires
  final int selfDestructTime;

  /// Time left before the message self-destruct timer expires, in seconds. If the self-destruct timer isn't started yet, equals to the value of the self_destruct_time field
  final double selfDestructIn;

  /// Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never. TDLib will send updateDeleteMessages or updateMessageContent once the time expires
  final double autoDeleteIn;

  /// If non-zero, the user identifier of the bot through which this message was sent
  final int viaBotUserId;

  /// For channel posts and anonymous group messages, optional author signature
  final String authorSignature;

  /// Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

  /// If non-empty, contains a human-readable description of the reason why access to this message must be restricted
  final String restrictionReason;

  /// Content of the message
  final MessageContent content;

  /// Reply markup for the message; may be null
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Message.fromJson(Map<String, dynamic> json) => Message(
    id: json['id'],
    senderId: MessageSender.fromJson(json['sender_id']),
    chatId: json['chat_id'],
    sendingState: json['sending_state'] == null ? null : MessageSendingState.fromJson(json['sending_state']),
    schedulingState: json['scheduling_state'] == null ? null : MessageSchedulingState.fromJson(json['scheduling_state']),
    isOutgoing: json['is_outgoing'],
    isPinned: json['is_pinned'],
    canBeEdited: json['can_be_edited'],
    canBeForwarded: json['can_be_forwarded'],
    canBeSaved: json['can_be_saved'],
    canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
    canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
    canGetAddedReactions: json['can_get_added_reactions'],
    canGetStatistics: json['can_get_statistics'],
    canGetMessageThread: json['can_get_message_thread'],
    canGetViewers: json['can_get_viewers'],
    canGetMediaTimestampLinks: json['can_get_media_timestamp_links'],
    canReportReactions: json['can_report_reactions'],
    hasTimestampedMedia: json['has_timestamped_media'],
    isChannelPost: json['is_channel_post'],
    isTopicMessage: json['is_topic_message'],
    containsUnreadMention: json['contains_unread_mention'],
    date: json['date'],
    editDate: json['edit_date'],
    forwardInfo: json['forward_info'] == null ? null : MessageForwardInfo.fromJson(json['forward_info']),
    interactionInfo: json['interaction_info'] == null ? null : MessageInteractionInfo.fromJson(json['interaction_info']),
    unreadReactions: List<UnreadReaction>.from((json['unread_reactions'] ?? []).map((item) => UnreadReaction.fromJson(item)).toList()),
    replyInChatId: json['reply_in_chat_id'],
    replyToMessageId: json['reply_to_message_id'],
    messageThreadId: json['message_thread_id'],
    selfDestructTime: json['self_destruct_time'] ?? 0,
    selfDestructIn: json['self_destruct_in'],
    autoDeleteIn: json['auto_delete_in'],
    viaBotUserId: json['via_bot_user_id'],
    authorSignature: json['author_signature'],
    mediaAlbumId: int.parse(json['media_album_id']),
    restrictionReason: json['restriction_reason'],
    content: MessageContent.fromJson(json['content']),
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "sender_id": senderId.toJson(),
      "chat_id": chatId,
      "sending_state": sendingState?.toJson(),
      "scheduling_state": schedulingState?.toJson(),
      "is_outgoing": isOutgoing,
      "is_pinned": isPinned,
      "can_be_edited": canBeEdited,
      "can_be_forwarded": canBeForwarded,
      "can_be_saved": canBeSaved,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_get_added_reactions": canGetAddedReactions,
      "can_get_statistics": canGetStatistics,
      "can_get_message_thread": canGetMessageThread,
      "can_get_viewers": canGetViewers,
      "can_get_media_timestamp_links": canGetMediaTimestampLinks,
      "can_report_reactions": canReportReactions,
      "has_timestamped_media": hasTimestampedMedia,
      "is_channel_post": isChannelPost,
      "is_topic_message": isTopicMessage,
      "contains_unread_mention": containsUnreadMention,
      "date": date,
      "edit_date": editDate,
      "forward_info": forwardInfo?.toJson(),
      "interaction_info": interactionInfo?.toJson(),
      "unread_reactions": unreadReactions.map((i) => i.toJson()).toList(),
      "reply_in_chat_id": replyInChatId,
      "reply_to_message_id": replyToMessageId,
      "message_thread_id": messageThreadId,
      "self_destruct_time": selfDestructTime,
      "self_destruct_in": selfDestructIn,
      "auto_delete_in": autoDeleteIn,
      "via_bot_user_id": viaBotUserId,
      "author_signature": authorSignature,
      "media_album_id": mediaAlbumId,
      "restriction_reason": restrictionReason,
      "content": content.toJson(),
      "reply_markup": replyMarkup?.toJson(),
		};
	}

  
  Message copyWith({
    int? id,
    MessageSender? senderId,
    int? chatId,
    MessageSendingState? sendingState,
    MessageSchedulingState? schedulingState,
    bool? isOutgoing,
    bool? isPinned,
    bool? canBeEdited,
    bool? canBeForwarded,
    bool? canBeSaved,
    bool? canBeDeletedOnlyForSelf,
    bool? canBeDeletedForAllUsers,
    bool? canGetAddedReactions,
    bool? canGetStatistics,
    bool? canGetMessageThread,
    bool? canGetViewers,
    bool? canGetMediaTimestampLinks,
    bool? canReportReactions,
    bool? hasTimestampedMedia,
    bool? isChannelPost,
    bool? isTopicMessage,
    bool? containsUnreadMention,
    int? date,
    int? editDate,
    MessageForwardInfo? forwardInfo,
    MessageInteractionInfo? interactionInfo,
    List<UnreadReaction>? unreadReactions,
    int? replyInChatId,
    int? replyToMessageId,
    int? messageThreadId,
    int? selfDestructTime,
    double? selfDestructIn,
    double? autoDeleteIn,
    int? viaBotUserId,
    String? authorSignature,
    int? mediaAlbumId,
    String? restrictionReason,
    MessageContent? content,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) => Message(
    id: id ?? this.id,
    senderId: senderId ?? this.senderId,
    chatId: chatId ?? this.chatId,
    sendingState: sendingState ?? this.sendingState,
    schedulingState: schedulingState ?? this.schedulingState,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    isPinned: isPinned ?? this.isPinned,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canBeForwarded: canBeForwarded ?? this.canBeForwarded,
    canBeSaved: canBeSaved ?? this.canBeSaved,
    canBeDeletedOnlyForSelf: canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
    canBeDeletedForAllUsers: canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
    canGetAddedReactions: canGetAddedReactions ?? this.canGetAddedReactions,
    canGetStatistics: canGetStatistics ?? this.canGetStatistics,
    canGetMessageThread: canGetMessageThread ?? this.canGetMessageThread,
    canGetViewers: canGetViewers ?? this.canGetViewers,
    canGetMediaTimestampLinks: canGetMediaTimestampLinks ?? this.canGetMediaTimestampLinks,
    canReportReactions: canReportReactions ?? this.canReportReactions,
    hasTimestampedMedia: hasTimestampedMedia ?? this.hasTimestampedMedia,
    isChannelPost: isChannelPost ?? this.isChannelPost,
    isTopicMessage: isTopicMessage ?? this.isTopicMessage,
    containsUnreadMention: containsUnreadMention ?? this.containsUnreadMention,
    date: date ?? this.date,
    editDate: editDate ?? this.editDate,
    forwardInfo: forwardInfo ?? this.forwardInfo,
    interactionInfo: interactionInfo ?? this.interactionInfo,
    unreadReactions: unreadReactions ?? this.unreadReactions,
    replyInChatId: replyInChatId ?? this.replyInChatId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    selfDestructTime: selfDestructTime ?? this.selfDestructTime,
    selfDestructIn: selfDestructIn ?? this.selfDestructIn,
    autoDeleteIn: autoDeleteIn ?? this.autoDeleteIn,
    viaBotUserId: viaBotUserId ?? this.viaBotUserId,
    authorSignature: authorSignature ?? this.authorSignature,
    mediaAlbumId: mediaAlbumId ?? this.mediaAlbumId,
    restrictionReason: restrictionReason ?? this.restrictionReason,
    content: content ?? this.content,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'message';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
