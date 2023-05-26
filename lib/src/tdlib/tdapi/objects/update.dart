part of '../tdapi.dart';

/// **Update** *(update)* - parent
///
/// Contains notifications about data changes.
sealed class Update extends TdObject {
  
  /// **Update** *(update)* - parent
  ///
  /// Contains notifications about data changes.
  const Update();
  
  /// a Update return type can be :
  /// * [UpdateAuthorizationState]
  /// * [UpdateNewMessage]
  /// * [UpdateMessageSendAcknowledged]
  /// * [UpdateMessageSendSucceeded]
  /// * [UpdateMessageSendFailed]
  /// * [UpdateMessageContent]
  /// * [UpdateMessageEdited]
  /// * [UpdateMessageIsPinned]
  /// * [UpdateMessageInteractionInfo]
  /// * [UpdateMessageContentOpened]
  /// * [UpdateMessageMentionRead]
  /// * [UpdateMessageUnreadReactions]
  /// * [UpdateMessageLiveLocationViewed]
  /// * [UpdateNewChat]
  /// * [UpdateChatTitle]
  /// * [UpdateChatPhoto]
  /// * [UpdateChatPermissions]
  /// * [UpdateChatLastMessage]
  /// * [UpdateChatPosition]
  /// * [UpdateChatReadInbox]
  /// * [UpdateChatReadOutbox]
  /// * [UpdateChatActionBar]
  /// * [UpdateChatAvailableReactions]
  /// * [UpdateChatDraftMessage]
  /// * [UpdateChatMessageSender]
  /// * [UpdateChatMessageAutoDeleteTime]
  /// * [UpdateChatNotificationSettings]
  /// * [UpdateChatPendingJoinRequests]
  /// * [UpdateChatReplyMarkup]
  /// * [UpdateChatTheme]
  /// * [UpdateChatUnreadMentionCount]
  /// * [UpdateChatUnreadReactionCount]
  /// * [UpdateChatVideoChat]
  /// * [UpdateChatDefaultDisableNotification]
  /// * [UpdateChatHasProtectedContent]
  /// * [UpdateChatHasScheduledMessages]
  /// * [UpdateChatIsBlocked]
  /// * [UpdateChatIsMarkedAsUnread]
  /// * [UpdateChatFilters]
  /// * [UpdateChatOnlineMemberCount]
  /// * [UpdateForumTopicInfo]
  /// * [UpdateScopeNotificationSettings]
  /// * [UpdateNotification]
  /// * [UpdateNotificationGroup]
  /// * [UpdateActiveNotifications]
  /// * [UpdateHavePendingNotifications]
  /// * [UpdateDeleteMessages]
  /// * [UpdateChatAction]
  /// * [UpdateUserStatus]
  /// * [UpdateUser]
  /// * [UpdateBasicGroup]
  /// * [UpdateSupergroup]
  /// * [UpdateSecretChat]
  /// * [UpdateUserFullInfo]
  /// * [UpdateBasicGroupFullInfo]
  /// * [UpdateSupergroupFullInfo]
  /// * [UpdateServiceNotification]
  /// * [UpdateFile]
  /// * [UpdateFileGenerationStart]
  /// * [UpdateFileGenerationStop]
  /// * [UpdateFileDownloads]
  /// * [UpdateFileAddedToDownloads]
  /// * [UpdateFileDownload]
  /// * [UpdateFileRemovedFromDownloads]
  /// * [UpdateCall]
  /// * [UpdateGroupCall]
  /// * [UpdateGroupCallParticipant]
  /// * [UpdateNewCallSignalingData]
  /// * [UpdateUserPrivacySettingRules]
  /// * [UpdateUnreadMessageCount]
  /// * [UpdateUnreadChatCount]
  /// * [UpdateOption]
  /// * [UpdateStickerSet]
  /// * [UpdateInstalledStickerSets]
  /// * [UpdateTrendingStickerSets]
  /// * [UpdateRecentStickers]
  /// * [UpdateFavoriteStickers]
  /// * [UpdateSavedAnimations]
  /// * [UpdateSavedNotificationSounds]
  /// * [UpdateSelectedBackground]
  /// * [UpdateChatThemes]
  /// * [UpdateLanguagePackStrings]
  /// * [UpdateConnectionState]
  /// * [UpdateTermsOfService]
  /// * [UpdateUsersNearby]
  /// * [UpdateAttachmentMenuBots]
  /// * [UpdateWebAppMessageSent]
  /// * [UpdateActiveEmojiReactions]
  /// * [UpdateDefaultReactionType]
  /// * [UpdateDiceEmojis]
  /// * [UpdateAnimatedEmojiMessageClicked]
  /// * [UpdateAnimationSearchParameters]
  /// * [UpdateSuggestedActions]
  /// * [UpdateNewInlineQuery]
  /// * [UpdateNewChosenInlineResult]
  /// * [UpdateNewCallbackQuery]
  /// * [UpdateNewInlineCallbackQuery]
  /// * [UpdateNewShippingQuery]
  /// * [UpdateNewPreCheckoutQuery]
  /// * [UpdateNewCustomEvent]
  /// * [UpdateNewCustomQuery]
  /// * [UpdatePoll]
  /// * [UpdatePollAnswer]
  /// * [UpdateChatMember]
  /// * [UpdateNewChatJoinRequest]
  factory Update.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UpdateAuthorizationState.objectType:
        return UpdateAuthorizationState.fromJson(json);
      case UpdateNewMessage.objectType:
        return UpdateNewMessage.fromJson(json);
      case UpdateMessageSendAcknowledged.objectType:
        return UpdateMessageSendAcknowledged.fromJson(json);
      case UpdateMessageSendSucceeded.objectType:
        return UpdateMessageSendSucceeded.fromJson(json);
      case UpdateMessageSendFailed.objectType:
        return UpdateMessageSendFailed.fromJson(json);
      case UpdateMessageContent.objectType:
        return UpdateMessageContent.fromJson(json);
      case UpdateMessageEdited.objectType:
        return UpdateMessageEdited.fromJson(json);
      case UpdateMessageIsPinned.objectType:
        return UpdateMessageIsPinned.fromJson(json);
      case UpdateMessageInteractionInfo.objectType:
        return UpdateMessageInteractionInfo.fromJson(json);
      case UpdateMessageContentOpened.objectType:
        return UpdateMessageContentOpened.fromJson(json);
      case UpdateMessageMentionRead.objectType:
        return UpdateMessageMentionRead.fromJson(json);
      case UpdateMessageUnreadReactions.objectType:
        return UpdateMessageUnreadReactions.fromJson(json);
      case UpdateMessageLiveLocationViewed.objectType:
        return UpdateMessageLiveLocationViewed.fromJson(json);
      case UpdateNewChat.objectType:
        return UpdateNewChat.fromJson(json);
      case UpdateChatTitle.objectType:
        return UpdateChatTitle.fromJson(json);
      case UpdateChatPhoto.objectType:
        return UpdateChatPhoto.fromJson(json);
      case UpdateChatPermissions.objectType:
        return UpdateChatPermissions.fromJson(json);
      case UpdateChatLastMessage.objectType:
        return UpdateChatLastMessage.fromJson(json);
      case UpdateChatPosition.objectType:
        return UpdateChatPosition.fromJson(json);
      case UpdateChatReadInbox.objectType:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateChatReadOutbox.objectType:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateChatActionBar.objectType:
        return UpdateChatActionBar.fromJson(json);
      case UpdateChatAvailableReactions.objectType:
        return UpdateChatAvailableReactions.fromJson(json);
      case UpdateChatDraftMessage.objectType:
        return UpdateChatDraftMessage.fromJson(json);
      case UpdateChatMessageSender.objectType:
        return UpdateChatMessageSender.fromJson(json);
      case UpdateChatMessageAutoDeleteTime.objectType:
        return UpdateChatMessageAutoDeleteTime.fromJson(json);
      case UpdateChatNotificationSettings.objectType:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateChatPendingJoinRequests.objectType:
        return UpdateChatPendingJoinRequests.fromJson(json);
      case UpdateChatReplyMarkup.objectType:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatTheme.objectType:
        return UpdateChatTheme.fromJson(json);
      case UpdateChatUnreadMentionCount.objectType:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateChatUnreadReactionCount.objectType:
        return UpdateChatUnreadReactionCount.fromJson(json);
      case UpdateChatVideoChat.objectType:
        return UpdateChatVideoChat.fromJson(json);
      case UpdateChatDefaultDisableNotification.objectType:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateChatHasProtectedContent.objectType:
        return UpdateChatHasProtectedContent.fromJson(json);
      case UpdateChatHasScheduledMessages.objectType:
        return UpdateChatHasScheduledMessages.fromJson(json);
      case UpdateChatIsBlocked.objectType:
        return UpdateChatIsBlocked.fromJson(json);
      case UpdateChatIsMarkedAsUnread.objectType:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateChatFilters.objectType:
        return UpdateChatFilters.fromJson(json);
      case UpdateChatOnlineMemberCount.objectType:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateForumTopicInfo.objectType:
        return UpdateForumTopicInfo.fromJson(json);
      case UpdateScopeNotificationSettings.objectType:
        return UpdateScopeNotificationSettings.fromJson(json);
      case UpdateNotification.objectType:
        return UpdateNotification.fromJson(json);
      case UpdateNotificationGroup.objectType:
        return UpdateNotificationGroup.fromJson(json);
      case UpdateActiveNotifications.objectType:
        return UpdateActiveNotifications.fromJson(json);
      case UpdateHavePendingNotifications.objectType:
        return UpdateHavePendingNotifications.fromJson(json);
      case UpdateDeleteMessages.objectType:
        return UpdateDeleteMessages.fromJson(json);
      case UpdateChatAction.objectType:
        return UpdateChatAction.fromJson(json);
      case UpdateUserStatus.objectType:
        return UpdateUserStatus.fromJson(json);
      case UpdateUser.objectType:
        return UpdateUser.fromJson(json);
      case UpdateBasicGroup.objectType:
        return UpdateBasicGroup.fromJson(json);
      case UpdateSupergroup.objectType:
        return UpdateSupergroup.fromJson(json);
      case UpdateSecretChat.objectType:
        return UpdateSecretChat.fromJson(json);
      case UpdateUserFullInfo.objectType:
        return UpdateUserFullInfo.fromJson(json);
      case UpdateBasicGroupFullInfo.objectType:
        return UpdateBasicGroupFullInfo.fromJson(json);
      case UpdateSupergroupFullInfo.objectType:
        return UpdateSupergroupFullInfo.fromJson(json);
      case UpdateServiceNotification.objectType:
        return UpdateServiceNotification.fromJson(json);
      case UpdateFile.objectType:
        return UpdateFile.fromJson(json);
      case UpdateFileGenerationStart.objectType:
        return UpdateFileGenerationStart.fromJson(json);
      case UpdateFileGenerationStop.objectType:
        return UpdateFileGenerationStop.fromJson(json);
      case UpdateFileDownloads.objectType:
        return UpdateFileDownloads.fromJson(json);
      case UpdateFileAddedToDownloads.objectType:
        return UpdateFileAddedToDownloads.fromJson(json);
      case UpdateFileDownload.objectType:
        return UpdateFileDownload.fromJson(json);
      case UpdateFileRemovedFromDownloads.objectType:
        return UpdateFileRemovedFromDownloads.fromJson(json);
      case UpdateCall.objectType:
        return UpdateCall.fromJson(json);
      case UpdateGroupCall.objectType:
        return UpdateGroupCall.fromJson(json);
      case UpdateGroupCallParticipant.objectType:
        return UpdateGroupCallParticipant.fromJson(json);
      case UpdateNewCallSignalingData.objectType:
        return UpdateNewCallSignalingData.fromJson(json);
      case UpdateUserPrivacySettingRules.objectType:
        return UpdateUserPrivacySettingRules.fromJson(json);
      case UpdateUnreadMessageCount.objectType:
        return UpdateUnreadMessageCount.fromJson(json);
      case UpdateUnreadChatCount.objectType:
        return UpdateUnreadChatCount.fromJson(json);
      case UpdateOption.objectType:
        return UpdateOption.fromJson(json);
      case UpdateStickerSet.objectType:
        return UpdateStickerSet.fromJson(json);
      case UpdateInstalledStickerSets.objectType:
        return UpdateInstalledStickerSets.fromJson(json);
      case UpdateTrendingStickerSets.objectType:
        return UpdateTrendingStickerSets.fromJson(json);
      case UpdateRecentStickers.objectType:
        return UpdateRecentStickers.fromJson(json);
      case UpdateFavoriteStickers.objectType:
        return UpdateFavoriteStickers.fromJson(json);
      case UpdateSavedAnimations.objectType:
        return UpdateSavedAnimations.fromJson(json);
      case UpdateSavedNotificationSounds.objectType:
        return UpdateSavedNotificationSounds.fromJson(json);
      case UpdateSelectedBackground.objectType:
        return UpdateSelectedBackground.fromJson(json);
      case UpdateChatThemes.objectType:
        return UpdateChatThemes.fromJson(json);
      case UpdateLanguagePackStrings.objectType:
        return UpdateLanguagePackStrings.fromJson(json);
      case UpdateConnectionState.objectType:
        return UpdateConnectionState.fromJson(json);
      case UpdateTermsOfService.objectType:
        return UpdateTermsOfService.fromJson(json);
      case UpdateUsersNearby.objectType:
        return UpdateUsersNearby.fromJson(json);
      case UpdateAttachmentMenuBots.objectType:
        return UpdateAttachmentMenuBots.fromJson(json);
      case UpdateWebAppMessageSent.objectType:
        return UpdateWebAppMessageSent.fromJson(json);
      case UpdateActiveEmojiReactions.objectType:
        return UpdateActiveEmojiReactions.fromJson(json);
      case UpdateDefaultReactionType.objectType:
        return UpdateDefaultReactionType.fromJson(json);
      case UpdateDiceEmojis.objectType:
        return UpdateDiceEmojis.fromJson(json);
      case UpdateAnimatedEmojiMessageClicked.objectType:
        return UpdateAnimatedEmojiMessageClicked.fromJson(json);
      case UpdateAnimationSearchParameters.objectType:
        return UpdateAnimationSearchParameters.fromJson(json);
      case UpdateSuggestedActions.objectType:
        return UpdateSuggestedActions.fromJson(json);
      case UpdateNewInlineQuery.objectType:
        return UpdateNewInlineQuery.fromJson(json);
      case UpdateNewChosenInlineResult.objectType:
        return UpdateNewChosenInlineResult.fromJson(json);
      case UpdateNewCallbackQuery.objectType:
        return UpdateNewCallbackQuery.fromJson(json);
      case UpdateNewInlineCallbackQuery.objectType:
        return UpdateNewInlineCallbackQuery.fromJson(json);
      case UpdateNewShippingQuery.objectType:
        return UpdateNewShippingQuery.fromJson(json);
      case UpdateNewPreCheckoutQuery.objectType:
        return UpdateNewPreCheckoutQuery.fromJson(json);
      case UpdateNewCustomEvent.objectType:
        return UpdateNewCustomEvent.fromJson(json);
      case UpdateNewCustomQuery.objectType:
        return UpdateNewCustomQuery.fromJson(json);
      case UpdatePoll.objectType:
        return UpdatePoll.fromJson(json);
      case UpdatePollAnswer.objectType:
        return UpdatePollAnswer.fromJson(json);
      case UpdateChatMember.objectType:
        return UpdateChatMember.fromJson(json);
      case UpdateNewChatJoinRequest.objectType:
        return UpdateNewChatJoinRequest.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of Update)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  Update copyWith();

  static const String objectType = 'update';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateAuthorizationState** *(updateAuthorizationState)* - child of Update
///
/// The user authorization state has changed.
///
/// * [authorizationState]: New authorization state.
final class UpdateAuthorizationState extends Update {
  
  /// **UpdateAuthorizationState** *(updateAuthorizationState)* - child of Update
  ///
  /// The user authorization state has changed.
  ///
  /// * [authorizationState]: New authorization state.
  const UpdateAuthorizationState({
    required this.authorizationState,
    this.extra,
    this.clientId,
  });
  
  /// New authorization state
  final AuthorizationState authorizationState;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateAuthorizationState.fromJson(Map<String, dynamic> json) => UpdateAuthorizationState(
    authorizationState: AuthorizationState.fromJson(json['authorization_state']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "authorization_state": authorizationState.toJson(),
		};
	}

  
  @override
  UpdateAuthorizationState copyWith({
    AuthorizationState? authorizationState,
    dynamic extra,
    int? clientId,
  }) => UpdateAuthorizationState(
    authorizationState: authorizationState ?? this.authorizationState,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateAuthorizationState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewMessage** *(updateNewMessage)* - child of Update
///
/// A new message was received; can also be an outgoing message.
///
/// * [message]: The new message.
final class UpdateNewMessage extends Update {
  
  /// **UpdateNewMessage** *(updateNewMessage)* - child of Update
  ///
  /// A new message was received; can also be an outgoing message.
  ///
  /// * [message]: The new message.
  const UpdateNewMessage({
    required this.message,
    this.extra,
    this.clientId,
  });
  
  /// The new message
  final Message message;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewMessage.fromJson(Map<String, dynamic> json) => UpdateNewMessage(
    message: Message.fromJson(json['message']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message": message.toJson(),
		};
	}

  
  @override
  UpdateNewMessage copyWith({
    Message? message,
    dynamic extra,
    int? clientId,
  }) => UpdateNewMessage(
    message: message ?? this.message,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageSendAcknowledged** *(updateMessageSendAcknowledged)* - child of Update
///
/// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed.. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message.
///
/// * [chatId]: The chat identifier of the sent message.
/// * [messageId]: A temporary message identifier.
final class UpdateMessageSendAcknowledged extends Update {
  
  /// **UpdateMessageSendAcknowledged** *(updateMessageSendAcknowledged)* - child of Update
  ///
  /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed.. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message.
  ///
  /// * [chatId]: The chat identifier of the sent message.
  /// * [messageId]: A temporary message identifier.
  const UpdateMessageSendAcknowledged({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });
  
  /// The chat identifier of the sent message
  final int chatId;

  /// A temporary message identifier
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) => UpdateMessageSendAcknowledged(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
		};
	}

  
  @override
  UpdateMessageSendAcknowledged copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageSendAcknowledged(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageSendAcknowledged';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageSendSucceeded** *(updateMessageSendSucceeded)* - child of Update
///
/// A message has been successfully sent.
///
/// * [message]: The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change.
/// * [oldMessageId]: The previous temporary message identifier.
final class UpdateMessageSendSucceeded extends Update {
  
  /// **UpdateMessageSendSucceeded** *(updateMessageSendSucceeded)* - child of Update
  ///
  /// A message has been successfully sent.
  ///
  /// * [message]: The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change.
  /// * [oldMessageId]: The previous temporary message identifier.
  const UpdateMessageSendSucceeded({
    required this.message,
    required this.oldMessageId,
    this.extra,
    this.clientId,
  });
  
  /// The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change 
  final Message message;

  /// The previous temporary message identifier
  final int oldMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) => UpdateMessageSendSucceeded(
    message: Message.fromJson(json['message']),
    oldMessageId: json['old_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
		};
	}

  
  @override
  UpdateMessageSendSucceeded copyWith({
    Message? message,
    int? oldMessageId,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageSendSucceeded(
    message: message ?? this.message,
    oldMessageId: oldMessageId ?? this.oldMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageSendSucceeded';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageSendFailed** *(updateMessageSendFailed)* - child of Update
///
/// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update.
///
/// * [message]: The failed to send message.
/// * [oldMessageId]: The previous temporary message identifier.
/// * [errorCode]: An error code.
/// * [errorMessage]: Error message.
final class UpdateMessageSendFailed extends Update {
  
  /// **UpdateMessageSendFailed** *(updateMessageSendFailed)* - child of Update
  ///
  /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update.
  ///
  /// * [message]: The failed to send message.
  /// * [oldMessageId]: The previous temporary message identifier.
  /// * [errorCode]: An error code.
  /// * [errorMessage]: Error message.
  const UpdateMessageSendFailed({
    required this.message,
    required this.oldMessageId,
    required this.errorCode,
    required this.errorMessage,
    this.extra,
    this.clientId,
  });
  
  /// The failed to send message
  final Message message;

  /// The previous temporary message identifier
  final int oldMessageId;

  /// An error code
  final int errorCode;

  /// Error message
  final String errorMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) => UpdateMessageSendFailed(
    message: Message.fromJson(json['message']),
    oldMessageId: json['old_message_id'],
    errorCode: json['error_code'],
    errorMessage: json['error_message'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
      "error_code": errorCode,
      "error_message": errorMessage,
		};
	}

  
  @override
  UpdateMessageSendFailed copyWith({
    Message? message,
    int? oldMessageId,
    int? errorCode,
    String? errorMessage,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageSendFailed(
    message: message ?? this.message,
    oldMessageId: oldMessageId ?? this.oldMessageId,
    errorCode: errorCode ?? this.errorCode,
    errorMessage: errorMessage ?? this.errorMessage,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageSendFailed';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageContent** *(updateMessageContent)* - child of Update
///
/// The message content has changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [newContent]: New message content.
final class UpdateMessageContent extends Update {
  
  /// **UpdateMessageContent** *(updateMessageContent)* - child of Update
  ///
  /// The message content has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [newContent]: New message content.
  const UpdateMessageContent({
    required this.chatId,
    required this.messageId,
    required this.newContent,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Message identifier 
  final int messageId;

  /// New message content
  final MessageContent newContent;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageContent.fromJson(Map<String, dynamic> json) => UpdateMessageContent(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    newContent: MessageContent.fromJson(json['new_content']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "new_content": newContent.toJson(),
		};
	}

  
  @override
  UpdateMessageContent copyWith({
    int? chatId,
    int? messageId,
    MessageContent? newContent,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageContent(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    newContent: newContent ?? this.newContent,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageContent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageEdited** *(updateMessageEdited)* - child of Update
///
/// A message was edited. Changes in the message content will come in a separate updateMessageContent.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [editDate]: Point in time (Unix timestamp) when the message was edited.
/// * [replyMarkup]: New message reply markup; may be null *(optional)*.
final class UpdateMessageEdited extends Update {
  
  /// **UpdateMessageEdited** *(updateMessageEdited)* - child of Update
  ///
  /// A message was edited. Changes in the message content will come in a separate updateMessageContent.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [editDate]: Point in time (Unix timestamp) when the message was edited.
  /// * [replyMarkup]: New message reply markup; may be null *(optional)*.
  const UpdateMessageEdited({
    required this.chatId,
    required this.messageId,
    required this.editDate,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// Point in time (Unix timestamp) when the message was edited
  final int editDate;

  /// New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageEdited.fromJson(Map<String, dynamic> json) => UpdateMessageEdited(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    editDate: json['edit_date'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "edit_date": editDate,
      "reply_markup": replyMarkup?.toJson(),
		};
	}

  
  @override
  UpdateMessageEdited copyWith({
    int? chatId,
    int? messageId,
    int? editDate,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageEdited(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    editDate: editDate ?? this.editDate,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageEdited';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageIsPinned** *(updateMessageIsPinned)* - child of Update
///
/// The message pinned state was changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: The message identifier.
/// * [isPinned]: True, if the message is pinned.
final class UpdateMessageIsPinned extends Update {
  
  /// **UpdateMessageIsPinned** *(updateMessageIsPinned)* - child of Update
  ///
  /// The message pinned state was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: The message identifier.
  /// * [isPinned]: True, if the message is pinned.
  const UpdateMessageIsPinned({
    required this.chatId,
    required this.messageId,
    required this.isPinned,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The message identifier 
  final int messageId;

  /// True, if the message is pinned
  final bool isPinned;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageIsPinned.fromJson(Map<String, dynamic> json) => UpdateMessageIsPinned(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    isPinned: json['is_pinned'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "is_pinned": isPinned,
		};
	}

  
  @override
  UpdateMessageIsPinned copyWith({
    int? chatId,
    int? messageId,
    bool? isPinned,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageIsPinned(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    isPinned: isPinned ?? this.isPinned,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageIsPinned';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageInteractionInfo** *(updateMessageInteractionInfo)* - child of Update
///
/// The information about interactions with a message has changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [interactionInfo]: New information about interactions with the message; may be null *(optional)*.
final class UpdateMessageInteractionInfo extends Update {
  
  /// **UpdateMessageInteractionInfo** *(updateMessageInteractionInfo)* - child of Update
  ///
  /// The information about interactions with a message has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [interactionInfo]: New information about interactions with the message; may be null *(optional)*.
  const UpdateMessageInteractionInfo({
    required this.chatId,
    required this.messageId,
    this.interactionInfo,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Message identifier 
  final int messageId;

  /// New information about interactions with the message; may be null
  final MessageInteractionInfo? interactionInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json) => UpdateMessageInteractionInfo(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    interactionInfo: json['interaction_info'] == null ? null : MessageInteractionInfo.fromJson(json['interaction_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "interaction_info": interactionInfo?.toJson(),
		};
	}

  
  @override
  UpdateMessageInteractionInfo copyWith({
    int? chatId,
    int? messageId,
    MessageInteractionInfo? interactionInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageInteractionInfo(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    interactionInfo: interactionInfo ?? this.interactionInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageInteractionInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageContentOpened** *(updateMessageContentOpened)* - child of Update
///
/// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
final class UpdateMessageContentOpened extends Update {
  
  /// **UpdateMessageContentOpened** *(updateMessageContentOpened)* - child of Update
  ///
  /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  const UpdateMessageContentOpened({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Message identifier
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) => UpdateMessageContentOpened(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
		};
	}

  
  @override
  UpdateMessageContentOpened copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageContentOpened(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageContentOpened';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageMentionRead** *(updateMessageMentionRead)* - child of Update
///
/// A message with an unread mention was read.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [unreadMentionCount]: The new number of unread mention messages left in the chat.
final class UpdateMessageMentionRead extends Update {
  
  /// **UpdateMessageMentionRead** *(updateMessageMentionRead)* - child of Update
  ///
  /// A message with an unread mention was read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [unreadMentionCount]: The new number of unread mention messages left in the chat.
  const UpdateMessageMentionRead({
    required this.chatId,
    required this.messageId,
    required this.unreadMentionCount,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Message identifier 
  final int messageId;

  /// The new number of unread mention messages left in the chat
  final int unreadMentionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) => UpdateMessageMentionRead(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    unreadMentionCount: json['unread_mention_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "unread_mention_count": unreadMentionCount,
		};
	}

  
  @override
  UpdateMessageMentionRead copyWith({
    int? chatId,
    int? messageId,
    int? unreadMentionCount,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageMentionRead(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageMentionRead';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageUnreadReactions** *(updateMessageUnreadReactions)* - child of Update
///
/// The list of unread reactions added to a message was changed.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [unreadReactions]: The new list of unread reactions.
/// * [unreadReactionCount]: The new number of messages with unread reactions left in the chat.
final class UpdateMessageUnreadReactions extends Update {
  
  /// **UpdateMessageUnreadReactions** *(updateMessageUnreadReactions)* - child of Update
  ///
  /// The list of unread reactions added to a message was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [unreadReactions]: The new list of unread reactions.
  /// * [unreadReactionCount]: The new number of messages with unread reactions left in the chat.
  const UpdateMessageUnreadReactions({
    required this.chatId,
    required this.messageId,
    required this.unreadReactions,
    required this.unreadReactionCount,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// The new list of unread reactions
  final List<UnreadReaction> unreadReactions;

  /// The new number of messages with unread reactions left in the chat
  final int unreadReactionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageUnreadReactions.fromJson(Map<String, dynamic> json) => UpdateMessageUnreadReactions(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    unreadReactions: List<UnreadReaction>.from((json['unread_reactions'] ?? []).map((item) => UnreadReaction.fromJson(item)).toList()),
    unreadReactionCount: json['unread_reaction_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "unread_reactions": unreadReactions.map((i) => i.toJson()).toList(),
      "unread_reaction_count": unreadReactionCount,
		};
	}

  
  @override
  UpdateMessageUnreadReactions copyWith({
    int? chatId,
    int? messageId,
    List<UnreadReaction>? unreadReactions,
    int? unreadReactionCount,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageUnreadReactions(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    unreadReactions: unreadReactions ?? this.unreadReactions,
    unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageUnreadReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateMessageLiveLocationViewed** *(updateMessageLiveLocationViewed)* - child of Update
///
/// A message with a live location was viewed. When the update is received, the application is supposed to update the live location.
///
/// * [chatId]: Identifier of the chat with the live location message.
/// * [messageId]: Identifier of the message with live location.
final class UpdateMessageLiveLocationViewed extends Update {
  
  /// **UpdateMessageLiveLocationViewed** *(updateMessageLiveLocationViewed)* - child of Update
  ///
  /// A message with a live location was viewed. When the update is received, the application is supposed to update the live location.
  ///
  /// * [chatId]: Identifier of the chat with the live location message.
  /// * [messageId]: Identifier of the message with live location.
  const UpdateMessageLiveLocationViewed({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the chat with the live location message
  final int chatId;

  /// Identifier of the message with live location
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json) => UpdateMessageLiveLocationViewed(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
		};
	}

  
  @override
  UpdateMessageLiveLocationViewed copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageLiveLocationViewed(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateMessageLiveLocationViewed';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewChat** *(updateNewChat)* - child of Update
///
/// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates.
///
/// * [chat]: The chat.
final class UpdateNewChat extends Update {
  
  /// **UpdateNewChat** *(updateNewChat)* - child of Update
  ///
  /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates.
  ///
  /// * [chat]: The chat.
  const UpdateNewChat({
    required this.chat,
    this.extra,
    this.clientId,
  });
  
  /// The chat
  final Chat chat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewChat.fromJson(Map<String, dynamic> json) => UpdateNewChat(
    chat: Chat.fromJson(json['chat']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat": chat.toJson(),
		};
	}

  
  @override
  UpdateNewChat copyWith({
    Chat? chat,
    dynamic extra,
    int? clientId,
  }) => UpdateNewChat(
    chat: chat ?? this.chat,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatTitle** *(updateChatTitle)* - child of Update
///
/// The title of a chat was changed.
///
/// * [chatId]: Chat identifier.
/// * [title]: The new chat title.
final class UpdateChatTitle extends Update {
  
  /// **UpdateChatTitle** *(updateChatTitle)* - child of Update
  ///
  /// The title of a chat was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [title]: The new chat title.
  const UpdateChatTitle({
    required this.chatId,
    required this.title,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new chat title
  final String title;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatTitle.fromJson(Map<String, dynamic> json) => UpdateChatTitle(
    chatId: json['chat_id'],
    title: json['title'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "title": title,
		};
	}

  
  @override
  UpdateChatTitle copyWith({
    int? chatId,
    String? title,
    dynamic extra,
    int? clientId,
  }) => UpdateChatTitle(
    chatId: chatId ?? this.chatId,
    title: title ?? this.title,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatTitle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatPhoto** *(updateChatPhoto)* - child of Update
///
/// A chat photo was changed.
///
/// * [chatId]: Chat identifier.
/// * [photo]: The new chat photo; may be null *(optional)*.
final class UpdateChatPhoto extends Update {
  
  /// **UpdateChatPhoto** *(updateChatPhoto)* - child of Update
  ///
  /// A chat photo was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [photo]: The new chat photo; may be null *(optional)*.
  const UpdateChatPhoto({
    required this.chatId,
    this.photo,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatPhoto.fromJson(Map<String, dynamic> json) => UpdateChatPhoto(
    chatId: json['chat_id'],
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "photo": photo?.toJson(),
		};
	}

  
  @override
  UpdateChatPhoto copyWith({
    int? chatId,
    ChatPhotoInfo? photo,
    dynamic extra,
    int? clientId,
  }) => UpdateChatPhoto(
    chatId: chatId ?? this.chatId,
    photo: photo ?? this.photo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatPermissions** *(updateChatPermissions)* - child of Update
///
/// Chat permissions was changed.
///
/// * [chatId]: Chat identifier.
/// * [permissions]: The new chat permissions.
final class UpdateChatPermissions extends Update {
  
  /// **UpdateChatPermissions** *(updateChatPermissions)* - child of Update
  ///
  /// Chat permissions was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [permissions]: The new chat permissions.
  const UpdateChatPermissions({
    required this.chatId,
    required this.permissions,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new chat permissions
  final ChatPermissions permissions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatPermissions.fromJson(Map<String, dynamic> json) => UpdateChatPermissions(
    chatId: json['chat_id'],
    permissions: ChatPermissions.fromJson(json['permissions']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "permissions": permissions.toJson(),
		};
	}

  
  @override
  UpdateChatPermissions copyWith({
    int? chatId,
    ChatPermissions? permissions,
    dynamic extra,
    int? clientId,
  }) => UpdateChatPermissions(
    chatId: chatId ?? this.chatId,
    permissions: permissions ?? this.permissions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatPermissions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatLastMessage** *(updateChatLastMessage)* - child of Update
///
/// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case.
///
/// * [chatId]: Chat identifier.
/// * [lastMessage]: The new last message in the chat; may be null *(optional)*.
/// * [positions]: The new chat positions in the chat lists.
final class UpdateChatLastMessage extends Update {
  
  /// **UpdateChatLastMessage** *(updateChatLastMessage)* - child of Update
  ///
  /// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case.
  ///
  /// * [chatId]: Chat identifier.
  /// * [lastMessage]: The new last message in the chat; may be null *(optional)*.
  /// * [positions]: The new chat positions in the chat lists.
  const UpdateChatLastMessage({
    required this.chatId,
    this.lastMessage,
    required this.positions,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// The new last message in the chat; may be null
  final Message? lastMessage;

  /// The new chat positions in the chat lists
  final List<ChatPosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatLastMessage.fromJson(Map<String, dynamic> json) => UpdateChatLastMessage(
    chatId: json['chat_id'],
    lastMessage: json['last_message'] == null ? null : Message.fromJson(json['last_message']),
    positions: List<ChatPosition>.from((json['positions'] ?? []).map((item) => ChatPosition.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "last_message": lastMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  UpdateChatLastMessage copyWith({
    int? chatId,
    Message? lastMessage,
    List<ChatPosition>? positions,
    dynamic extra,
    int? clientId,
  }) => UpdateChatLastMessage(
    chatId: chatId ?? this.chatId,
    lastMessage: lastMessage ?? this.lastMessage,
    positions: positions ?? this.positions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatLastMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatPosition** *(updateChatPosition)* - child of Update
///
/// The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update.
///
/// * [chatId]: Chat identifier.
/// * [position]: New chat position. If new order is 0, then the chat needs to be removed from the list.
final class UpdateChatPosition extends Update {
  
  /// **UpdateChatPosition** *(updateChatPosition)* - child of Update
  ///
  /// The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update.
  ///
  /// * [chatId]: Chat identifier.
  /// * [position]: New chat position. If new order is 0, then the chat needs to be removed from the list.
  const UpdateChatPosition({
    required this.chatId,
    required this.position,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// New chat position. If new order is 0, then the chat needs to be removed from the list
  final ChatPosition position;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatPosition.fromJson(Map<String, dynamic> json) => UpdateChatPosition(
    chatId: json['chat_id'],
    position: ChatPosition.fromJson(json['position']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "position": position.toJson(),
		};
	}

  
  @override
  UpdateChatPosition copyWith({
    int? chatId,
    ChatPosition? position,
    dynamic extra,
    int? clientId,
  }) => UpdateChatPosition(
    chatId: chatId ?? this.chatId,
    position: position ?? this.position,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatPosition';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatReadInbox** *(updateChatReadInbox)* - child of Update
///
/// Incoming messages were read or the number of unread messages has been changed.
///
/// * [chatId]: Chat identifier.
/// * [lastReadInboxMessageId]: Identifier of the last read incoming message.
/// * [unreadCount]: The number of unread messages left in the chat.
final class UpdateChatReadInbox extends Update {
  
  /// **UpdateChatReadInbox** *(updateChatReadInbox)* - child of Update
  ///
  /// Incoming messages were read or the number of unread messages has been changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [lastReadInboxMessageId]: Identifier of the last read incoming message.
  /// * [unreadCount]: The number of unread messages left in the chat.
  const UpdateChatReadInbox({
    required this.chatId,
    required this.lastReadInboxMessageId,
    required this.unreadCount,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Identifier of the last read incoming message 
  final int lastReadInboxMessageId;

  /// The number of unread messages left in the chat
  final int unreadCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatReadInbox.fromJson(Map<String, dynamic> json) => UpdateChatReadInbox(
    chatId: json['chat_id'],
    lastReadInboxMessageId: json['last_read_inbox_message_id'],
    unreadCount: json['unread_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "unread_count": unreadCount,
		};
	}

  
  @override
  UpdateChatReadInbox copyWith({
    int? chatId,
    int? lastReadInboxMessageId,
    int? unreadCount,
    dynamic extra,
    int? clientId,
  }) => UpdateChatReadInbox(
    chatId: chatId ?? this.chatId,
    lastReadInboxMessageId: lastReadInboxMessageId ?? this.lastReadInboxMessageId,
    unreadCount: unreadCount ?? this.unreadCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatReadInbox';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatReadOutbox** *(updateChatReadOutbox)* - child of Update
///
/// Outgoing messages were read.
///
/// * [chatId]: Chat identifier.
/// * [lastReadOutboxMessageId]: Identifier of last read outgoing message.
final class UpdateChatReadOutbox extends Update {
  
  /// **UpdateChatReadOutbox** *(updateChatReadOutbox)* - child of Update
  ///
  /// Outgoing messages were read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [lastReadOutboxMessageId]: Identifier of last read outgoing message.
  const UpdateChatReadOutbox({
    required this.chatId,
    required this.lastReadOutboxMessageId,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) => UpdateChatReadOutbox(
    chatId: json['chat_id'],
    lastReadOutboxMessageId: json['last_read_outbox_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
		};
	}

  
  @override
  UpdateChatReadOutbox copyWith({
    int? chatId,
    int? lastReadOutboxMessageId,
    dynamic extra,
    int? clientId,
  }) => UpdateChatReadOutbox(
    chatId: chatId ?? this.chatId,
    lastReadOutboxMessageId: lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatReadOutbox';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatActionBar** *(updateChatActionBar)* - child of Update
///
/// The chat action bar was changed.
///
/// * [chatId]: Chat identifier.
/// * [actionBar]: The new value of the action bar; may be null *(optional)*.
final class UpdateChatActionBar extends Update {
  
  /// **UpdateChatActionBar** *(updateChatActionBar)* - child of Update
  ///
  /// The chat action bar was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [actionBar]: The new value of the action bar; may be null *(optional)*.
  const UpdateChatActionBar({
    required this.chatId,
    this.actionBar,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new value of the action bar; may be null
  final ChatActionBar? actionBar;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatActionBar.fromJson(Map<String, dynamic> json) => UpdateChatActionBar(
    chatId: json['chat_id'],
    actionBar: json['action_bar'] == null ? null : ChatActionBar.fromJson(json['action_bar']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "action_bar": actionBar?.toJson(),
		};
	}

  
  @override
  UpdateChatActionBar copyWith({
    int? chatId,
    ChatActionBar? actionBar,
    dynamic extra,
    int? clientId,
  }) => UpdateChatActionBar(
    chatId: chatId ?? this.chatId,
    actionBar: actionBar ?? this.actionBar,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatActionBar';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatAvailableReactions** *(updateChatAvailableReactions)* - child of Update
///
/// The chat available reactions were changed.
///
/// * [chatId]: Chat identifier.
/// * [availableReactions]: The new reactions, available in the chat.
final class UpdateChatAvailableReactions extends Update {
  
  /// **UpdateChatAvailableReactions** *(updateChatAvailableReactions)* - child of Update
  ///
  /// The chat available reactions were changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [availableReactions]: The new reactions, available in the chat.
  const UpdateChatAvailableReactions({
    required this.chatId,
    required this.availableReactions,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new reactions, available in the chat
  final ChatAvailableReactions availableReactions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatAvailableReactions.fromJson(Map<String, dynamic> json) => UpdateChatAvailableReactions(
    chatId: json['chat_id'],
    availableReactions: ChatAvailableReactions.fromJson(json['available_reactions']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "available_reactions": availableReactions.toJson(),
		};
	}

  
  @override
  UpdateChatAvailableReactions copyWith({
    int? chatId,
    ChatAvailableReactions? availableReactions,
    dynamic extra,
    int? clientId,
  }) => UpdateChatAvailableReactions(
    chatId: chatId ?? this.chatId,
    availableReactions: availableReactions ?? this.availableReactions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatAvailableReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatDraftMessage** *(updateChatDraftMessage)* - child of Update
///
/// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied.
///
/// * [chatId]: Chat identifier.
/// * [draftMessage]: The new draft message; may be null *(optional)*.
/// * [positions]: The new chat positions in the chat lists.
final class UpdateChatDraftMessage extends Update {
  
  /// **UpdateChatDraftMessage** *(updateChatDraftMessage)* - child of Update
  ///
  /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied.
  ///
  /// * [chatId]: Chat identifier.
  /// * [draftMessage]: The new draft message; may be null *(optional)*.
  /// * [positions]: The new chat positions in the chat lists.
  const UpdateChatDraftMessage({
    required this.chatId,
    this.draftMessage,
    required this.positions,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// The new draft message; may be null
  final DraftMessage? draftMessage;

  /// The new chat positions in the chat lists
  final List<ChatPosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) => UpdateChatDraftMessage(
    chatId: json['chat_id'],
    draftMessage: json['draft_message'] == null ? null : DraftMessage.fromJson(json['draft_message']),
    positions: List<ChatPosition>.from((json['positions'] ?? []).map((item) => ChatPosition.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "draft_message": draftMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  UpdateChatDraftMessage copyWith({
    int? chatId,
    DraftMessage? draftMessage,
    List<ChatPosition>? positions,
    dynamic extra,
    int? clientId,
  }) => UpdateChatDraftMessage(
    chatId: chatId ?? this.chatId,
    draftMessage: draftMessage ?? this.draftMessage,
    positions: positions ?? this.positions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatDraftMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatMessageSender** *(updateChatMessageSender)* - child of Update
///
/// The message sender that is selected to send messages in a chat has changed.
///
/// * [chatId]: Chat identifier.
/// * [messageSenderId]: New value of message_sender_id; may be null if the user can't change message sender *(optional)*.
final class UpdateChatMessageSender extends Update {
  
  /// **UpdateChatMessageSender** *(updateChatMessageSender)* - child of Update
  ///
  /// The message sender that is selected to send messages in a chat has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageSenderId]: New value of message_sender_id; may be null if the user can't change message sender *(optional)*.
  const UpdateChatMessageSender({
    required this.chatId,
    this.messageSenderId,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of message_sender_id; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatMessageSender.fromJson(Map<String, dynamic> json) => UpdateChatMessageSender(
    chatId: json['chat_id'],
    messageSenderId: json['message_sender_id'] == null ? null : MessageSender.fromJson(json['message_sender_id']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_sender_id": messageSenderId?.toJson(),
		};
	}

  
  @override
  UpdateChatMessageSender copyWith({
    int? chatId,
    MessageSender? messageSenderId,
    dynamic extra,
    int? clientId,
  }) => UpdateChatMessageSender(
    chatId: chatId ?? this.chatId,
    messageSenderId: messageSenderId ?? this.messageSenderId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatMessageSender';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatMessageAutoDeleteTime** *(updateChatMessageAutoDeleteTime)* - child of Update
///
/// The message auto-delete or self-destruct timer setting for a chat was changed.
///
/// * [chatId]: Chat identifier.
/// * [messageAutoDeleteTime]: New value of message_auto_delete_time.
final class UpdateChatMessageAutoDeleteTime extends Update {
  
  /// **UpdateChatMessageAutoDeleteTime** *(updateChatMessageAutoDeleteTime)* - child of Update
  ///
  /// The message auto-delete or self-destruct timer setting for a chat was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageAutoDeleteTime]: New value of message_auto_delete_time.
  const UpdateChatMessageAutoDeleteTime({
    required this.chatId,
    required this.messageAutoDeleteTime,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of message_auto_delete_time
  final int messageAutoDeleteTime;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatMessageAutoDeleteTime.fromJson(Map<String, dynamic> json) => UpdateChatMessageAutoDeleteTime(
    chatId: json['chat_id'],
    messageAutoDeleteTime: json['message_auto_delete_time'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_auto_delete_time": messageAutoDeleteTime,
		};
	}

  
  @override
  UpdateChatMessageAutoDeleteTime copyWith({
    int? chatId,
    int? messageAutoDeleteTime,
    dynamic extra,
    int? clientId,
  }) => UpdateChatMessageAutoDeleteTime(
    chatId: chatId ?? this.chatId,
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatMessageAutoDeleteTime';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatNotificationSettings** *(updateChatNotificationSettings)* - child of Update
///
/// Notification settings for a chat were changed.
///
/// * [chatId]: Chat identifier.
/// * [notificationSettings]: The new notification settings.
final class UpdateChatNotificationSettings extends Update {
  
  /// **UpdateChatNotificationSettings** *(updateChatNotificationSettings)* - child of Update
  ///
  /// Notification settings for a chat were changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [notificationSettings]: The new notification settings.
  const UpdateChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new notification settings
  final ChatNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) => UpdateChatNotificationSettings(
    chatId: json['chat_id'],
    notificationSettings: ChatNotificationSettings.fromJson(json['notification_settings']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "notification_settings": notificationSettings.toJson(),
		};
	}

  
  @override
  UpdateChatNotificationSettings copyWith({
    int? chatId,
    ChatNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) => UpdateChatNotificationSettings(
    chatId: chatId ?? this.chatId,
    notificationSettings: notificationSettings ?? this.notificationSettings,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatNotificationSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatPendingJoinRequests** *(updateChatPendingJoinRequests)* - child of Update
///
/// The chat pending join requests were changed.
///
/// * [chatId]: Chat identifier.
/// * [pendingJoinRequests]: The new data about pending join requests; may be null *(optional)*.
final class UpdateChatPendingJoinRequests extends Update {
  
  /// **UpdateChatPendingJoinRequests** *(updateChatPendingJoinRequests)* - child of Update
  ///
  /// The chat pending join requests were changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [pendingJoinRequests]: The new data about pending join requests; may be null *(optional)*.
  const UpdateChatPendingJoinRequests({
    required this.chatId,
    this.pendingJoinRequests,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new data about pending join requests; may be null
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatPendingJoinRequests.fromJson(Map<String, dynamic> json) => UpdateChatPendingJoinRequests(
    chatId: json['chat_id'],
    pendingJoinRequests: json['pending_join_requests'] == null ? null : ChatJoinRequestsInfo.fromJson(json['pending_join_requests']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "pending_join_requests": pendingJoinRequests?.toJson(),
		};
	}

  
  @override
  UpdateChatPendingJoinRequests copyWith({
    int? chatId,
    ChatJoinRequestsInfo? pendingJoinRequests,
    dynamic extra,
    int? clientId,
  }) => UpdateChatPendingJoinRequests(
    chatId: chatId ?? this.chatId,
    pendingJoinRequests: pendingJoinRequests ?? this.pendingJoinRequests,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatPendingJoinRequests';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatReplyMarkup** *(updateChatReplyMarkup)* - child of Update
///
/// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user.
///
/// * [chatId]: Chat identifier.
/// * [replyMarkupMessageId]: Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat.
final class UpdateChatReplyMarkup extends Update {
  
  /// **UpdateChatReplyMarkup** *(updateChatReplyMarkup)* - child of Update
  ///
  /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user.
  ///
  /// * [chatId]: Chat identifier.
  /// * [replyMarkupMessageId]: Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat.
  const UpdateChatReplyMarkup({
    required this.chatId,
    required this.replyMarkupMessageId,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) => UpdateChatReplyMarkup(
    chatId: json['chat_id'],
    replyMarkupMessageId: json['reply_markup_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "reply_markup_message_id": replyMarkupMessageId,
		};
	}

  
  @override
  UpdateChatReplyMarkup copyWith({
    int? chatId,
    int? replyMarkupMessageId,
    dynamic extra,
    int? clientId,
  }) => UpdateChatReplyMarkup(
    chatId: chatId ?? this.chatId,
    replyMarkupMessageId: replyMarkupMessageId ?? this.replyMarkupMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatReplyMarkup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatTheme** *(updateChatTheme)* - child of Update
///
/// The chat theme was changed.
///
/// * [chatId]: Chat identifier.
/// * [themeName]: The new name of the chat theme; may be empty if theme was reset to default.
final class UpdateChatTheme extends Update {
  
  /// **UpdateChatTheme** *(updateChatTheme)* - child of Update
  ///
  /// The chat theme was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [themeName]: The new name of the chat theme; may be empty if theme was reset to default.
  const UpdateChatTheme({
    required this.chatId,
    required this.themeName,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new name of the chat theme; may be empty if theme was reset to default
  final String themeName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatTheme.fromJson(Map<String, dynamic> json) => UpdateChatTheme(
    chatId: json['chat_id'],
    themeName: json['theme_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "theme_name": themeName,
		};
	}

  
  @override
  UpdateChatTheme copyWith({
    int? chatId,
    String? themeName,
    dynamic extra,
    int? clientId,
  }) => UpdateChatTheme(
    chatId: chatId ?? this.chatId,
    themeName: themeName ?? this.themeName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatTheme';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatUnreadMentionCount** *(updateChatUnreadMentionCount)* - child of Update
///
/// The chat unread_mention_count has changed.
///
/// * [chatId]: Chat identifier.
/// * [unreadMentionCount]: The number of unread mention messages left in the chat.
final class UpdateChatUnreadMentionCount extends Update {
  
  /// **UpdateChatUnreadMentionCount** *(updateChatUnreadMentionCount)* - child of Update
  ///
  /// The chat unread_mention_count has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [unreadMentionCount]: The number of unread mention messages left in the chat.
  const UpdateChatUnreadMentionCount({
    required this.chatId,
    required this.unreadMentionCount,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The number of unread mention messages left in the chat
  final int unreadMentionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) => UpdateChatUnreadMentionCount(
    chatId: json['chat_id'],
    unreadMentionCount: json['unread_mention_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "unread_mention_count": unreadMentionCount,
		};
	}

  
  @override
  UpdateChatUnreadMentionCount copyWith({
    int? chatId,
    int? unreadMentionCount,
    dynamic extra,
    int? clientId,
  }) => UpdateChatUnreadMentionCount(
    chatId: chatId ?? this.chatId,
    unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatUnreadMentionCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatUnreadReactionCount** *(updateChatUnreadReactionCount)* - child of Update
///
/// The chat unread_reaction_count has changed.
///
/// * [chatId]: Chat identifier.
/// * [unreadReactionCount]: The number of messages with unread reactions left in the chat.
final class UpdateChatUnreadReactionCount extends Update {
  
  /// **UpdateChatUnreadReactionCount** *(updateChatUnreadReactionCount)* - child of Update
  ///
  /// The chat unread_reaction_count has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [unreadReactionCount]: The number of messages with unread reactions left in the chat.
  const UpdateChatUnreadReactionCount({
    required this.chatId,
    required this.unreadReactionCount,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The number of messages with unread reactions left in the chat
  final int unreadReactionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatUnreadReactionCount.fromJson(Map<String, dynamic> json) => UpdateChatUnreadReactionCount(
    chatId: json['chat_id'],
    unreadReactionCount: json['unread_reaction_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "unread_reaction_count": unreadReactionCount,
		};
	}

  
  @override
  UpdateChatUnreadReactionCount copyWith({
    int? chatId,
    int? unreadReactionCount,
    dynamic extra,
    int? clientId,
  }) => UpdateChatUnreadReactionCount(
    chatId: chatId ?? this.chatId,
    unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatUnreadReactionCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatVideoChat** *(updateChatVideoChat)* - child of Update
///
/// A chat video chat state has changed.
///
/// * [chatId]: Chat identifier.
/// * [videoChat]: New value of video_chat.
final class UpdateChatVideoChat extends Update {
  
  /// **UpdateChatVideoChat** *(updateChatVideoChat)* - child of Update
  ///
  /// A chat video chat state has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [videoChat]: New value of video_chat.
  const UpdateChatVideoChat({
    required this.chatId,
    required this.videoChat,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of video_chat
  final VideoChat videoChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatVideoChat.fromJson(Map<String, dynamic> json) => UpdateChatVideoChat(
    chatId: json['chat_id'],
    videoChat: VideoChat.fromJson(json['video_chat']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "video_chat": videoChat.toJson(),
		};
	}

  
  @override
  UpdateChatVideoChat copyWith({
    int? chatId,
    VideoChat? videoChat,
    dynamic extra,
    int? clientId,
  }) => UpdateChatVideoChat(
    chatId: chatId ?? this.chatId,
    videoChat: videoChat ?? this.videoChat,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatVideoChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatDefaultDisableNotification** *(updateChatDefaultDisableNotification)* - child of Update
///
/// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.
///
/// * [chatId]: Chat identifier.
/// * [defaultDisableNotification]: The new default_disable_notification value.
final class UpdateChatDefaultDisableNotification extends Update {
  
  /// **UpdateChatDefaultDisableNotification** *(updateChatDefaultDisableNotification)* - child of Update
  ///
  /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [defaultDisableNotification]: The new default_disable_notification value.
  const UpdateChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new default_disable_notification value
  final bool defaultDisableNotification;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) => UpdateChatDefaultDisableNotification(
    chatId: json['chat_id'],
    defaultDisableNotification: json['default_disable_notification'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "default_disable_notification": defaultDisableNotification,
		};
	}

  
  @override
  UpdateChatDefaultDisableNotification copyWith({
    int? chatId,
    bool? defaultDisableNotification,
    dynamic extra,
    int? clientId,
  }) => UpdateChatDefaultDisableNotification(
    chatId: chatId ?? this.chatId,
    defaultDisableNotification: defaultDisableNotification ?? this.defaultDisableNotification,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatDefaultDisableNotification';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatHasProtectedContent** *(updateChatHasProtectedContent)* - child of Update
///
/// A chat content was allowed or restricted for saving.
///
/// * [chatId]: Chat identifier.
/// * [hasProtectedContent]: New value of has_protected_content.
final class UpdateChatHasProtectedContent extends Update {
  
  /// **UpdateChatHasProtectedContent** *(updateChatHasProtectedContent)* - child of Update
  ///
  /// A chat content was allowed or restricted for saving.
  ///
  /// * [chatId]: Chat identifier.
  /// * [hasProtectedContent]: New value of has_protected_content.
  const UpdateChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of has_protected_content
  final bool hasProtectedContent;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatHasProtectedContent.fromJson(Map<String, dynamic> json) => UpdateChatHasProtectedContent(
    chatId: json['chat_id'],
    hasProtectedContent: json['has_protected_content'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "has_protected_content": hasProtectedContent,
		};
	}

  
  @override
  UpdateChatHasProtectedContent copyWith({
    int? chatId,
    bool? hasProtectedContent,
    dynamic extra,
    int? clientId,
  }) => UpdateChatHasProtectedContent(
    chatId: chatId ?? this.chatId,
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatHasProtectedContent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatHasScheduledMessages** *(updateChatHasScheduledMessages)* - child of Update
///
/// A chat's has_scheduled_messages field has changed.
///
/// * [chatId]: Chat identifier.
/// * [hasScheduledMessages]: New value of has_scheduled_messages.
final class UpdateChatHasScheduledMessages extends Update {
  
  /// **UpdateChatHasScheduledMessages** *(updateChatHasScheduledMessages)* - child of Update
  ///
  /// A chat's has_scheduled_messages field has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [hasScheduledMessages]: New value of has_scheduled_messages.
  const UpdateChatHasScheduledMessages({
    required this.chatId,
    required this.hasScheduledMessages,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of has_scheduled_messages
  final bool hasScheduledMessages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json) => UpdateChatHasScheduledMessages(
    chatId: json['chat_id'],
    hasScheduledMessages: json['has_scheduled_messages'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "has_scheduled_messages": hasScheduledMessages,
		};
	}

  
  @override
  UpdateChatHasScheduledMessages copyWith({
    int? chatId,
    bool? hasScheduledMessages,
    dynamic extra,
    int? clientId,
  }) => UpdateChatHasScheduledMessages(
    chatId: chatId ?? this.chatId,
    hasScheduledMessages: hasScheduledMessages ?? this.hasScheduledMessages,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatHasScheduledMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatIsBlocked** *(updateChatIsBlocked)* - child of Update
///
/// A chat was blocked or unblocked.
///
/// * [chatId]: Chat identifier.
/// * [isBlocked]: New value of is_blocked.
final class UpdateChatIsBlocked extends Update {
  
  /// **UpdateChatIsBlocked** *(updateChatIsBlocked)* - child of Update
  ///
  /// A chat was blocked or unblocked.
  ///
  /// * [chatId]: Chat identifier.
  /// * [isBlocked]: New value of is_blocked.
  const UpdateChatIsBlocked({
    required this.chatId,
    required this.isBlocked,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of is_blocked
  final bool isBlocked;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatIsBlocked.fromJson(Map<String, dynamic> json) => UpdateChatIsBlocked(
    chatId: json['chat_id'],
    isBlocked: json['is_blocked'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "is_blocked": isBlocked,
		};
	}

  
  @override
  UpdateChatIsBlocked copyWith({
    int? chatId,
    bool? isBlocked,
    dynamic extra,
    int? clientId,
  }) => UpdateChatIsBlocked(
    chatId: chatId ?? this.chatId,
    isBlocked: isBlocked ?? this.isBlocked,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatIsBlocked';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatIsMarkedAsUnread** *(updateChatIsMarkedAsUnread)* - child of Update
///
/// A chat was marked as unread or was read.
///
/// * [chatId]: Chat identifier.
/// * [isMarkedAsUnread]: New value of is_marked_as_unread.
final class UpdateChatIsMarkedAsUnread extends Update {
  
  /// **UpdateChatIsMarkedAsUnread** *(updateChatIsMarkedAsUnread)* - child of Update
  ///
  /// A chat was marked as unread or was read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [isMarkedAsUnread]: New value of is_marked_as_unread.
  const UpdateChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) => UpdateChatIsMarkedAsUnread(
    chatId: json['chat_id'],
    isMarkedAsUnread: json['is_marked_as_unread'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "is_marked_as_unread": isMarkedAsUnread,
		};
	}

  
  @override
  UpdateChatIsMarkedAsUnread copyWith({
    int? chatId,
    bool? isMarkedAsUnread,
    dynamic extra,
    int? clientId,
  }) => UpdateChatIsMarkedAsUnread(
    chatId: chatId ?? this.chatId,
    isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatIsMarkedAsUnread';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatFilters** *(updateChatFilters)* - child of Update
///
/// The list of chat filters or a chat filter has changed.
///
/// * [chatFilters]: The new list of chat filters.
/// * [mainChatListPosition]: Position of the main chat list among chat filters, 0-based.
final class UpdateChatFilters extends Update {
  
  /// **UpdateChatFilters** *(updateChatFilters)* - child of Update
  ///
  /// The list of chat filters or a chat filter has changed.
  ///
  /// * [chatFilters]: The new list of chat filters.
  /// * [mainChatListPosition]: Position of the main chat list among chat filters, 0-based.
  const UpdateChatFilters({
    required this.chatFilters,
    required this.mainChatListPosition,
    this.extra,
    this.clientId,
  });
  
  /// The new list of chat filters 
  final List<ChatFilterInfo> chatFilters;

  /// Position of the main chat list among chat filters, 0-based
  final int mainChatListPosition;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatFilters.fromJson(Map<String, dynamic> json) => UpdateChatFilters(
    chatFilters: List<ChatFilterInfo>.from((json['chat_filters'] ?? []).map((item) => ChatFilterInfo.fromJson(item)).toList()),
    mainChatListPosition: json['main_chat_list_position'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_filters": chatFilters.map((i) => i.toJson()).toList(),
      "main_chat_list_position": mainChatListPosition,
		};
	}

  
  @override
  UpdateChatFilters copyWith({
    List<ChatFilterInfo>? chatFilters,
    int? mainChatListPosition,
    dynamic extra,
    int? clientId,
  }) => UpdateChatFilters(
    chatFilters: chatFilters ?? this.chatFilters,
    mainChatListPosition: mainChatListPosition ?? this.mainChatListPosition,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatFilters';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatOnlineMemberCount** *(updateChatOnlineMemberCount)* - child of Update
///
/// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats.. There is no guarantee that it will be sent just after the number of online users has changed.
///
/// * [chatId]: Identifier of the chat.
/// * [onlineMemberCount]: New number of online members in the chat, or 0 if unknown.
final class UpdateChatOnlineMemberCount extends Update {
  
  /// **UpdateChatOnlineMemberCount** *(updateChatOnlineMemberCount)* - child of Update
  ///
  /// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats.. There is no guarantee that it will be sent just after the number of online users has changed.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [onlineMemberCount]: New number of online members in the chat, or 0 if unknown.
  const UpdateChatOnlineMemberCount({
    required this.chatId,
    required this.onlineMemberCount,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the chat
  final int chatId;

  /// New number of online members in the chat, or 0 if unknown
  final int onlineMemberCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) => UpdateChatOnlineMemberCount(
    chatId: json['chat_id'],
    onlineMemberCount: json['online_member_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "online_member_count": onlineMemberCount,
		};
	}

  
  @override
  UpdateChatOnlineMemberCount copyWith({
    int? chatId,
    int? onlineMemberCount,
    dynamic extra,
    int? clientId,
  }) => UpdateChatOnlineMemberCount(
    chatId: chatId ?? this.chatId,
    onlineMemberCount: onlineMemberCount ?? this.onlineMemberCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatOnlineMemberCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateForumTopicInfo** *(updateForumTopicInfo)* - child of Update
///
/// Basic information about a topic in a forum chat was changed.
///
/// * [chatId]: Chat identifier.
/// * [info]: New information about the topic.
final class UpdateForumTopicInfo extends Update {
  
  /// **UpdateForumTopicInfo** *(updateForumTopicInfo)* - child of Update
  ///
  /// Basic information about a topic in a forum chat was changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [info]: New information about the topic.
  const UpdateForumTopicInfo({
    required this.chatId,
    required this.info,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New information about the topic
  final ForumTopicInfo info;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateForumTopicInfo.fromJson(Map<String, dynamic> json) => UpdateForumTopicInfo(
    chatId: json['chat_id'],
    info: ForumTopicInfo.fromJson(json['info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "info": info.toJson(),
		};
	}

  
  @override
  UpdateForumTopicInfo copyWith({
    int? chatId,
    ForumTopicInfo? info,
    dynamic extra,
    int? clientId,
  }) => UpdateForumTopicInfo(
    chatId: chatId ?? this.chatId,
    info: info ?? this.info,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateForumTopicInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateScopeNotificationSettings** *(updateScopeNotificationSettings)* - child of Update
///
/// Notification settings for some type of chats were updated.
///
/// * [scope]: Types of chats for which notification settings were updated.
/// * [notificationSettings]: The new notification settings.
final class UpdateScopeNotificationSettings extends Update {
  
  /// **UpdateScopeNotificationSettings** *(updateScopeNotificationSettings)* - child of Update
  ///
  /// Notification settings for some type of chats were updated.
  ///
  /// * [scope]: Types of chats for which notification settings were updated.
  /// * [notificationSettings]: The new notification settings.
  const UpdateScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });
  
  /// Types of chats for which notification settings were updated 
  final NotificationSettingsScope scope;

  /// The new notification settings
  final ScopeNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) => UpdateScopeNotificationSettings(
    scope: NotificationSettingsScope.fromJson(json['scope']),
    notificationSettings: ScopeNotificationSettings.fromJson(json['notification_settings']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "scope": scope.toJson(),
      "notification_settings": notificationSettings.toJson(),
		};
	}

  
  @override
  UpdateScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
    ScopeNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) => UpdateScopeNotificationSettings(
    scope: scope ?? this.scope,
    notificationSettings: notificationSettings ?? this.notificationSettings,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateScopeNotificationSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNotification** *(updateNotification)* - child of Update
///
/// A notification was changed.
///
/// * [notificationGroupId]: Unique notification group identifier.
/// * [notification]: Changed notification.
final class UpdateNotification extends Update {
  
  /// **UpdateNotification** *(updateNotification)* - child of Update
  ///
  /// A notification was changed.
  ///
  /// * [notificationGroupId]: Unique notification group identifier.
  /// * [notification]: Changed notification.
  const UpdateNotification({
    required this.notificationGroupId,
    required this.notification,
    this.extra,
    this.clientId,
  });
  
  /// Unique notification group identifier 
  final int notificationGroupId;

  /// Changed notification
  final Notification notification;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNotification.fromJson(Map<String, dynamic> json) => UpdateNotification(
    notificationGroupId: json['notification_group_id'],
    notification: Notification.fromJson(json['notification']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "notification_group_id": notificationGroupId,
      "notification": notification.toJson(),
		};
	}

  
  @override
  UpdateNotification copyWith({
    int? notificationGroupId,
    Notification? notification,
    dynamic extra,
    int? clientId,
  }) => UpdateNotification(
    notificationGroupId: notificationGroupId ?? this.notificationGroupId,
    notification: notification ?? this.notification,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNotification';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNotificationGroup** *(updateNotificationGroup)* - child of Update
///
/// A list of active notifications in a notification group has changed.
///
/// * [notificationGroupId]: Unique notification group identifier.
/// * [type]: New type of the notification group.
/// * [chatId]: Identifier of a chat to which all notifications in the group belong.
/// * [notificationSettingsChatId]: Chat identifier, which notification settings must be applied to the added notifications.
/// * [notificationSoundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
/// * [totalCount]: Total number of unread notifications in the group, can be bigger than number of active notifications.
/// * [addedNotifications]: List of added group notifications, sorted by notification updateNotificationGroup.
/// * [removedNotificationIds]: Identifiers of removed group notifications, sorted by notification updateNotificationGroup.
final class UpdateNotificationGroup extends Update {
  
  /// **UpdateNotificationGroup** *(updateNotificationGroup)* - child of Update
  ///
  /// A list of active notifications in a notification group has changed.
  ///
  /// * [notificationGroupId]: Unique notification group identifier.
  /// * [type]: New type of the notification group.
  /// * [chatId]: Identifier of a chat to which all notifications in the group belong.
  /// * [notificationSettingsChatId]: Chat identifier, which notification settings must be applied to the added notifications.
  /// * [notificationSoundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
  /// * [totalCount]: Total number of unread notifications in the group, can be bigger than number of active notifications.
  /// * [addedNotifications]: List of added group notifications, sorted by notification updateNotificationGroup.
  /// * [removedNotificationIds]: Identifiers of removed group notifications, sorted by notification updateNotificationGroup.
  const UpdateNotificationGroup({
    required this.notificationGroupId,
    required this.type,
    required this.chatId,
    required this.notificationSettingsChatId,
    required this.notificationSoundId,
    required this.totalCount,
    required this.addedNotifications,
    required this.removedNotificationIds,
    this.extra,
    this.clientId,
  });
  
  /// Unique notification group identifier
  final int notificationGroupId;

  /// New type of the notification group
  final NotificationGroupType type;

  /// Identifier of a chat to which all notifications in the group belong
  final int chatId;

  /// Chat identifier, which notification settings must be applied to the added notifications
  final int notificationSettingsChatId;

  /// Identifier of the notification sound to be played; 0 if sound is disabled
  final int notificationSoundId;

  /// Total number of unread notifications in the group, can be bigger than number of active notifications
  final int totalCount;

  /// List of added group notifications, sorted by notification updateNotificationGroup
  final List<Notification> addedNotifications;

  /// Identifiers of removed group notifications, sorted by notification updateNotificationGroup
  final List<int> removedNotificationIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNotificationGroup.fromJson(Map<String, dynamic> json) => UpdateNotificationGroup(
    notificationGroupId: json['notification_group_id'],
    type: NotificationGroupType.fromJson(json['type']),
    chatId: json['chat_id'],
    notificationSettingsChatId: json['notification_settings_chat_id'],
    notificationSoundId: int.parse(json['notification_sound_id']),
    totalCount: json['total_count'],
    addedNotifications: List<Notification>.from((json['added_notifications'] ?? []).map((item) => Notification.fromJson(item)).toList()),
    removedNotificationIds: List<int>.from((json['removed_notification_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "notification_group_id": notificationGroupId,
      "type": type.toJson(),
      "chat_id": chatId,
      "notification_settings_chat_id": notificationSettingsChatId,
      "notification_sound_id": notificationSoundId,
      "total_count": totalCount,
      "added_notifications": addedNotifications.map((i) => i.toJson()).toList(),
      "removed_notification_ids": removedNotificationIds.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateNotificationGroup copyWith({
    int? notificationGroupId,
    NotificationGroupType? type,
    int? chatId,
    int? notificationSettingsChatId,
    int? notificationSoundId,
    int? totalCount,
    List<Notification>? addedNotifications,
    List<int>? removedNotificationIds,
    dynamic extra,
    int? clientId,
  }) => UpdateNotificationGroup(
    notificationGroupId: notificationGroupId ?? this.notificationGroupId,
    type: type ?? this.type,
    chatId: chatId ?? this.chatId,
    notificationSettingsChatId: notificationSettingsChatId ?? this.notificationSettingsChatId,
    notificationSoundId: notificationSoundId ?? this.notificationSoundId,
    totalCount: totalCount ?? this.totalCount,
    addedNotifications: addedNotifications ?? this.addedNotifications,
    removedNotificationIds: removedNotificationIds ?? this.removedNotificationIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNotificationGroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateActiveNotifications** *(updateActiveNotifications)* - child of Update
///
/// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update.
///
/// * [groups]: Lists of active notification groups.
final class UpdateActiveNotifications extends Update {
  
  /// **UpdateActiveNotifications** *(updateActiveNotifications)* - child of Update
  ///
  /// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update.
  ///
  /// * [groups]: Lists of active notification groups.
  const UpdateActiveNotifications({
    required this.groups,
    this.extra,
    this.clientId,
  });
  
  /// Lists of active notification groups
  final List<NotificationGroup> groups;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateActiveNotifications.fromJson(Map<String, dynamic> json) => UpdateActiveNotifications(
    groups: List<NotificationGroup>.from((json['groups'] ?? []).map((item) => NotificationGroup.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "groups": groups.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  UpdateActiveNotifications copyWith({
    List<NotificationGroup>? groups,
    dynamic extra,
    int? clientId,
  }) => UpdateActiveNotifications(
    groups: groups ?? this.groups,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateActiveNotifications';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateHavePendingNotifications** *(updateHavePendingNotifications)* - child of Update
///
/// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications.
///
/// * [haveDelayedNotifications]: True, if there are some delayed notification updates, which will be sent soon.
/// * [haveUnreceivedNotifications]: True, if there can be some yet unreceived notifications, which are being fetched from the server.
final class UpdateHavePendingNotifications extends Update {
  
  /// **UpdateHavePendingNotifications** *(updateHavePendingNotifications)* - child of Update
  ///
  /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications.
  ///
  /// * [haveDelayedNotifications]: True, if there are some delayed notification updates, which will be sent soon.
  /// * [haveUnreceivedNotifications]: True, if there can be some yet unreceived notifications, which are being fetched from the server.
  const UpdateHavePendingNotifications({
    required this.haveDelayedNotifications,
    required this.haveUnreceivedNotifications,
    this.extra,
    this.clientId,
  });
  
  /// True, if there are some delayed notification updates, which will be sent soon
  final bool haveDelayedNotifications;

  /// True, if there can be some yet unreceived notifications, which are being fetched from the server
  final bool haveUnreceivedNotifications;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) => UpdateHavePendingNotifications(
    haveDelayedNotifications: json['have_delayed_notifications'],
    haveUnreceivedNotifications: json['have_unreceived_notifications'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "have_delayed_notifications": haveDelayedNotifications,
      "have_unreceived_notifications": haveUnreceivedNotifications,
		};
	}

  
  @override
  UpdateHavePendingNotifications copyWith({
    bool? haveDelayedNotifications,
    bool? haveUnreceivedNotifications,
    dynamic extra,
    int? clientId,
  }) => UpdateHavePendingNotifications(
    haveDelayedNotifications: haveDelayedNotifications ?? this.haveDelayedNotifications,
    haveUnreceivedNotifications: haveUnreceivedNotifications ?? this.haveUnreceivedNotifications,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateHavePendingNotifications';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateDeleteMessages** *(updateDeleteMessages)* - child of Update
///
/// Some messages were deleted.
///
/// * [chatId]: Chat identifier.
/// * [messageIds]: Identifiers of the deleted messages.
/// * [isPermanent]: True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible).
/// * [fromCache]: True, if the messages are deleted only from the cache and can possibly be retrieved again in the future.
final class UpdateDeleteMessages extends Update {
  
  /// **UpdateDeleteMessages** *(updateDeleteMessages)* - child of Update
  ///
  /// Some messages were deleted.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageIds]: Identifiers of the deleted messages.
  /// * [isPermanent]: True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible).
  /// * [fromCache]: True, if the messages are deleted only from the cache and can possibly be retrieved again in the future.
  const UpdateDeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.isPermanent,
    required this.fromCache,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// Identifiers of the deleted messages
  final List<int> messageIds;

  /// True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  final bool isPermanent;

  /// True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  final bool fromCache;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateDeleteMessages.fromJson(Map<String, dynamic> json) => UpdateDeleteMessages(
    chatId: json['chat_id'],
    messageIds: List<int>.from((json['message_ids'] ?? []).map((item) => item).toList()),
    isPermanent: json['is_permanent'],
    fromCache: json['from_cache'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "is_permanent": isPermanent,
      "from_cache": fromCache,
		};
	}

  
  @override
  UpdateDeleteMessages copyWith({
    int? chatId,
    List<int>? messageIds,
    bool? isPermanent,
    bool? fromCache,
    dynamic extra,
    int? clientId,
  }) => UpdateDeleteMessages(
    chatId: chatId ?? this.chatId,
    messageIds: messageIds ?? this.messageIds,
    isPermanent: isPermanent ?? this.isPermanent,
    fromCache: fromCache ?? this.fromCache,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateDeleteMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatAction** *(updateChatAction)* - child of Update
///
/// A message sender activity in the chat has changed.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: If not 0, a message thread identifier in which the action was performed.
/// * [senderId]: Identifier of a message sender performing the action.
/// * [action]: The action.
final class UpdateChatAction extends Update {
  
  /// **UpdateChatAction** *(updateChatAction)* - child of Update
  ///
  /// A message sender activity in the chat has changed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the action was performed.
  /// * [senderId]: Identifier of a message sender performing the action.
  /// * [action]: The action.
  const UpdateChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.senderId,
    required this.action,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// If not 0, a message thread identifier in which the action was performed
  final int messageThreadId;

  /// Identifier of a message sender performing the action
  final MessageSender senderId;

  /// The action
  final ChatAction action;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatAction.fromJson(Map<String, dynamic> json) => UpdateChatAction(
    chatId: json['chat_id'],
    messageThreadId: json['message_thread_id'],
    senderId: MessageSender.fromJson(json['sender_id']),
    action: ChatAction.fromJson(json['action']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "sender_id": senderId.toJson(),
      "action": action.toJson(),
		};
	}

  
  @override
  UpdateChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    MessageSender? senderId,
    ChatAction? action,
    dynamic extra,
    int? clientId,
  }) => UpdateChatAction(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    senderId: senderId ?? this.senderId,
    action: action ?? this.action,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatAction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateUserStatus** *(updateUserStatus)* - child of Update
///
/// The user went online or offline.
///
/// * [userId]: User identifier.
/// * [status]: New status of the user.
final class UpdateUserStatus extends Update {
  
  /// **UpdateUserStatus** *(updateUserStatus)* - child of Update
  ///
  /// The user went online or offline.
  ///
  /// * [userId]: User identifier.
  /// * [status]: New status of the user.
  const UpdateUserStatus({
    required this.userId,
    required this.status,
    this.extra,
    this.clientId,
  });
  
  /// User identifier 
  final int userId;

  /// New status of the user
  final UserStatus status;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUserStatus.fromJson(Map<String, dynamic> json) => UpdateUserStatus(
    userId: json['user_id'],
    status: UserStatus.fromJson(json['status']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "status": status.toJson(),
		};
	}

  
  @override
  UpdateUserStatus copyWith({
    int? userId,
    UserStatus? status,
    dynamic extra,
    int? clientId,
  }) => UpdateUserStatus(
    userId: userId ?? this.userId,
    status: status ?? this.status,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateUserStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateUser** *(updateUser)* - child of Update
///
/// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application.
///
/// * [user]: New data about the user.
final class UpdateUser extends Update {
  
  /// **UpdateUser** *(updateUser)* - child of Update
  ///
  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application.
  ///
  /// * [user]: New data about the user.
  const UpdateUser({
    required this.user,
    this.extra,
    this.clientId,
  });
  
  /// New data about the user
  final User user;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUser.fromJson(Map<String, dynamic> json) => UpdateUser(
    user: User.fromJson(json['user']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user": user.toJson(),
		};
	}

  
  @override
  UpdateUser copyWith({
    User? user,
    dynamic extra,
    int? clientId,
  }) => UpdateUser(
    user: user ?? this.user,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateBasicGroup** *(updateBasicGroup)* - child of Update
///
/// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application.
///
/// * [basicGroup]: New data about the group.
final class UpdateBasicGroup extends Update {
  
  /// **UpdateBasicGroup** *(updateBasicGroup)* - child of Update
  ///
  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application.
  ///
  /// * [basicGroup]: New data about the group.
  const UpdateBasicGroup({
    required this.basicGroup,
    this.extra,
    this.clientId,
  });
  
  /// New data about the group
  final BasicGroup basicGroup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateBasicGroup.fromJson(Map<String, dynamic> json) => UpdateBasicGroup(
    basicGroup: BasicGroup.fromJson(json['basic_group']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "basic_group": basicGroup.toJson(),
		};
	}

  
  @override
  UpdateBasicGroup copyWith({
    BasicGroup? basicGroup,
    dynamic extra,
    int? clientId,
  }) => UpdateBasicGroup(
    basicGroup: basicGroup ?? this.basicGroup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateBasicGroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateSupergroup** *(updateSupergroup)* - child of Update
///
/// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application.
///
/// * [supergroup]: New data about the supergroup.
final class UpdateSupergroup extends Update {
  
  /// **UpdateSupergroup** *(updateSupergroup)* - child of Update
  ///
  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application.
  ///
  /// * [supergroup]: New data about the supergroup.
  const UpdateSupergroup({
    required this.supergroup,
    this.extra,
    this.clientId,
  });
  
  /// New data about the supergroup
  final Supergroup supergroup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSupergroup.fromJson(Map<String, dynamic> json) => UpdateSupergroup(
    supergroup: Supergroup.fromJson(json['supergroup']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "supergroup": supergroup.toJson(),
		};
	}

  
  @override
  UpdateSupergroup copyWith({
    Supergroup? supergroup,
    dynamic extra,
    int? clientId,
  }) => UpdateSupergroup(
    supergroup: supergroup ?? this.supergroup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateSupergroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateSecretChat** *(updateSecretChat)* - child of Update
///
/// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application.
///
/// * [secretChat]: New data about the secret chat.
final class UpdateSecretChat extends Update {
  
  /// **UpdateSecretChat** *(updateSecretChat)* - child of Update
  ///
  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application.
  ///
  /// * [secretChat]: New data about the secret chat.
  const UpdateSecretChat({
    required this.secretChat,
    this.extra,
    this.clientId,
  });
  
  /// New data about the secret chat
  final SecretChat secretChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSecretChat.fromJson(Map<String, dynamic> json) => UpdateSecretChat(
    secretChat: SecretChat.fromJson(json['secret_chat']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "secret_chat": secretChat.toJson(),
		};
	}

  
  @override
  UpdateSecretChat copyWith({
    SecretChat? secretChat,
    dynamic extra,
    int? clientId,
  }) => UpdateSecretChat(
    secretChat: secretChat ?? this.secretChat,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateSecretChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateUserFullInfo** *(updateUserFullInfo)* - child of Update
///
/// Some data in userFullInfo has been changed.
///
/// * [userId]: User identifier.
/// * [userFullInfo]: New full information about the user.
final class UpdateUserFullInfo extends Update {
  
  /// **UpdateUserFullInfo** *(updateUserFullInfo)* - child of Update
  ///
  /// Some data in userFullInfo has been changed.
  ///
  /// * [userId]: User identifier.
  /// * [userFullInfo]: New full information about the user.
  const UpdateUserFullInfo({
    required this.userId,
    required this.userFullInfo,
    this.extra,
    this.clientId,
  });
  
  /// User identifier 
  final int userId;

  /// New full information about the user
  final UserFullInfo userFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUserFullInfo.fromJson(Map<String, dynamic> json) => UpdateUserFullInfo(
    userId: json['user_id'],
    userFullInfo: UserFullInfo.fromJson(json['user_full_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "user_full_info": userFullInfo.toJson(),
		};
	}

  
  @override
  UpdateUserFullInfo copyWith({
    int? userId,
    UserFullInfo? userFullInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateUserFullInfo(
    userId: userId ?? this.userId,
    userFullInfo: userFullInfo ?? this.userFullInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateUserFullInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateBasicGroupFullInfo** *(updateBasicGroupFullInfo)* - child of Update
///
/// Some data in basicGroupFullInfo has been changed.
///
/// * [basicGroupId]: Identifier of a basic group.
/// * [basicGroupFullInfo]: New full information about the group.
final class UpdateBasicGroupFullInfo extends Update {
  
  /// **UpdateBasicGroupFullInfo** *(updateBasicGroupFullInfo)* - child of Update
  ///
  /// Some data in basicGroupFullInfo has been changed.
  ///
  /// * [basicGroupId]: Identifier of a basic group.
  /// * [basicGroupFullInfo]: New full information about the group.
  const UpdateBasicGroupFullInfo({
    required this.basicGroupId,
    required this.basicGroupFullInfo,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of a basic group 
  final int basicGroupId;

  /// New full information about the group
  final BasicGroupFullInfo basicGroupFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) => UpdateBasicGroupFullInfo(
    basicGroupId: json['basic_group_id'],
    basicGroupFullInfo: BasicGroupFullInfo.fromJson(json['basic_group_full_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "basic_group_id": basicGroupId,
      "basic_group_full_info": basicGroupFullInfo.toJson(),
		};
	}

  
  @override
  UpdateBasicGroupFullInfo copyWith({
    int? basicGroupId,
    BasicGroupFullInfo? basicGroupFullInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateBasicGroupFullInfo(
    basicGroupId: basicGroupId ?? this.basicGroupId,
    basicGroupFullInfo: basicGroupFullInfo ?? this.basicGroupFullInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateBasicGroupFullInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateSupergroupFullInfo** *(updateSupergroupFullInfo)* - child of Update
///
/// Some data in supergroupFullInfo has been changed.
///
/// * [supergroupId]: Identifier of the supergroup or channel.
/// * [supergroupFullInfo]: New full information about the supergroup.
final class UpdateSupergroupFullInfo extends Update {
  
  /// **UpdateSupergroupFullInfo** *(updateSupergroupFullInfo)* - child of Update
  ///
  /// Some data in supergroupFullInfo has been changed.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
  /// * [supergroupFullInfo]: New full information about the supergroup.
  const UpdateSupergroupFullInfo({
    required this.supergroupId,
    required this.supergroupFullInfo,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the supergroup or channel 
  final int supergroupId;

  /// New full information about the supergroup
  final SupergroupFullInfo supergroupFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) => UpdateSupergroupFullInfo(
    supergroupId: json['supergroup_id'],
    supergroupFullInfo: SupergroupFullInfo.fromJson(json['supergroup_full_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "supergroup_full_info": supergroupFullInfo.toJson(),
		};
	}

  
  @override
  UpdateSupergroupFullInfo copyWith({
    int? supergroupId,
    SupergroupFullInfo? supergroupFullInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateSupergroupFullInfo(
    supergroupId: supergroupId ?? this.supergroupId,
    supergroupFullInfo: supergroupFullInfo ?? this.supergroupFullInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateSupergroupFullInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateServiceNotification** *(updateServiceNotification)* - child of Update
///
/// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification.
///
/// * [type]: Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method.
/// * [content]: Notification content.
final class UpdateServiceNotification extends Update {
  
  /// **UpdateServiceNotification** *(updateServiceNotification)* - child of Update
  ///
  /// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification.
  ///
  /// * [type]: Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method.
  /// * [content]: Notification content.
  const UpdateServiceNotification({
    required this.type,
    required this.content,
    this.extra,
    this.clientId,
  });
  
  /// Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method
  final String type;

  /// Notification content
  final MessageContent content;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateServiceNotification.fromJson(Map<String, dynamic> json) => UpdateServiceNotification(
    type: json['type'],
    content: MessageContent.fromJson(json['content']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type,
      "content": content.toJson(),
		};
	}

  
  @override
  UpdateServiceNotification copyWith({
    String? type,
    MessageContent? content,
    dynamic extra,
    int? clientId,
  }) => UpdateServiceNotification(
    type: type ?? this.type,
    content: content ?? this.content,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateServiceNotification';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateFile** *(updateFile)* - child of Update
///
/// Information about a file was updated.
///
/// * [file]: New data about the file.
final class UpdateFile extends Update {
  
  /// **UpdateFile** *(updateFile)* - child of Update
  ///
  /// Information about a file was updated.
  ///
  /// * [file]: New data about the file.
  const UpdateFile({
    required this.file,
    this.extra,
    this.clientId,
  });
  
  /// New data about the file
  final File file;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFile.fromJson(Map<String, dynamic> json) => UpdateFile(
    file: File.fromJson(json['file']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file": file.toJson(),
		};
	}

  
  @override
  UpdateFile copyWith({
    File? file,
    dynamic extra,
    int? clientId,
  }) => UpdateFile(
    file: file ?? this.file,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateFileGenerationStart** *(updateFileGenerationStart)* - child of Update
///
/// The file generation process needs to be started by the application.
///
/// * [generationId]: Unique identifier for the generation process.
/// * [originalPath]: The path to a file from which a new file is generated; may be empty.
/// * [destinationPath]: The path to a file that must be created and where the new file is generated.
/// * [conversion]: String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application.
final class UpdateFileGenerationStart extends Update {
  
  /// **UpdateFileGenerationStart** *(updateFileGenerationStart)* - child of Update
  ///
  /// The file generation process needs to be started by the application.
  ///
  /// * [generationId]: Unique identifier for the generation process.
  /// * [originalPath]: The path to a file from which a new file is generated; may be empty.
  /// * [destinationPath]: The path to a file that must be created and where the new file is generated.
  /// * [conversion]: String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application.
  const UpdateFileGenerationStart({
    required this.generationId,
    required this.originalPath,
    required this.destinationPath,
    required this.conversion,
    this.extra,
    this.clientId,
  });
  
  /// Unique identifier for the generation process
  final int generationId;

  /// The path to a file from which a new file is generated; may be empty
  final String originalPath;

  /// The path to a file that must be created and where the new file is generated
  final String destinationPath;

  /// String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application
  final String conversion;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) => UpdateFileGenerationStart(
    generationId: int.parse(json['generation_id']),
    originalPath: json['original_path'],
    destinationPath: json['destination_path'],
    conversion: json['conversion'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "generation_id": generationId,
      "original_path": originalPath,
      "destination_path": destinationPath,
      "conversion": conversion,
		};
	}

  
  @override
  UpdateFileGenerationStart copyWith({
    int? generationId,
    String? originalPath,
    String? destinationPath,
    String? conversion,
    dynamic extra,
    int? clientId,
  }) => UpdateFileGenerationStart(
    generationId: generationId ?? this.generationId,
    originalPath: originalPath ?? this.originalPath,
    destinationPath: destinationPath ?? this.destinationPath,
    conversion: conversion ?? this.conversion,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateFileGenerationStart';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateFileGenerationStop** *(updateFileGenerationStop)* - child of Update
///
/// File generation is no longer needed.
///
/// * [generationId]: Unique identifier for the generation process.
final class UpdateFileGenerationStop extends Update {
  
  /// **UpdateFileGenerationStop** *(updateFileGenerationStop)* - child of Update
  ///
  /// File generation is no longer needed.
  ///
  /// * [generationId]: Unique identifier for the generation process.
  const UpdateFileGenerationStop({
    required this.generationId,
    this.extra,
    this.clientId,
  });
  
  /// Unique identifier for the generation process
  final int generationId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) => UpdateFileGenerationStop(
    generationId: int.parse(json['generation_id']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "generation_id": generationId,
		};
	}

  
  @override
  UpdateFileGenerationStop copyWith({
    int? generationId,
    dynamic extra,
    int? clientId,
  }) => UpdateFileGenerationStop(
    generationId: generationId ?? this.generationId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateFileGenerationStop';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateFileDownloads** *(updateFileDownloads)* - child of Update
///
/// The state of the file download list has changed.
///
/// * [totalSize]: Total size of files in the file download list, in bytes.
/// * [totalCount]: Total number of files in the file download list.
/// * [downloadedSize]: Total downloaded size of files in the file download list, in bytes.
final class UpdateFileDownloads extends Update {
  
  /// **UpdateFileDownloads** *(updateFileDownloads)* - child of Update
  ///
  /// The state of the file download list has changed.
  ///
  /// * [totalSize]: Total size of files in the file download list, in bytes.
  /// * [totalCount]: Total number of files in the file download list.
  /// * [downloadedSize]: Total downloaded size of files in the file download list, in bytes.
  const UpdateFileDownloads({
    required this.totalSize,
    required this.totalCount,
    required this.downloadedSize,
    this.extra,
    this.clientId,
  });
  
  /// Total size of files in the file download list, in bytes
  final int totalSize;

  /// Total number of files in the file download list
  final int totalCount;

  /// Total downloaded size of files in the file download list, in bytes
  final int downloadedSize;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFileDownloads.fromJson(Map<String, dynamic> json) => UpdateFileDownloads(
    totalSize: json['total_size'],
    totalCount: json['total_count'],
    downloadedSize: json['downloaded_size'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_size": totalSize,
      "total_count": totalCount,
      "downloaded_size": downloadedSize,
		};
	}

  
  @override
  UpdateFileDownloads copyWith({
    int? totalSize,
    int? totalCount,
    int? downloadedSize,
    dynamic extra,
    int? clientId,
  }) => UpdateFileDownloads(
    totalSize: totalSize ?? this.totalSize,
    totalCount: totalCount ?? this.totalCount,
    downloadedSize: downloadedSize ?? this.downloadedSize,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateFileDownloads';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateFileAddedToDownloads** *(updateFileAddedToDownloads)* - child of Update
///
/// A file was added to the file download list. This update is sent only after file download list is loaded for the first time.
///
/// * [fileDownload]: The added file download.
/// * [counts]: New number of being downloaded and recently downloaded files found.
final class UpdateFileAddedToDownloads extends Update {
  
  /// **UpdateFileAddedToDownloads** *(updateFileAddedToDownloads)* - child of Update
  ///
  /// A file was added to the file download list. This update is sent only after file download list is loaded for the first time.
  ///
  /// * [fileDownload]: The added file download.
  /// * [counts]: New number of being downloaded and recently downloaded files found.
  const UpdateFileAddedToDownloads({
    required this.fileDownload,
    required this.counts,
    this.extra,
    this.clientId,
  });
  
  /// The added file download 
  final FileDownload fileDownload;

  /// New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFileAddedToDownloads.fromJson(Map<String, dynamic> json) => UpdateFileAddedToDownloads(
    fileDownload: FileDownload.fromJson(json['file_download']),
    counts: DownloadedFileCounts.fromJson(json['counts']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file_download": fileDownload.toJson(),
      "counts": counts.toJson(),
		};
	}

  
  @override
  UpdateFileAddedToDownloads copyWith({
    FileDownload? fileDownload,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) => UpdateFileAddedToDownloads(
    fileDownload: fileDownload ?? this.fileDownload,
    counts: counts ?? this.counts,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateFileAddedToDownloads';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateFileDownload** *(updateFileDownload)* - child of Update
///
/// A file download was changed. This update is sent only after file download list is loaded for the first time.
///
/// * [fileId]: File identifier.
/// * [completeDate]: Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed.
/// * [isPaused]: True, if downloading of the file is paused.
/// * [counts]: New number of being downloaded and recently downloaded files found.
final class UpdateFileDownload extends Update {
  
  /// **UpdateFileDownload** *(updateFileDownload)* - child of Update
  ///
  /// A file download was changed. This update is sent only after file download list is loaded for the first time.
  ///
  /// * [fileId]: File identifier.
  /// * [completeDate]: Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed.
  /// * [isPaused]: True, if downloading of the file is paused.
  /// * [counts]: New number of being downloaded and recently downloaded files found.
  const UpdateFileDownload({
    required this.fileId,
    required this.completeDate,
    required this.isPaused,
    required this.counts,
    this.extra,
    this.clientId,
  });
  
  /// File identifier
  final int fileId;

  /// Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
  final int completeDate;

  /// True, if downloading of the file is paused
  final bool isPaused;

  /// New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFileDownload.fromJson(Map<String, dynamic> json) => UpdateFileDownload(
    fileId: json['file_id'],
    completeDate: json['complete_date'],
    isPaused: json['is_paused'],
    counts: DownloadedFileCounts.fromJson(json['counts']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file_id": fileId,
      "complete_date": completeDate,
      "is_paused": isPaused,
      "counts": counts.toJson(),
		};
	}

  
  @override
  UpdateFileDownload copyWith({
    int? fileId,
    int? completeDate,
    bool? isPaused,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) => UpdateFileDownload(
    fileId: fileId ?? this.fileId,
    completeDate: completeDate ?? this.completeDate,
    isPaused: isPaused ?? this.isPaused,
    counts: counts ?? this.counts,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateFileDownload';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateFileRemovedFromDownloads** *(updateFileRemovedFromDownloads)* - child of Update
///
/// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time.
///
/// * [fileId]: File identifier.
/// * [counts]: New number of being downloaded and recently downloaded files found.
final class UpdateFileRemovedFromDownloads extends Update {
  
  /// **UpdateFileRemovedFromDownloads** *(updateFileRemovedFromDownloads)* - child of Update
  ///
  /// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time.
  ///
  /// * [fileId]: File identifier.
  /// * [counts]: New number of being downloaded and recently downloaded files found.
  const UpdateFileRemovedFromDownloads({
    required this.fileId,
    required this.counts,
    this.extra,
    this.clientId,
  });
  
  /// File identifier 
  final int fileId;

  /// New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFileRemovedFromDownloads.fromJson(Map<String, dynamic> json) => UpdateFileRemovedFromDownloads(
    fileId: json['file_id'],
    counts: DownloadedFileCounts.fromJson(json['counts']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file_id": fileId,
      "counts": counts.toJson(),
		};
	}

  
  @override
  UpdateFileRemovedFromDownloads copyWith({
    int? fileId,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) => UpdateFileRemovedFromDownloads(
    fileId: fileId ?? this.fileId,
    counts: counts ?? this.counts,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateFileRemovedFromDownloads';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateCall** *(updateCall)* - child of Update
///
/// New call was created or information about a call was updated.
///
/// * [call]: New data about a call.
final class UpdateCall extends Update {
  
  /// **UpdateCall** *(updateCall)* - child of Update
  ///
  /// New call was created or information about a call was updated.
  ///
  /// * [call]: New data about a call.
  const UpdateCall({
    required this.call,
    this.extra,
    this.clientId,
  });
  
  /// New data about a call
  final Call call;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateCall.fromJson(Map<String, dynamic> json) => UpdateCall(
    call: Call.fromJson(json['call']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "call": call.toJson(),
		};
	}

  
  @override
  UpdateCall copyWith({
    Call? call,
    dynamic extra,
    int? clientId,
  }) => UpdateCall(
    call: call ?? this.call,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateGroupCall** *(updateGroupCall)* - child of Update
///
/// Information about a group call was updated.
///
/// * [groupCall]: New data about a group call.
final class UpdateGroupCall extends Update {
  
  /// **UpdateGroupCall** *(updateGroupCall)* - child of Update
  ///
  /// Information about a group call was updated.
  ///
  /// * [groupCall]: New data about a group call.
  const UpdateGroupCall({
    required this.groupCall,
    this.extra,
    this.clientId,
  });
  
  /// New data about a group call
  final GroupCall groupCall;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateGroupCall.fromJson(Map<String, dynamic> json) => UpdateGroupCall(
    groupCall: GroupCall.fromJson(json['group_call']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "group_call": groupCall.toJson(),
		};
	}

  
  @override
  UpdateGroupCall copyWith({
    GroupCall? groupCall,
    dynamic extra,
    int? clientId,
  }) => UpdateGroupCall(
    groupCall: groupCall ?? this.groupCall,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateGroupCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateGroupCallParticipant** *(updateGroupCallParticipant)* - child of Update
///
/// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined.
///
/// * [groupCallId]: Identifier of group call.
/// * [participant]: New data about a participant.
final class UpdateGroupCallParticipant extends Update {
  
  /// **UpdateGroupCallParticipant** *(updateGroupCallParticipant)* - child of Update
  ///
  /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined.
  ///
  /// * [groupCallId]: Identifier of group call.
  /// * [participant]: New data about a participant.
  const UpdateGroupCallParticipant({
    required this.groupCallId,
    required this.participant,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of group call
  final int groupCallId;

  /// New data about a participant
  final GroupCallParticipant participant;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json) => UpdateGroupCallParticipant(
    groupCallId: json['group_call_id'],
    participant: GroupCallParticipant.fromJson(json['participant']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "participant": participant.toJson(),
		};
	}

  
  @override
  UpdateGroupCallParticipant copyWith({
    int? groupCallId,
    GroupCallParticipant? participant,
    dynamic extra,
    int? clientId,
  }) => UpdateGroupCallParticipant(
    groupCallId: groupCallId ?? this.groupCallId,
    participant: participant ?? this.participant,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateGroupCallParticipant';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewCallSignalingData** *(updateNewCallSignalingData)* - child of Update
///
/// New call signaling data arrived.
///
/// * [callId]: The call identifier.
/// * [data]: The data.
final class UpdateNewCallSignalingData extends Update {
  
  /// **UpdateNewCallSignalingData** *(updateNewCallSignalingData)* - child of Update
  ///
  /// New call signaling data arrived.
  ///
  /// * [callId]: The call identifier.
  /// * [data]: The data.
  const UpdateNewCallSignalingData({
    required this.callId,
    required this.data,
    this.extra,
    this.clientId,
  });
  
  /// The call identifier 
  final int callId;

  /// The data
  final String data;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json) => UpdateNewCallSignalingData(
    callId: json['call_id'],
    data: json['data'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "call_id": callId,
      "data": data,
		};
	}

  
  @override
  UpdateNewCallSignalingData copyWith({
    int? callId,
    String? data,
    dynamic extra,
    int? clientId,
  }) => UpdateNewCallSignalingData(
    callId: callId ?? this.callId,
    data: data ?? this.data,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewCallSignalingData';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateUserPrivacySettingRules** *(updateUserPrivacySettingRules)* - child of Update
///
/// Some privacy setting rules have been changed.
///
/// * [setting]: The privacy setting.
/// * [rules]: New privacy rules.
final class UpdateUserPrivacySettingRules extends Update {
  
  /// **UpdateUserPrivacySettingRules** *(updateUserPrivacySettingRules)* - child of Update
  ///
  /// Some privacy setting rules have been changed.
  ///
  /// * [setting]: The privacy setting.
  /// * [rules]: New privacy rules.
  const UpdateUserPrivacySettingRules({
    required this.setting,
    required this.rules,
    this.extra,
    this.clientId,
  });
  
  /// The privacy setting 
  final UserPrivacySetting setting;

  /// New privacy rules
  final UserPrivacySettingRules rules;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) => UpdateUserPrivacySettingRules(
    setting: UserPrivacySetting.fromJson(json['setting']),
    rules: UserPrivacySettingRules.fromJson(json['rules']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "setting": setting.toJson(),
      "rules": rules.toJson(),
		};
	}

  
  @override
  UpdateUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
    UserPrivacySettingRules? rules,
    dynamic extra,
    int? clientId,
  }) => UpdateUserPrivacySettingRules(
    setting: setting ?? this.setting,
    rules: rules ?? this.rules,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateUserPrivacySettingRules';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateUnreadMessageCount** *(updateUnreadMessageCount)* - child of Update
///
/// Number of unread messages in a chat list has changed. This update is sent only if the message database is used.
///
/// * [chatList]: The chat list with changed number of unread messages.
/// * [unreadCount]: Total number of unread messages.
/// * [unreadUnmutedCount]: Total number of unread messages in unmuted chats.
final class UpdateUnreadMessageCount extends Update {
  
  /// **UpdateUnreadMessageCount** *(updateUnreadMessageCount)* - child of Update
  ///
  /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used.
  ///
  /// * [chatList]: The chat list with changed number of unread messages.
  /// * [unreadCount]: Total number of unread messages.
  /// * [unreadUnmutedCount]: Total number of unread messages in unmuted chats.
  const UpdateUnreadMessageCount({
    required this.chatList,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    this.extra,
    this.clientId,
  });
  
  /// The chat list with changed number of unread messages
  final ChatList chatList;

  /// Total number of unread messages
  final int unreadCount;

  /// Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) => UpdateUnreadMessageCount(
    chatList: ChatList.fromJson(json['chat_list']),
    unreadCount: json['unread_count'],
    unreadUnmutedCount: json['unread_unmuted_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_list": chatList.toJson(),
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
		};
	}

  
  @override
  UpdateUnreadMessageCount copyWith({
    ChatList? chatList,
    int? unreadCount,
    int? unreadUnmutedCount,
    dynamic extra,
    int? clientId,
  }) => UpdateUnreadMessageCount(
    chatList: chatList ?? this.chatList,
    unreadCount: unreadCount ?? this.unreadCount,
    unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateUnreadMessageCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateUnreadChatCount** *(updateUnreadChatCount)* - child of Update
///
/// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used.
///
/// * [chatList]: The chat list with changed number of unread messages.
/// * [totalCount]: Approximate total number of chats in the chat list.
/// * [unreadCount]: Total number of unread chats.
/// * [unreadUnmutedCount]: Total number of unread unmuted chats.
/// * [markedAsUnreadCount]: Total number of chats marked as unread.
/// * [markedAsUnreadUnmutedCount]: Total number of unmuted chats marked as unread.
final class UpdateUnreadChatCount extends Update {
  
  /// **UpdateUnreadChatCount** *(updateUnreadChatCount)* - child of Update
  ///
  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used.
  ///
  /// * [chatList]: The chat list with changed number of unread messages.
  /// * [totalCount]: Approximate total number of chats in the chat list.
  /// * [unreadCount]: Total number of unread chats.
  /// * [unreadUnmutedCount]: Total number of unread unmuted chats.
  /// * [markedAsUnreadCount]: Total number of chats marked as unread.
  /// * [markedAsUnreadUnmutedCount]: Total number of unmuted chats marked as unread.
  const UpdateUnreadChatCount({
    required this.chatList,
    required this.totalCount,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    required this.markedAsUnreadCount,
    required this.markedAsUnreadUnmutedCount,
    this.extra,
    this.clientId,
  });
  
  /// The chat list with changed number of unread messages
  final ChatList chatList;

  /// Approximate total number of chats in the chat list
  final int totalCount;

  /// Total number of unread chats
  final int unreadCount;

  /// Total number of unread unmuted chats
  final int unreadUnmutedCount;

  /// Total number of chats marked as unread
  final int markedAsUnreadCount;

  /// Total number of unmuted chats marked as unread
  final int markedAsUnreadUnmutedCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) => UpdateUnreadChatCount(
    chatList: ChatList.fromJson(json['chat_list']),
    totalCount: json['total_count'],
    unreadCount: json['unread_count'],
    unreadUnmutedCount: json['unread_unmuted_count'],
    markedAsUnreadCount: json['marked_as_unread_count'],
    markedAsUnreadUnmutedCount: json['marked_as_unread_unmuted_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_list": chatList.toJson(),
      "total_count": totalCount,
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
      "marked_as_unread_count": markedAsUnreadCount,
      "marked_as_unread_unmuted_count": markedAsUnreadUnmutedCount,
		};
	}

  
  @override
  UpdateUnreadChatCount copyWith({
    ChatList? chatList,
    int? totalCount,
    int? unreadCount,
    int? unreadUnmutedCount,
    int? markedAsUnreadCount,
    int? markedAsUnreadUnmutedCount,
    dynamic extra,
    int? clientId,
  }) => UpdateUnreadChatCount(
    chatList: chatList ?? this.chatList,
    totalCount: totalCount ?? this.totalCount,
    unreadCount: unreadCount ?? this.unreadCount,
    unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
    markedAsUnreadCount: markedAsUnreadCount ?? this.markedAsUnreadCount,
    markedAsUnreadUnmutedCount: markedAsUnreadUnmutedCount ?? this.markedAsUnreadUnmutedCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateUnreadChatCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateOption** *(updateOption)* - child of Update
///
/// An option changed its value.
///
/// * [name]: The option name.
/// * [value]: The new option value.
final class UpdateOption extends Update {
  
  /// **UpdateOption** *(updateOption)* - child of Update
  ///
  /// An option changed its value.
  ///
  /// * [name]: The option name.
  /// * [value]: The new option value.
  const UpdateOption({
    required this.name,
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// The option name 
  final String name;

  /// The new option value
  final OptionValue value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateOption.fromJson(Map<String, dynamic> json) => UpdateOption(
    name: json['name'],
    value: OptionValue.fromJson(json['value']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
      "value": value.toJson(),
		};
	}

  
  @override
  UpdateOption copyWith({
    String? name,
    OptionValue? value,
    dynamic extra,
    int? clientId,
  }) => UpdateOption(
    name: name ?? this.name,
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateOption';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateStickerSet** *(updateStickerSet)* - child of Update
///
/// A sticker set has changed.
///
/// * [stickerSet]: The sticker set.
final class UpdateStickerSet extends Update {
  
  /// **UpdateStickerSet** *(updateStickerSet)* - child of Update
  ///
  /// A sticker set has changed.
  ///
  /// * [stickerSet]: The sticker set.
  const UpdateStickerSet({
    required this.stickerSet,
    this.extra,
    this.clientId,
  });
  
  /// The sticker set
  final StickerSet stickerSet;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateStickerSet.fromJson(Map<String, dynamic> json) => UpdateStickerSet(
    stickerSet: StickerSet.fromJson(json['sticker_set']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker_set": stickerSet.toJson(),
		};
	}

  
  @override
  UpdateStickerSet copyWith({
    StickerSet? stickerSet,
    dynamic extra,
    int? clientId,
  }) => UpdateStickerSet(
    stickerSet: stickerSet ?? this.stickerSet,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateStickerSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateInstalledStickerSets** *(updateInstalledStickerSets)* - child of Update
///
/// The list of installed sticker sets was updated.
///
/// * [stickerType]: Type of the affected stickers.
/// * [stickerSetIds]: The new list of installed ordinary sticker sets.
final class UpdateInstalledStickerSets extends Update {
  
  /// **UpdateInstalledStickerSets** *(updateInstalledStickerSets)* - child of Update
  ///
  /// The list of installed sticker sets was updated.
  ///
  /// * [stickerType]: Type of the affected stickers.
  /// * [stickerSetIds]: The new list of installed ordinary sticker sets.
  const UpdateInstalledStickerSets({
    required this.stickerType,
    required this.stickerSetIds,
    this.extra,
    this.clientId,
  });
  
  /// Type of the affected stickers 
  final StickerType stickerType;

  /// The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) => UpdateInstalledStickerSets(
    stickerType: StickerType.fromJson(json['sticker_type']),
    stickerSetIds: List<int>.from((json['sticker_set_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    //clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker_type": stickerType.toJson(),
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateInstalledStickerSets copyWith({
    StickerType? stickerType,
    List<int>? stickerSetIds,
    dynamic extra,
    int? clientId,
  }) => UpdateInstalledStickerSets(
    stickerType: stickerType ?? this.stickerType,
    stickerSetIds: stickerSetIds ?? this.stickerSetIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateInstalledStickerSets';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateTrendingStickerSets** *(updateTrendingStickerSets)* - child of Update
///
/// The list of trending sticker sets was updated or some of them were viewed.
///
/// * [stickerType]: Type of the affected stickers.
/// * [stickerSets]: The prefix of the list of trending sticker sets with the newest trending sticker sets.
final class UpdateTrendingStickerSets extends Update {
  
  /// **UpdateTrendingStickerSets** *(updateTrendingStickerSets)* - child of Update
  ///
  /// The list of trending sticker sets was updated or some of them were viewed.
  ///
  /// * [stickerType]: Type of the affected stickers.
  /// * [stickerSets]: The prefix of the list of trending sticker sets with the newest trending sticker sets.
  const UpdateTrendingStickerSets({
    required this.stickerType,
    required this.stickerSets,
    this.extra,
    this.clientId,
  });
  
  /// Type of the affected stickers 
  final StickerType stickerType;

  /// The prefix of the list of trending sticker sets with the newest trending sticker sets
  final TrendingStickerSets stickerSets;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) => UpdateTrendingStickerSets(
    stickerType: StickerType.fromJson(json['sticker_type']),
    stickerSets: TrendingStickerSets.fromJson(json['sticker_sets']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker_type": stickerType.toJson(),
      "sticker_sets": stickerSets.toJson(),
		};
	}

  
  @override
  UpdateTrendingStickerSets copyWith({
    StickerType? stickerType,
    TrendingStickerSets? stickerSets,
    dynamic extra,
    int? clientId,
  }) => UpdateTrendingStickerSets(
    stickerType: stickerType ?? this.stickerType,
    stickerSets: stickerSets ?? this.stickerSets,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateTrendingStickerSets';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateRecentStickers** *(updateRecentStickers)* - child of Update
///
/// The list of recently used stickers was updated.
///
/// * [isAttached]: True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated.
/// * [stickerIds]: The new list of file identifiers of recently used stickers.
final class UpdateRecentStickers extends Update {
  
  /// **UpdateRecentStickers** *(updateRecentStickers)* - child of Update
  ///
  /// The list of recently used stickers was updated.
  ///
  /// * [isAttached]: True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated.
  /// * [stickerIds]: The new list of file identifiers of recently used stickers.
  const UpdateRecentStickers({
    required this.isAttached,
    required this.stickerIds,
    this.extra,
    this.clientId,
  });
  
  /// True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated 
  final bool isAttached;

  /// The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateRecentStickers.fromJson(Map<String, dynamic> json) => UpdateRecentStickers(
    isAttached: json['is_attached'],
    stickerIds: List<int>.from((json['sticker_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_attached": isAttached,
      "sticker_ids": stickerIds.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateRecentStickers copyWith({
    bool? isAttached,
    List<int>? stickerIds,
    dynamic extra,
    int? clientId,
  }) => UpdateRecentStickers(
    isAttached: isAttached ?? this.isAttached,
    stickerIds: stickerIds ?? this.stickerIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateRecentStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateFavoriteStickers** *(updateFavoriteStickers)* - child of Update
///
/// The list of favorite stickers was updated.
///
/// * [stickerIds]: The new list of file identifiers of favorite stickers.
final class UpdateFavoriteStickers extends Update {
  
  /// **UpdateFavoriteStickers** *(updateFavoriteStickers)* - child of Update
  ///
  /// The list of favorite stickers was updated.
  ///
  /// * [stickerIds]: The new list of file identifiers of favorite stickers.
  const UpdateFavoriteStickers({
    required this.stickerIds,
    this.extra,
    this.clientId,
  });
  
  /// The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) => UpdateFavoriteStickers(
    stickerIds: List<int>.from((json['sticker_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker_ids": stickerIds.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateFavoriteStickers copyWith({
    List<int>? stickerIds,
    dynamic extra,
    int? clientId,
  }) => UpdateFavoriteStickers(
    stickerIds: stickerIds ?? this.stickerIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateFavoriteStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateSavedAnimations** *(updateSavedAnimations)* - child of Update
///
/// The list of saved animations was updated.
///
/// * [animationIds]: The new list of file identifiers of saved animations.
final class UpdateSavedAnimations extends Update {
  
  /// **UpdateSavedAnimations** *(updateSavedAnimations)* - child of Update
  ///
  /// The list of saved animations was updated.
  ///
  /// * [animationIds]: The new list of file identifiers of saved animations.
  const UpdateSavedAnimations({
    required this.animationIds,
    this.extra,
    this.clientId,
  });
  
  /// The new list of file identifiers of saved animations
  final List<int> animationIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSavedAnimations.fromJson(Map<String, dynamic> json) => UpdateSavedAnimations(
    animationIds: List<int>.from((json['animation_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "animation_ids": animationIds.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateSavedAnimations copyWith({
    List<int>? animationIds,
    dynamic extra,
    int? clientId,
  }) => UpdateSavedAnimations(
    animationIds: animationIds ?? this.animationIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateSavedAnimations';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateSavedNotificationSounds** *(updateSavedNotificationSounds)* - child of Update
///
/// The list of saved notifications sounds was updated. This update may not be sent until information about a notification sound was requested for the first time.
///
/// * [notificationSoundIds]: The new list of identifiers of saved notification sounds.
final class UpdateSavedNotificationSounds extends Update {
  
  /// **UpdateSavedNotificationSounds** *(updateSavedNotificationSounds)* - child of Update
  ///
  /// The list of saved notifications sounds was updated. This update may not be sent until information about a notification sound was requested for the first time.
  ///
  /// * [notificationSoundIds]: The new list of identifiers of saved notification sounds.
  const UpdateSavedNotificationSounds({
    required this.notificationSoundIds,
    this.extra,
    this.clientId,
  });
  
  /// The new list of identifiers of saved notification sounds
  final List<int> notificationSoundIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSavedNotificationSounds.fromJson(Map<String, dynamic> json) => UpdateSavedNotificationSounds(
    notificationSoundIds: List<int>.from((json['notification_sound_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "notification_sound_ids": notificationSoundIds.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateSavedNotificationSounds copyWith({
    List<int>? notificationSoundIds,
    dynamic extra,
    int? clientId,
  }) => UpdateSavedNotificationSounds(
    notificationSoundIds: notificationSoundIds ?? this.notificationSoundIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateSavedNotificationSounds';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateSelectedBackground** *(updateSelectedBackground)* - child of Update
///
/// The selected background has changed.
///
/// * [forDarkTheme]: True, if background for dark theme has changed.
/// * [background]: The new selected background; may be null *(optional)*.
final class UpdateSelectedBackground extends Update {
  
  /// **UpdateSelectedBackground** *(updateSelectedBackground)* - child of Update
  ///
  /// The selected background has changed.
  ///
  /// * [forDarkTheme]: True, if background for dark theme has changed.
  /// * [background]: The new selected background; may be null *(optional)*.
  const UpdateSelectedBackground({
    required this.forDarkTheme,
    this.background,
    this.extra,
    this.clientId,
  });
  
  /// True, if background for dark theme has changed 
  final bool forDarkTheme;

  /// The new selected background; may be null
  final Background? background;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSelectedBackground.fromJson(Map<String, dynamic> json) => UpdateSelectedBackground(
    forDarkTheme: json['for_dark_theme'],
    background: json['background'] == null ? null : Background.fromJson(json['background']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "for_dark_theme": forDarkTheme,
      "background": background?.toJson(),
		};
	}

  
  @override
  UpdateSelectedBackground copyWith({
    bool? forDarkTheme,
    Background? background,
    dynamic extra,
    int? clientId,
  }) => UpdateSelectedBackground(
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
    background: background ?? this.background,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateSelectedBackground';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatThemes** *(updateChatThemes)* - child of Update
///
/// The list of available chat themes has changed.
///
/// * [chatThemes]: The new list of chat themes.
final class UpdateChatThemes extends Update {
  
  /// **UpdateChatThemes** *(updateChatThemes)* - child of Update
  ///
  /// The list of available chat themes has changed.
  ///
  /// * [chatThemes]: The new list of chat themes.
  const UpdateChatThemes({
    required this.chatThemes,
    this.extra,
    this.clientId,
  });
  
  /// The new list of chat themes
  final List<ChatTheme> chatThemes;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatThemes.fromJson(Map<String, dynamic> json) => UpdateChatThemes(
    chatThemes: List<ChatTheme>.from((json['chat_themes'] ?? []).map((item) => ChatTheme.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_themes": chatThemes.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  UpdateChatThemes copyWith({
    List<ChatTheme>? chatThemes,
    dynamic extra,
    int? clientId,
  }) => UpdateChatThemes(
    chatThemes: chatThemes ?? this.chatThemes,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatThemes';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateLanguagePackStrings** *(updateLanguagePackStrings)* - child of Update
///
/// Some language pack strings have been updated.
///
/// * [localizationTarget]: Localization target to which the language pack belongs.
/// * [languagePackId]: Identifier of the updated language pack.
/// * [strings]: List of changed language pack strings.
final class UpdateLanguagePackStrings extends Update {
  
  /// **UpdateLanguagePackStrings** *(updateLanguagePackStrings)* - child of Update
  ///
  /// Some language pack strings have been updated.
  ///
  /// * [localizationTarget]: Localization target to which the language pack belongs.
  /// * [languagePackId]: Identifier of the updated language pack.
  /// * [strings]: List of changed language pack strings.
  const UpdateLanguagePackStrings({
    required this.localizationTarget,
    required this.languagePackId,
    required this.strings,
    this.extra,
    this.clientId,
  });
  
  /// Localization target to which the language pack belongs 
  final String localizationTarget;

  /// Identifier of the updated language pack 
  final String languagePackId;

  /// List of changed language pack strings
  final List<LanguagePackString> strings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) => UpdateLanguagePackStrings(
    localizationTarget: json['localization_target'],
    languagePackId: json['language_pack_id'],
    strings: List<LanguagePackString>.from((json['strings'] ?? []).map((item) => LanguagePackString.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "localization_target": localizationTarget,
      "language_pack_id": languagePackId,
      "strings": strings.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  UpdateLanguagePackStrings copyWith({
    String? localizationTarget,
    String? languagePackId,
    List<LanguagePackString>? strings,
    dynamic extra,
    int? clientId,
  }) => UpdateLanguagePackStrings(
    localizationTarget: localizationTarget ?? this.localizationTarget,
    languagePackId: languagePackId ?? this.languagePackId,
    strings: strings ?? this.strings,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateLanguagePackStrings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateConnectionState** *(updateConnectionState)* - child of Update
///
/// The connection state has changed. This update must be used only to show a human-readable description of the connection state.
///
/// * [state]: The new connection state.
final class UpdateConnectionState extends Update {
  
  /// **UpdateConnectionState** *(updateConnectionState)* - child of Update
  ///
  /// The connection state has changed. This update must be used only to show a human-readable description of the connection state.
  ///
  /// * [state]: The new connection state.
  const UpdateConnectionState({
    required this.state,
    this.extra,
    this.clientId,
  });
  
  /// The new connection state
  final ConnectionState state;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateConnectionState.fromJson(Map<String, dynamic> json) => UpdateConnectionState(
    state: ConnectionState.fromJson(json['state']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "state": state.toJson(),
		};
	}

  
  @override
  UpdateConnectionState copyWith({
    ConnectionState? state,
    dynamic extra,
    int? clientId,
  }) => UpdateConnectionState(
    state: state ?? this.state,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateConnectionState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateTermsOfService** *(updateTermsOfService)* - child of Update
///
/// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update".
///
/// * [termsOfServiceId]: Identifier of the terms of service.
/// * [termsOfService]: The new terms of service.
final class UpdateTermsOfService extends Update {
  
  /// **UpdateTermsOfService** *(updateTermsOfService)* - child of Update
  ///
  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update".
  ///
  /// * [termsOfServiceId]: Identifier of the terms of service.
  /// * [termsOfService]: The new terms of service.
  const UpdateTermsOfService({
    required this.termsOfServiceId,
    required this.termsOfService,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the terms of service 
  final String termsOfServiceId;

  /// The new terms of service
  final TermsOfService termsOfService;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateTermsOfService.fromJson(Map<String, dynamic> json) => UpdateTermsOfService(
    termsOfServiceId: json['terms_of_service_id'],
    termsOfService: TermsOfService.fromJson(json['terms_of_service']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "terms_of_service_id": termsOfServiceId,
      "terms_of_service": termsOfService.toJson(),
		};
	}

  
  @override
  UpdateTermsOfService copyWith({
    String? termsOfServiceId,
    TermsOfService? termsOfService,
    dynamic extra,
    int? clientId,
  }) => UpdateTermsOfService(
    termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
    termsOfService: termsOfService ?? this.termsOfService,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateTermsOfService';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateUsersNearby** *(updateUsersNearby)* - child of Update
///
/// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request.
///
/// * [usersNearby]: The new list of users nearby.
final class UpdateUsersNearby extends Update {
  
  /// **UpdateUsersNearby** *(updateUsersNearby)* - child of Update
  ///
  /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request.
  ///
  /// * [usersNearby]: The new list of users nearby.
  const UpdateUsersNearby({
    required this.usersNearby,
    this.extra,
    this.clientId,
  });
  
  /// The new list of users nearby
  final List<ChatNearby> usersNearby;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUsersNearby.fromJson(Map<String, dynamic> json) => UpdateUsersNearby(
    usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? []).map((item) => ChatNearby.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "users_nearby": usersNearby.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  UpdateUsersNearby copyWith({
    List<ChatNearby>? usersNearby,
    dynamic extra,
    int? clientId,
  }) => UpdateUsersNearby(
    usersNearby: usersNearby ?? this.usersNearby,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateUsersNearby';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateAttachmentMenuBots** *(updateAttachmentMenuBots)* - child of Update
///
/// The list of bots added to attachment menu has changed.
///
/// * [bots]: The new list of bots added to attachment menu. The bots must not be shown on scheduled messages screen.
final class UpdateAttachmentMenuBots extends Update {
  
  /// **UpdateAttachmentMenuBots** *(updateAttachmentMenuBots)* - child of Update
  ///
  /// The list of bots added to attachment menu has changed.
  ///
  /// * [bots]: The new list of bots added to attachment menu. The bots must not be shown on scheduled messages screen.
  const UpdateAttachmentMenuBots({
    required this.bots,
    this.extra,
    this.clientId,
  });
  
  /// The new list of bots added to attachment menu. The bots must not be shown on scheduled messages screen
  final List<AttachmentMenuBot> bots;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateAttachmentMenuBots.fromJson(Map<String, dynamic> json) => UpdateAttachmentMenuBots(
    bots: List<AttachmentMenuBot>.from((json['bots'] ?? []).map((item) => AttachmentMenuBot.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bots": bots.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  UpdateAttachmentMenuBots copyWith({
    List<AttachmentMenuBot>? bots,
    dynamic extra,
    int? clientId,
  }) => UpdateAttachmentMenuBots(
    bots: bots ?? this.bots,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateAttachmentMenuBots';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateWebAppMessageSent** *(updateWebAppMessageSent)* - child of Update
///
/// A message was sent by an opened Web App, so the Web App needs to be closed.
///
/// * [webAppLaunchId]: Identifier of Web App launch.
final class UpdateWebAppMessageSent extends Update {
  
  /// **UpdateWebAppMessageSent** *(updateWebAppMessageSent)* - child of Update
  ///
  /// A message was sent by an opened Web App, so the Web App needs to be closed.
  ///
  /// * [webAppLaunchId]: Identifier of Web App launch.
  const UpdateWebAppMessageSent({
    required this.webAppLaunchId,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of Web App launch
  final int webAppLaunchId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateWebAppMessageSent.fromJson(Map<String, dynamic> json) => UpdateWebAppMessageSent(
    webAppLaunchId: int.parse(json['web_app_launch_id']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "web_app_launch_id": webAppLaunchId,
		};
	}

  
  @override
  UpdateWebAppMessageSent copyWith({
    int? webAppLaunchId,
    dynamic extra,
    int? clientId,
  }) => UpdateWebAppMessageSent(
    webAppLaunchId: webAppLaunchId ?? this.webAppLaunchId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateWebAppMessageSent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateActiveEmojiReactions** *(updateActiveEmojiReactions)* - child of Update
///
/// The list of active emoji reactions has changed.
///
/// * [emojis]: The new list of active emoji reactions.
final class UpdateActiveEmojiReactions extends Update {
  
  /// **UpdateActiveEmojiReactions** *(updateActiveEmojiReactions)* - child of Update
  ///
  /// The list of active emoji reactions has changed.
  ///
  /// * [emojis]: The new list of active emoji reactions.
  const UpdateActiveEmojiReactions({
    required this.emojis,
    this.extra,
    this.clientId,
  });
  
  /// The new list of active emoji reactions
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateActiveEmojiReactions.fromJson(Map<String, dynamic> json) => UpdateActiveEmojiReactions(
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "emojis": emojis.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateActiveEmojiReactions copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) => UpdateActiveEmojiReactions(
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateActiveEmojiReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateDefaultReactionType** *(updateDefaultReactionType)* - child of Update
///
/// The type of default reaction has changed.
///
/// * [reactionType]: The new type of the default reaction.
final class UpdateDefaultReactionType extends Update {
  
  /// **UpdateDefaultReactionType** *(updateDefaultReactionType)* - child of Update
  ///
  /// The type of default reaction has changed.
  ///
  /// * [reactionType]: The new type of the default reaction.
  const UpdateDefaultReactionType({
    required this.reactionType,
    this.extra,
    this.clientId,
  });
  
  /// The new type of the default reaction
  final ReactionType reactionType;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateDefaultReactionType.fromJson(Map<String, dynamic> json) => UpdateDefaultReactionType(
    reactionType: ReactionType.fromJson(json['reaction_type']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "reaction_type": reactionType.toJson(),
		};
	}

  
  @override
  UpdateDefaultReactionType copyWith({
    ReactionType? reactionType,
    dynamic extra,
    int? clientId,
  }) => UpdateDefaultReactionType(
    reactionType: reactionType ?? this.reactionType,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateDefaultReactionType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateDiceEmojis** *(updateDiceEmojis)* - child of Update
///
/// The list of supported dice emojis has changed.
///
/// * [emojis]: The new list of supported dice emojis.
final class UpdateDiceEmojis extends Update {
  
  /// **UpdateDiceEmojis** *(updateDiceEmojis)* - child of Update
  ///
  /// The list of supported dice emojis has changed.
  ///
  /// * [emojis]: The new list of supported dice emojis.
  const UpdateDiceEmojis({
    required this.emojis,
    this.extra,
    this.clientId,
  });
  
  /// The new list of supported dice emojis
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateDiceEmojis.fromJson(Map<String, dynamic> json) => UpdateDiceEmojis(
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "emojis": emojis.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateDiceEmojis copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) => UpdateDiceEmojis(
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateDiceEmojis';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateAnimatedEmojiMessageClicked** *(updateAnimatedEmojiMessageClicked)* - child of Update
///
/// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [sticker]: The animated sticker to be played.
final class UpdateAnimatedEmojiMessageClicked extends Update {
  
  /// **UpdateAnimatedEmojiMessageClicked** *(updateAnimatedEmojiMessageClicked)* - child of Update
  ///
  /// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [sticker]: The animated sticker to be played.
  const UpdateAnimatedEmojiMessageClicked({
    required this.chatId,
    required this.messageId,
    required this.sticker,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// Message identifier
  final int messageId;

  /// The animated sticker to be played
  final Sticker sticker;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateAnimatedEmojiMessageClicked.fromJson(Map<String, dynamic> json) => UpdateAnimatedEmojiMessageClicked(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    sticker: Sticker.fromJson(json['sticker']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "sticker": sticker.toJson(),
		};
	}

  
  @override
  UpdateAnimatedEmojiMessageClicked copyWith({
    int? chatId,
    int? messageId,
    Sticker? sticker,
    dynamic extra,
    int? clientId,
  }) => UpdateAnimatedEmojiMessageClicked(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    sticker: sticker ?? this.sticker,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateAnimatedEmojiMessageClicked';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateAnimationSearchParameters** *(updateAnimationSearchParameters)* - child of Update
///
/// The parameters of animation search through getOption("animation_search_bot_username") bot has changed.
///
/// * [provider]: Name of the animation search provider.
/// * [emojis]: The new list of emojis suggested for searching.
final class UpdateAnimationSearchParameters extends Update {
  
  /// **UpdateAnimationSearchParameters** *(updateAnimationSearchParameters)* - child of Update
  ///
  /// The parameters of animation search through getOption("animation_search_bot_username") bot has changed.
  ///
  /// * [provider]: Name of the animation search provider.
  /// * [emojis]: The new list of emojis suggested for searching.
  const UpdateAnimationSearchParameters({
    required this.provider,
    required this.emojis,
    this.extra,
    this.clientId,
  });
  
  /// Name of the animation search provider 
  final String provider;

  /// The new list of emojis suggested for searching
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json) => UpdateAnimationSearchParameters(
    provider: json['provider'],
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "provider": provider,
      "emojis": emojis.map((i) => i).toList(),
		};
	}

  
  @override
  UpdateAnimationSearchParameters copyWith({
    String? provider,
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) => UpdateAnimationSearchParameters(
    provider: provider ?? this.provider,
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateAnimationSearchParameters';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateSuggestedActions** *(updateSuggestedActions)* - child of Update
///
/// The list of suggested to the user actions has changed.
///
/// * [addedActions]: Added suggested actions.
/// * [removedActions]: Removed suggested actions.
final class UpdateSuggestedActions extends Update {
  
  /// **UpdateSuggestedActions** *(updateSuggestedActions)* - child of Update
  ///
  /// The list of suggested to the user actions has changed.
  ///
  /// * [addedActions]: Added suggested actions.
  /// * [removedActions]: Removed suggested actions.
  const UpdateSuggestedActions({
    required this.addedActions,
    required this.removedActions,
    this.extra,
    this.clientId,
  });
  
  /// Added suggested actions 
  final List<SuggestedAction> addedActions;

  /// Removed suggested actions
  final List<SuggestedAction> removedActions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSuggestedActions.fromJson(Map<String, dynamic> json) => UpdateSuggestedActions(
    addedActions: List<SuggestedAction>.from((json['added_actions'] ?? []).map((item) => SuggestedAction.fromJson(item)).toList()),
    removedActions: List<SuggestedAction>.from((json['removed_actions'] ?? []).map((item) => SuggestedAction.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "added_actions": addedActions.map((i) => i.toJson()).toList(),
      "removed_actions": removedActions.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  UpdateSuggestedActions copyWith({
    List<SuggestedAction>? addedActions,
    List<SuggestedAction>? removedActions,
    dynamic extra,
    int? clientId,
  }) => UpdateSuggestedActions(
    addedActions: addedActions ?? this.addedActions,
    removedActions: removedActions ?? this.removedActions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateSuggestedActions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewInlineQuery** *(updateNewInlineQuery)* - child of Update
///
/// A new incoming inline query; for bots only.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [userLocation]: User location; may be null *(optional)*.
/// * [chatType]: The type of the chat from which the query originated; may be null if unknown *(optional)*.
/// * [query]: Text of the query.
/// * [offset]: Offset of the first entry to return.
final class UpdateNewInlineQuery extends Update {
  
  /// **UpdateNewInlineQuery** *(updateNewInlineQuery)* - child of Update
  ///
  /// A new incoming inline query; for bots only.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [userLocation]: User location; may be null *(optional)*.
  /// * [chatType]: The type of the chat from which the query originated; may be null if unknown *(optional)*.
  /// * [query]: Text of the query.
  /// * [offset]: Offset of the first entry to return.
  const UpdateNewInlineQuery({
    required this.id,
    required this.senderUserId,
    this.userLocation,
    this.chatType,
    required this.query,
    required this.offset,
    this.extra,
    this.clientId,
  });
  
  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// User location; may be null
  final Location? userLocation;

  /// The type of the chat from which the query originated; may be null if unknown
  final ChatType? chatType;

  /// Text of the query
  final String query;

  /// Offset of the first entry to return
  final String offset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) => UpdateNewInlineQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    userLocation: json['user_location'] == null ? null : Location.fromJson(json['user_location']),
    chatType: json['chat_type'] == null ? null : ChatType.fromJson(json['chat_type']),
    query: json['query'],
    offset: json['offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "sender_user_id": senderUserId,
      "user_location": userLocation?.toJson(),
      "chat_type": chatType?.toJson(),
      "query": query,
      "offset": offset,
		};
	}

  
  @override
  UpdateNewInlineQuery copyWith({
    int? id,
    int? senderUserId,
    Location? userLocation,
    ChatType? chatType,
    String? query,
    String? offset,
    dynamic extra,
    int? clientId,
  }) => UpdateNewInlineQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    userLocation: userLocation ?? this.userLocation,
    chatType: chatType ?? this.chatType,
    query: query ?? this.query,
    offset: offset ?? this.offset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewInlineQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewChosenInlineResult** *(updateNewChosenInlineResult)* - child of Update
///
/// The user has chosen a result of an inline query; for bots only.
///
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [userLocation]: User location; may be null *(optional)*.
/// * [query]: Text of the query.
/// * [resultId]: Identifier of the chosen result.
/// * [inlineMessageId]: Identifier of the sent inline message, if known.
final class UpdateNewChosenInlineResult extends Update {
  
  /// **UpdateNewChosenInlineResult** *(updateNewChosenInlineResult)* - child of Update
  ///
  /// The user has chosen a result of an inline query; for bots only.
  ///
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [userLocation]: User location; may be null *(optional)*.
  /// * [query]: Text of the query.
  /// * [resultId]: Identifier of the chosen result.
  /// * [inlineMessageId]: Identifier of the sent inline message, if known.
  const UpdateNewChosenInlineResult({
    required this.senderUserId,
    this.userLocation,
    required this.query,
    required this.resultId,
    required this.inlineMessageId,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the user who sent the query
  final int senderUserId;

  /// User location; may be null
  final Location? userLocation;

  /// Text of the query
  final String query;

  /// Identifier of the chosen result
  final String resultId;

  /// Identifier of the sent inline message, if known
  final String inlineMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) => UpdateNewChosenInlineResult(
    senderUserId: json['sender_user_id'],
    userLocation: json['user_location'] == null ? null : Location.fromJson(json['user_location']),
    query: json['query'],
    resultId: json['result_id'],
    inlineMessageId: json['inline_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sender_user_id": senderUserId,
      "user_location": userLocation?.toJson(),
      "query": query,
      "result_id": resultId,
      "inline_message_id": inlineMessageId,
		};
	}

  
  @override
  UpdateNewChosenInlineResult copyWith({
    int? senderUserId,
    Location? userLocation,
    String? query,
    String? resultId,
    String? inlineMessageId,
    dynamic extra,
    int? clientId,
  }) => UpdateNewChosenInlineResult(
    senderUserId: senderUserId ?? this.senderUserId,
    userLocation: userLocation ?? this.userLocation,
    query: query ?? this.query,
    resultId: resultId ?? this.resultId,
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewChosenInlineResult';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewCallbackQuery** *(updateNewCallbackQuery)* - child of Update
///
/// A new incoming callback query; for bots only.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [chatId]: Identifier of the chat where the query was sent.
/// * [messageId]: Identifier of the message from which the query originated.
/// * [chatInstance]: Identifier that uniquely corresponds to the chat to which the message was sent.
/// * [payload]: Query payload.
final class UpdateNewCallbackQuery extends Update {
  
  /// **UpdateNewCallbackQuery** *(updateNewCallbackQuery)* - child of Update
  ///
  /// A new incoming callback query; for bots only.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [chatId]: Identifier of the chat where the query was sent.
  /// * [messageId]: Identifier of the message from which the query originated.
  /// * [chatInstance]: Identifier that uniquely corresponds to the chat to which the message was sent.
  /// * [payload]: Query payload.
  const UpdateNewCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.chatId,
    required this.messageId,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });
  
  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// Identifier of the chat where the query was sent
  final int chatId;

  /// Identifier of the message from which the query originated
  final int messageId;

  /// Identifier that uniquely corresponds to the chat to which the message was sent
  final int chatInstance;

  /// Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) => UpdateNewCallbackQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    chatId: json['chat_id'],
    messageId: json['message_id'],
    chatInstance: int.parse(json['chat_instance']),
    payload: CallbackQueryPayload.fromJson(json['payload']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "sender_user_id": senderUserId,
      "chat_id": chatId,
      "message_id": messageId,
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
		};
	}

  
  @override
  UpdateNewCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    int? chatId,
    int? messageId,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) => UpdateNewCallbackQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    chatInstance: chatInstance ?? this.chatInstance,
    payload: payload ?? this.payload,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewCallbackQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewInlineCallbackQuery** *(updateNewInlineCallbackQuery)* - child of Update
///
/// A new incoming callback query from a message sent via a bot; for bots only.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [inlineMessageId]: Identifier of the inline message from which the query originated.
/// * [chatInstance]: An identifier uniquely corresponding to the chat a message was sent to.
/// * [payload]: Query payload.
final class UpdateNewInlineCallbackQuery extends Update {
  
  /// **UpdateNewInlineCallbackQuery** *(updateNewInlineCallbackQuery)* - child of Update
  ///
  /// A new incoming callback query from a message sent via a bot; for bots only.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [inlineMessageId]: Identifier of the inline message from which the query originated.
  /// * [chatInstance]: An identifier uniquely corresponding to the chat a message was sent to.
  /// * [payload]: Query payload.
  const UpdateNewInlineCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.inlineMessageId,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });
  
  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// Identifier of the inline message from which the query originated
  final String inlineMessageId;

  /// An identifier uniquely corresponding to the chat a message was sent to
  final int chatInstance;

  /// Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) => UpdateNewInlineCallbackQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    inlineMessageId: json['inline_message_id'],
    chatInstance: int.parse(json['chat_instance']),
    payload: CallbackQueryPayload.fromJson(json['payload']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "sender_user_id": senderUserId,
      "inline_message_id": inlineMessageId,
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
		};
	}

  
  @override
  UpdateNewInlineCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    String? inlineMessageId,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) => UpdateNewInlineCallbackQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    chatInstance: chatInstance ?? this.chatInstance,
    payload: payload ?? this.payload,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewInlineCallbackQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewShippingQuery** *(updateNewShippingQuery)* - child of Update
///
/// A new incoming shipping query; for bots only. Only for invoices with flexible price.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [invoicePayload]: Invoice payload.
/// * [shippingAddress]: User shipping address.
final class UpdateNewShippingQuery extends Update {
  
  /// **UpdateNewShippingQuery** *(updateNewShippingQuery)* - child of Update
  ///
  /// A new incoming shipping query; for bots only. Only for invoices with flexible price.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [invoicePayload]: Invoice payload.
  /// * [shippingAddress]: User shipping address.
  const UpdateNewShippingQuery({
    required this.id,
    required this.senderUserId,
    required this.invoicePayload,
    required this.shippingAddress,
    this.extra,
    this.clientId,
  });
  
  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// Invoice payload
  final String invoicePayload;

  /// User shipping address
  final Address shippingAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) => UpdateNewShippingQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    invoicePayload: json['invoice_payload'],
    shippingAddress: Address.fromJson(json['shipping_address']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "sender_user_id": senderUserId,
      "invoice_payload": invoicePayload,
      "shipping_address": shippingAddress.toJson(),
		};
	}

  
  @override
  UpdateNewShippingQuery copyWith({
    int? id,
    int? senderUserId,
    String? invoicePayload,
    Address? shippingAddress,
    dynamic extra,
    int? clientId,
  }) => UpdateNewShippingQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    shippingAddress: shippingAddress ?? this.shippingAddress,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewShippingQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewPreCheckoutQuery** *(updateNewPreCheckoutQuery)* - child of Update
///
/// A new incoming pre-checkout query; for bots only. Contains full information about a checkout.
///
/// * [id]: Unique query identifier.
/// * [senderUserId]: Identifier of the user who sent the query.
/// * [currency]: Currency for the product price.
/// * [totalAmount]: Total price for the product, in the smallest units of the currency.
/// * [invoicePayload]: Invoice payload.
/// * [shippingOptionId]: Identifier of a shipping option chosen by the user; may be empty if not applicable.
/// * [orderInfo]: Information about the order; may be null *(optional)*.
final class UpdateNewPreCheckoutQuery extends Update {
  
  /// **UpdateNewPreCheckoutQuery** *(updateNewPreCheckoutQuery)* - child of Update
  ///
  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout.
  ///
  /// * [id]: Unique query identifier.
  /// * [senderUserId]: Identifier of the user who sent the query.
  /// * [currency]: Currency for the product price.
  /// * [totalAmount]: Total price for the product, in the smallest units of the currency.
  /// * [invoicePayload]: Invoice payload.
  /// * [shippingOptionId]: Identifier of a shipping option chosen by the user; may be empty if not applicable.
  /// * [orderInfo]: Information about the order; may be null *(optional)*.
  const UpdateNewPreCheckoutQuery({
    required this.id,
    required this.senderUserId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
    this.extra,
    this.clientId,
  });
  
  /// Unique query identifier
  final int id;

  /// Identifier of the user who sent the query
  final int senderUserId;

  /// Currency for the product price
  final String currency;

  /// Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// Invoice payload
  final String invoicePayload;

  /// Identifier of a shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;

  /// Information about the order; may be null
  final OrderInfo? orderInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) => UpdateNewPreCheckoutQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    currency: json['currency'],
    totalAmount: json['total_amount'],
    invoicePayload: json['invoice_payload'],
    shippingOptionId: json['shipping_option_id'],
    orderInfo: json['order_info'] == null ? null : OrderInfo.fromJson(json['order_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "sender_user_id": senderUserId,
      "currency": currency,
      "total_amount": totalAmount,
      "invoice_payload": invoicePayload,
      "shipping_option_id": shippingOptionId,
      "order_info": orderInfo?.toJson(),
		};
	}

  
  @override
  UpdateNewPreCheckoutQuery copyWith({
    int? id,
    int? senderUserId,
    String? currency,
    int? totalAmount,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateNewPreCheckoutQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    shippingOptionId: shippingOptionId ?? this.shippingOptionId,
    orderInfo: orderInfo ?? this.orderInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewPreCheckoutQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewCustomEvent** *(updateNewCustomEvent)* - child of Update
///
/// A new incoming event; for bots only.
///
/// * [event]: A JSON-serialized event.
final class UpdateNewCustomEvent extends Update {
  
  /// **UpdateNewCustomEvent** *(updateNewCustomEvent)* - child of Update
  ///
  /// A new incoming event; for bots only.
  ///
  /// * [event]: A JSON-serialized event.
  const UpdateNewCustomEvent({
    required this.event,
    this.extra,
    this.clientId,
  });
  
  /// A JSON-serialized event
  final String event;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) => UpdateNewCustomEvent(
    event: json['event'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "event": event,
		};
	}

  
  @override
  UpdateNewCustomEvent copyWith({
    String? event,
    dynamic extra,
    int? clientId,
  }) => UpdateNewCustomEvent(
    event: event ?? this.event,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewCustomEvent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewCustomQuery** *(updateNewCustomQuery)* - child of Update
///
/// A new incoming query; for bots only.
///
/// * [id]: The query identifier.
/// * [data]: JSON-serialized query data.
/// * [timeout]: Query timeout.
final class UpdateNewCustomQuery extends Update {
  
  /// **UpdateNewCustomQuery** *(updateNewCustomQuery)* - child of Update
  ///
  /// A new incoming query; for bots only.
  ///
  /// * [id]: The query identifier.
  /// * [data]: JSON-serialized query data.
  /// * [timeout]: Query timeout.
  const UpdateNewCustomQuery({
    required this.id,
    required this.data,
    required this.timeout,
    this.extra,
    this.clientId,
  });
  
  /// The query identifier 
  final int id;

  /// JSON-serialized query data 
  final String data;

  /// Query timeout
  final int timeout;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) => UpdateNewCustomQuery(
    id: int.parse(json['id']),
    data: json['data'],
    timeout: json['timeout'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "data": data,
      "timeout": timeout,
		};
	}

  
  @override
  UpdateNewCustomQuery copyWith({
    int? id,
    String? data,
    int? timeout,
    dynamic extra,
    int? clientId,
  }) => UpdateNewCustomQuery(
    id: id ?? this.id,
    data: data ?? this.data,
    timeout: timeout ?? this.timeout,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewCustomQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdatePoll** *(updatePoll)* - child of Update
///
/// A poll was updated; for bots only.
///
/// * [poll]: New data about the poll.
final class UpdatePoll extends Update {
  
  /// **UpdatePoll** *(updatePoll)* - child of Update
  ///
  /// A poll was updated; for bots only.
  ///
  /// * [poll]: New data about the poll.
  const UpdatePoll({
    required this.poll,
    this.extra,
    this.clientId,
  });
  
  /// New data about the poll
  final Poll poll;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdatePoll.fromJson(Map<String, dynamic> json) => UpdatePoll(
    poll: Poll.fromJson(json['poll']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "poll": poll.toJson(),
		};
	}

  
  @override
  UpdatePoll copyWith({
    Poll? poll,
    dynamic extra,
    int? clientId,
  }) => UpdatePoll(
    poll: poll ?? this.poll,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updatePoll';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdatePollAnswer** *(updatePollAnswer)* - child of Update
///
/// A user changed the answer to a poll; for bots only.
///
/// * [pollId]: Unique poll identifier.
/// * [userId]: The user, who changed the answer to the poll.
/// * [optionIds]: 0-based identifiers of answer options, chosen by the user.
final class UpdatePollAnswer extends Update {
  
  /// **UpdatePollAnswer** *(updatePollAnswer)* - child of Update
  ///
  /// A user changed the answer to a poll; for bots only.
  ///
  /// * [pollId]: Unique poll identifier.
  /// * [userId]: The user, who changed the answer to the poll.
  /// * [optionIds]: 0-based identifiers of answer options, chosen by the user.
  const UpdatePollAnswer({
    required this.pollId,
    required this.userId,
    required this.optionIds,
    this.extra,
    this.clientId,
  });
  
  /// Unique poll identifier 
  final int pollId;

  /// The user, who changed the answer to the poll 
  final int userId;

  /// 0-based identifiers of answer options, chosen by the user
  final List<int> optionIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdatePollAnswer.fromJson(Map<String, dynamic> json) => UpdatePollAnswer(
    pollId: int.parse(json['poll_id']),
    userId: json['user_id'],
    optionIds: List<int>.from((json['option_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "poll_id": pollId,
      "user_id": userId,
      "option_ids": optionIds.map((i) => i).toList(),
		};
	}

  
  @override
  UpdatePollAnswer copyWith({
    int? pollId,
    int? userId,
    List<int>? optionIds,
    dynamic extra,
    int? clientId,
  }) => UpdatePollAnswer(
    pollId: pollId ?? this.pollId,
    userId: userId ?? this.userId,
    optionIds: optionIds ?? this.optionIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updatePollAnswer';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateChatMember** *(updateChatMember)* - child of Update
///
/// User rights changed in a chat; for bots only.
///
/// * [chatId]: Chat identifier.
/// * [actorUserId]: Identifier of the user, changing the rights.
/// * [date]: Point in time (Unix timestamp) when the user rights was changed.
/// * [inviteLink]: If user has joined the chat using an invite link, the invite link; may be null *(optional)*.
/// * [oldChatMember]: Previous chat member.
/// * [newChatMember]: New chat member.
final class UpdateChatMember extends Update {
  
  /// **UpdateChatMember** *(updateChatMember)* - child of Update
  ///
  /// User rights changed in a chat; for bots only.
  ///
  /// * [chatId]: Chat identifier.
  /// * [actorUserId]: Identifier of the user, changing the rights.
  /// * [date]: Point in time (Unix timestamp) when the user rights was changed.
  /// * [inviteLink]: If user has joined the chat using an invite link, the invite link; may be null *(optional)*.
  /// * [oldChatMember]: Previous chat member.
  /// * [newChatMember]: New chat member.
  const UpdateChatMember({
    required this.chatId,
    required this.actorUserId,
    required this.date,
    this.inviteLink,
    required this.oldChatMember,
    required this.newChatMember,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier
  final int chatId;

  /// Identifier of the user, changing the rights
  final int actorUserId;

  /// Point in time (Unix timestamp) when the user rights was changed
  final int date;

  /// If user has joined the chat using an invite link, the invite link; may be null
  final ChatInviteLink? inviteLink;

  /// Previous chat member
  final ChatMember oldChatMember;

  /// New chat member
  final ChatMember newChatMember;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatMember.fromJson(Map<String, dynamic> json) => UpdateChatMember(
    chatId: json['chat_id'],
    actorUserId: json['actor_user_id'],
    date: json['date'],
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
    oldChatMember: ChatMember.fromJson(json['old_chat_member']),
    newChatMember: ChatMember.fromJson(json['new_chat_member']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "actor_user_id": actorUserId,
      "date": date,
      "invite_link": inviteLink?.toJson(),
      "old_chat_member": oldChatMember.toJson(),
      "new_chat_member": newChatMember.toJson(),
		};
	}

  
  @override
  UpdateChatMember copyWith({
    int? chatId,
    int? actorUserId,
    int? date,
    ChatInviteLink? inviteLink,
    ChatMember? oldChatMember,
    ChatMember? newChatMember,
    dynamic extra,
    int? clientId,
  }) => UpdateChatMember(
    chatId: chatId ?? this.chatId,
    actorUserId: actorUserId ?? this.actorUserId,
    date: date ?? this.date,
    inviteLink: inviteLink ?? this.inviteLink,
    oldChatMember: oldChatMember ?? this.oldChatMember,
    newChatMember: newChatMember ?? this.newChatMember,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateChatMember';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UpdateNewChatJoinRequest** *(updateNewChatJoinRequest)* - child of Update
///
/// A user sent a join request to a chat; for bots only.
///
/// * [chatId]: Chat identifier.
/// * [request]: Join request.
/// * [inviteLink]: The invite link, which was used to send join request; may be null *(optional)*.
final class UpdateNewChatJoinRequest extends Update {
  
  /// **UpdateNewChatJoinRequest** *(updateNewChatJoinRequest)* - child of Update
  ///
  /// A user sent a join request to a chat; for bots only.
  ///
  /// * [chatId]: Chat identifier.
  /// * [request]: Join request.
  /// * [inviteLink]: The invite link, which was used to send join request; may be null *(optional)*.
  const UpdateNewChatJoinRequest({
    required this.chatId,
    required this.request,
    this.inviteLink,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Join request 
  final ChatJoinRequest request;

  /// The invite link, which was used to send join request; may be null
  final ChatInviteLink? inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewChatJoinRequest.fromJson(Map<String, dynamic> json) => UpdateNewChatJoinRequest(
    chatId: json['chat_id'],
    request: ChatJoinRequest.fromJson(json['request']),
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "request": request.toJson(),
      "invite_link": inviteLink?.toJson(),
		};
	}

  
  @override
  UpdateNewChatJoinRequest copyWith({
    int? chatId,
    ChatJoinRequest? request,
    ChatInviteLink? inviteLink,
    dynamic extra,
    int? clientId,
  }) => UpdateNewChatJoinRequest(
    chatId: chatId ?? this.chatId,
    request: request ?? this.request,
    inviteLink: inviteLink ?? this.inviteLink,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'updateNewChatJoinRequest';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
