part of '../tdapi.dart';

/// **Chat** *(chat)* - basic class
///
/// A chat. (Can be a private chat, basic group, supergroup, or secret chat).
///
/// * [id]: Chat unique identifier.
/// * [type]: Type of the chat.
/// * [title]: Chat title.
/// * [photo]: Chat photo; may be null *(optional)*.
/// * [permissions]: Actions that non-administrator chat members are allowed to take in the chat.
/// * [lastMessage]: Last message in the chat; may be null *(optional)*.
/// * [positions]: Positions of the chat in chat lists.
/// * [messageSenderId]: Identifier of a user or chat that is selected to send messages in the chat; may be null if the user can't change message sender *(optional)*.
/// * [hasProtectedContent]: True, if chat content can't be saved locally, forwarded, or copied.
/// * [isMarkedAsUnread]: True, if the chat is marked as unread.
/// * [isBlocked]: True, if the chat is blocked by the current user and private messages from the chat can't be received.
/// * [hasScheduledMessages]: True, if the chat has scheduled messages.
/// * [canBeDeletedOnlyForSelf]: True, if the chat messages can be deleted only for the current user while other users will continue to see the messages.
/// * [canBeDeletedForAllUsers]: True, if the chat messages can be deleted for all users.
/// * [canBeReported]: True, if the chat can be reported to Telegram moderators through reportChat or reportChatPhoto.
/// * [defaultDisableNotification]: Default value of the disable_notification parameter, used when a message is sent to the chat.
/// * [unreadCount]: Number of unread messages in the chat.
/// * [lastReadInboxMessageId]: Identifier of the last read incoming message.
/// * [lastReadOutboxMessageId]: Identifier of the last read outgoing message.
/// * [unreadMentionCount]: Number of unread messages with a mention/reply in the chat.
/// * [unreadReactionCount]: Number of messages with unread reactions in the chat.
/// * [notificationSettings]: Notification settings for the chat.
/// * [availableReactions]: Types of reaction, available in the chat.
/// * [messageAutoDeleteTime]: Current message auto-delete or self-destruct timer setting for the chat, in seconds; 0 if disabled. Self-destruct timer in secret chats starts after the message or its content is viewed. Auto-delete timer in other chats starts from the send date.
/// * [themeName]: If non-empty, name of a theme, set for the chat.
/// * [actionBar]: Information about actions which must be possible to do through the chat action bar; may be null *(optional)*.
/// * [videoChat]: Information about video chat of the chat.
/// * [pendingJoinRequests]: Information about pending join requests; may be null *(optional)*.
/// * [replyMarkupMessageId]: Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat.
/// * [draftMessage]: A draft of a message in the chat; may be null *(optional)*.
/// * [clientData]: Application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used.
final class Chat extends TdObject {
  
  /// **Chat** *(chat)* - basic class
  ///
  /// A chat. (Can be a private chat, basic group, supergroup, or secret chat).
  ///
  /// * [id]: Chat unique identifier.
  /// * [type]: Type of the chat.
  /// * [title]: Chat title.
  /// * [photo]: Chat photo; may be null *(optional)*.
  /// * [permissions]: Actions that non-administrator chat members are allowed to take in the chat.
  /// * [lastMessage]: Last message in the chat; may be null *(optional)*.
  /// * [positions]: Positions of the chat in chat lists.
  /// * [messageSenderId]: Identifier of a user or chat that is selected to send messages in the chat; may be null if the user can't change message sender *(optional)*.
  /// * [hasProtectedContent]: True, if chat content can't be saved locally, forwarded, or copied.
  /// * [isMarkedAsUnread]: True, if the chat is marked as unread.
  /// * [isBlocked]: True, if the chat is blocked by the current user and private messages from the chat can't be received.
  /// * [hasScheduledMessages]: True, if the chat has scheduled messages.
  /// * [canBeDeletedOnlyForSelf]: True, if the chat messages can be deleted only for the current user while other users will continue to see the messages.
  /// * [canBeDeletedForAllUsers]: True, if the chat messages can be deleted for all users.
  /// * [canBeReported]: True, if the chat can be reported to Telegram moderators through reportChat or reportChatPhoto.
  /// * [defaultDisableNotification]: Default value of the disable_notification parameter, used when a message is sent to the chat.
  /// * [unreadCount]: Number of unread messages in the chat.
  /// * [lastReadInboxMessageId]: Identifier of the last read incoming message.
  /// * [lastReadOutboxMessageId]: Identifier of the last read outgoing message.
  /// * [unreadMentionCount]: Number of unread messages with a mention/reply in the chat.
  /// * [unreadReactionCount]: Number of messages with unread reactions in the chat.
  /// * [notificationSettings]: Notification settings for the chat.
  /// * [availableReactions]: Types of reaction, available in the chat.
  /// * [messageAutoDeleteTime]: Current message auto-delete or self-destruct timer setting for the chat, in seconds; 0 if disabled. Self-destruct timer in secret chats starts after the message or its content is viewed. Auto-delete timer in other chats starts from the send date.
  /// * [themeName]: If non-empty, name of a theme, set for the chat.
  /// * [actionBar]: Information about actions which must be possible to do through the chat action bar; may be null *(optional)*.
  /// * [videoChat]: Information about video chat of the chat.
  /// * [pendingJoinRequests]: Information about pending join requests; may be null *(optional)*.
  /// * [replyMarkupMessageId]: Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat.
  /// * [draftMessage]: A draft of a message in the chat; may be null *(optional)*.
  /// * [clientData]: Application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used.
  const Chat({
    required this.id,
    required this.type,
    required this.title,
    this.photo,
    required this.permissions,
    this.lastMessage,
    required this.positions,
    this.messageSenderId,
    required this.hasProtectedContent,
    required this.isMarkedAsUnread,
    required this.isBlocked,
    required this.hasScheduledMessages,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeReported,
    required this.defaultDisableNotification,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.notificationSettings,
    required this.availableReactions,
    required this.messageAutoDeleteTime,
    required this.themeName,
    this.actionBar,
    required this.videoChat,
    this.pendingJoinRequests,
    required this.replyMarkupMessageId,
    this.draftMessage,
    required this.clientData,
    this.extra,
    this.clientId,
  });
  
  /// Chat unique identifier
  final int id;

  /// Type of the chat
  final ChatType type;

  /// Chat title
  final String title;

  /// Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// Actions that non-administrator chat members are allowed to take in the chat
  final ChatPermissions permissions;

  /// Last message in the chat; may be null
  final Message? lastMessage;

  /// Positions of the chat in chat lists
  final List<ChatPosition> positions;

  /// Identifier of a user or chat that is selected to send messages in the chat; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// True, if chat content can't be saved locally, forwarded, or copied
  final bool hasProtectedContent;

  /// True, if the chat is marked as unread
  final bool isMarkedAsUnread;

  /// True, if the chat is blocked by the current user and private messages from the chat can't be received
  final bool isBlocked;

  /// True, if the chat has scheduled messages
  final bool hasScheduledMessages;

  /// True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
  final bool canBeDeletedOnlyForSelf;

  /// True, if the chat messages can be deleted for all users
  final bool canBeDeletedForAllUsers;

  /// True, if the chat can be reported to Telegram moderators through reportChat or reportChatPhoto
  final bool canBeReported;

  /// Default value of the disable_notification parameter, used when a message is sent to the chat
  final bool defaultDisableNotification;

  /// Number of unread messages in the chat
  final int unreadCount;

  /// Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// Number of unread messages with a mention/reply in the chat
  final int unreadMentionCount;

  /// Number of messages with unread reactions in the chat
  final int unreadReactionCount;

  /// Notification settings for the chat
  final ChatNotificationSettings notificationSettings;

  /// Types of reaction, available in the chat
  final ChatAvailableReactions availableReactions;

  /// Current message auto-delete or self-destruct timer setting for the chat, in seconds; 0 if disabled. Self-destruct timer in secret chats starts after the message or its content is viewed. Auto-delete timer in other chats starts from the send date
  final int messageAutoDeleteTime;

  /// If non-empty, name of a theme, set for the chat
  final String themeName;

  /// Information about actions which must be possible to do through the chat action bar; may be null
  final ChatActionBar? actionBar;

  /// Information about video chat of the chat
  final VideoChat videoChat;

  /// Information about pending join requests; may be null
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// A draft of a message in the chat; may be null
  final DraftMessage? draftMessage;

  /// Application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used
  final String clientData;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
    id: json['id'],
    type: ChatType.fromJson(json['type']),
    title: json['title'],
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    permissions: ChatPermissions.fromJson(json['permissions']),
    lastMessage: json['last_message'] == null ? null : Message.fromJson(json['last_message']),
    positions: List<ChatPosition>.from((json['positions'] ?? []).map((item) => ChatPosition.fromJson(item)).toList()),
    messageSenderId: json['message_sender_id'] == null ? null : MessageSender.fromJson(json['message_sender_id']),
    hasProtectedContent: json['has_protected_content'],
    isMarkedAsUnread: json['is_marked_as_unread'],
    isBlocked: json['is_blocked'],
    hasScheduledMessages: json['has_scheduled_messages'],
    canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
    canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
    canBeReported: json['can_be_reported'],
    defaultDisableNotification: json['default_disable_notification'],
    unreadCount: json['unread_count'],
    lastReadInboxMessageId: json['last_read_inbox_message_id'],
    lastReadOutboxMessageId: json['last_read_outbox_message_id'],
    unreadMentionCount: json['unread_mention_count'],
    unreadReactionCount: json['unread_reaction_count'],
    notificationSettings: ChatNotificationSettings.fromJson(json['notification_settings']),
    availableReactions: ChatAvailableReactions.fromJson(json['available_reactions']),
    messageAutoDeleteTime: json['message_auto_delete_time'],
    themeName: json['theme_name'],
    actionBar: json['action_bar'] == null ? null : ChatActionBar.fromJson(json['action_bar']),
    videoChat: VideoChat.fromJson(json['video_chat']),
    pendingJoinRequests: json['pending_join_requests'] == null ? null : ChatJoinRequestsInfo.fromJson(json['pending_join_requests']),
    replyMarkupMessageId: json['reply_markup_message_id'],
    draftMessage: json['draft_message'] == null ? null : DraftMessage.fromJson(json['draft_message']),
    clientData: json['client_data'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "type": type.toJson(),
      "title": title,
      "photo": photo?.toJson(),
      "permissions": permissions.toJson(),
      "last_message": lastMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
      "message_sender_id": messageSenderId?.toJson(),
      "has_protected_content": hasProtectedContent,
      "is_marked_as_unread": isMarkedAsUnread,
      "is_blocked": isBlocked,
      "has_scheduled_messages": hasScheduledMessages,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_be_reported": canBeReported,
      "default_disable_notification": defaultDisableNotification,
      "unread_count": unreadCount,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
      "unread_mention_count": unreadMentionCount,
      "unread_reaction_count": unreadReactionCount,
      "notification_settings": notificationSettings.toJson(),
      "available_reactions": availableReactions.toJson(),
      "message_auto_delete_time": messageAutoDeleteTime,
      "theme_name": themeName,
      "action_bar": actionBar?.toJson(),
      "video_chat": videoChat.toJson(),
      "pending_join_requests": pendingJoinRequests?.toJson(),
      "reply_markup_message_id": replyMarkupMessageId,
      "draft_message": draftMessage?.toJson(),
      "client_data": clientData,
		};
	}

  
  Chat copyWith({
    int? id,
    ChatType? type,
    String? title,
    ChatPhotoInfo? photo,
    ChatPermissions? permissions,
    Message? lastMessage,
    List<ChatPosition>? positions,
    MessageSender? messageSenderId,
    bool? hasProtectedContent,
    bool? isMarkedAsUnread,
    bool? isBlocked,
    bool? hasScheduledMessages,
    bool? canBeDeletedOnlyForSelf,
    bool? canBeDeletedForAllUsers,
    bool? canBeReported,
    bool? defaultDisableNotification,
    int? unreadCount,
    int? lastReadInboxMessageId,
    int? lastReadOutboxMessageId,
    int? unreadMentionCount,
    int? unreadReactionCount,
    ChatNotificationSettings? notificationSettings,
    ChatAvailableReactions? availableReactions,
    int? messageAutoDeleteTime,
    String? themeName,
    ChatActionBar? actionBar,
    VideoChat? videoChat,
    ChatJoinRequestsInfo? pendingJoinRequests,
    int? replyMarkupMessageId,
    DraftMessage? draftMessage,
    String? clientData,
    dynamic extra,
    int? clientId,
  }) => Chat(
    id: id ?? this.id,
    type: type ?? this.type,
    title: title ?? this.title,
    photo: photo ?? this.photo,
    permissions: permissions ?? this.permissions,
    lastMessage: lastMessage ?? this.lastMessage,
    positions: positions ?? this.positions,
    messageSenderId: messageSenderId ?? this.messageSenderId,
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
    isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
    isBlocked: isBlocked ?? this.isBlocked,
    hasScheduledMessages: hasScheduledMessages ?? this.hasScheduledMessages,
    canBeDeletedOnlyForSelf: canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
    canBeDeletedForAllUsers: canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
    canBeReported: canBeReported ?? this.canBeReported,
    defaultDisableNotification: defaultDisableNotification ?? this.defaultDisableNotification,
    unreadCount: unreadCount ?? this.unreadCount,
    lastReadInboxMessageId: lastReadInboxMessageId ?? this.lastReadInboxMessageId,
    lastReadOutboxMessageId: lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
    unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
    unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
    notificationSettings: notificationSettings ?? this.notificationSettings,
    availableReactions: availableReactions ?? this.availableReactions,
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
    themeName: themeName ?? this.themeName,
    actionBar: actionBar ?? this.actionBar,
    videoChat: videoChat ?? this.videoChat,
    pendingJoinRequests: pendingJoinRequests ?? this.pendingJoinRequests,
    replyMarkupMessageId: replyMarkupMessageId ?? this.replyMarkupMessageId,
    draftMessage: draftMessage ?? this.draftMessage,
    clientData: clientData ?? this.clientData,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
