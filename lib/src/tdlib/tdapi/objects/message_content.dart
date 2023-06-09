part of '../tdapi.dart';

/// **MessageContent** *(messageContent)* - parent
///
/// Contains the content of a message.
sealed class MessageContent extends TdObject {
  
  /// **MessageContent** *(messageContent)* - parent
  ///
  /// Contains the content of a message.
  const MessageContent();
  
  /// a MessageContent return type can be :
  /// * [MessageText]
  /// * [MessageAnimation]
  /// * [MessageAudio]
  /// * [MessageDocument]
  /// * [MessagePhoto]
  /// * [MessageExpiredPhoto]
  /// * [MessageSticker]
  /// * [MessageVideo]
  /// * [MessageExpiredVideo]
  /// * [MessageVideoNote]
  /// * [MessageVoiceNote]
  /// * [MessageLocation]
  /// * [MessageVenue]
  /// * [MessageContact]
  /// * [MessageAnimatedEmoji]
  /// * [MessageDice]
  /// * [MessageGame]
  /// * [MessagePoll]
  /// * [MessageInvoice]
  /// * [MessageCall]
  /// * [MessageVideoChatScheduled]
  /// * [MessageVideoChatStarted]
  /// * [MessageVideoChatEnded]
  /// * [MessageInviteVideoChatParticipants]
  /// * [MessageBasicGroupChatCreate]
  /// * [MessageSupergroupChatCreate]
  /// * [MessageChatChangeTitle]
  /// * [MessageChatChangePhoto]
  /// * [MessageChatDeletePhoto]
  /// * [MessageChatAddMembers]
  /// * [MessageChatJoinByLink]
  /// * [MessageChatJoinByRequest]
  /// * [MessageChatDeleteMember]
  /// * [MessageChatUpgradeTo]
  /// * [MessageChatUpgradeFrom]
  /// * [MessagePinMessage]
  /// * [MessageScreenshotTaken]
  /// * [MessageChatSetTheme]
  /// * [MessageChatSetMessageAutoDeleteTime]
  /// * [MessageForumTopicCreated]
  /// * [MessageForumTopicEdited]
  /// * [MessageForumTopicIsClosedToggled]
  /// * [MessageForumTopicIsHiddenToggled]
  /// * [MessageSuggestProfilePhoto]
  /// * [MessageCustomServiceAction]
  /// * [MessageGameScore]
  /// * [MessagePaymentSuccessful]
  /// * [MessagePaymentSuccessfulBot]
  /// * [MessageGiftedPremium]
  /// * [MessageContactRegistered]
  /// * [MessageWebsiteConnected]
  /// * [MessageBotWriteAccessAllowed]
  /// * [MessageWebAppDataSent]
  /// * [MessageWebAppDataReceived]
  /// * [MessagePassportDataSent]
  /// * [MessagePassportDataReceived]
  /// * [MessageProximityAlertTriggered]
  /// * [MessageUnsupported]
  factory MessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageText.objectType:
        return MessageText.fromJson(json);
      case MessageAnimation.objectType:
        return MessageAnimation.fromJson(json);
      case MessageAudio.objectType:
        return MessageAudio.fromJson(json);
      case MessageDocument.objectType:
        return MessageDocument.fromJson(json);
      case MessagePhoto.objectType:
        return MessagePhoto.fromJson(json);
      case MessageExpiredPhoto.objectType:
        return MessageExpiredPhoto.fromJson(json);
      case MessageSticker.objectType:
        return MessageSticker.fromJson(json);
      case MessageVideo.objectType:
        return MessageVideo.fromJson(json);
      case MessageExpiredVideo.objectType:
        return MessageExpiredVideo.fromJson(json);
      case MessageVideoNote.objectType:
        return MessageVideoNote.fromJson(json);
      case MessageVoiceNote.objectType:
        return MessageVoiceNote.fromJson(json);
      case MessageLocation.objectType:
        return MessageLocation.fromJson(json);
      case MessageVenue.objectType:
        return MessageVenue.fromJson(json);
      case MessageContact.objectType:
        return MessageContact.fromJson(json);
      case MessageAnimatedEmoji.objectType:
        return MessageAnimatedEmoji.fromJson(json);
      case MessageDice.objectType:
        return MessageDice.fromJson(json);
      case MessageGame.objectType:
        return MessageGame.fromJson(json);
      case MessagePoll.objectType:
        return MessagePoll.fromJson(json);
      case MessageInvoice.objectType:
        return MessageInvoice.fromJson(json);
      case MessageCall.objectType:
        return MessageCall.fromJson(json);
      case MessageVideoChatScheduled.objectType:
        return MessageVideoChatScheduled.fromJson(json);
      case MessageVideoChatStarted.objectType:
        return MessageVideoChatStarted.fromJson(json);
      case MessageVideoChatEnded.objectType:
        return MessageVideoChatEnded.fromJson(json);
      case MessageInviteVideoChatParticipants.objectType:
        return MessageInviteVideoChatParticipants.fromJson(json);
      case MessageBasicGroupChatCreate.objectType:
        return MessageBasicGroupChatCreate.fromJson(json);
      case MessageSupergroupChatCreate.objectType:
        return MessageSupergroupChatCreate.fromJson(json);
      case MessageChatChangeTitle.objectType:
        return MessageChatChangeTitle.fromJson(json);
      case MessageChatChangePhoto.objectType:
        return MessageChatChangePhoto.fromJson(json);
      case MessageChatDeletePhoto.objectType:
        return MessageChatDeletePhoto.fromJson(json);
      case MessageChatAddMembers.objectType:
        return MessageChatAddMembers.fromJson(json);
      case MessageChatJoinByLink.objectType:
        return MessageChatJoinByLink.fromJson(json);
      case MessageChatJoinByRequest.objectType:
        return MessageChatJoinByRequest.fromJson(json);
      case MessageChatDeleteMember.objectType:
        return MessageChatDeleteMember.fromJson(json);
      case MessageChatUpgradeTo.objectType:
        return MessageChatUpgradeTo.fromJson(json);
      case MessageChatUpgradeFrom.objectType:
        return MessageChatUpgradeFrom.fromJson(json);
      case MessagePinMessage.objectType:
        return MessagePinMessage.fromJson(json);
      case MessageScreenshotTaken.objectType:
        return MessageScreenshotTaken.fromJson(json);
      case MessageChatSetTheme.objectType:
        return MessageChatSetTheme.fromJson(json);
      case MessageChatSetMessageAutoDeleteTime.objectType:
        return MessageChatSetMessageAutoDeleteTime.fromJson(json);
      case MessageForumTopicCreated.objectType:
        return MessageForumTopicCreated.fromJson(json);
      case MessageForumTopicEdited.objectType:
        return MessageForumTopicEdited.fromJson(json);
      case MessageForumTopicIsClosedToggled.objectType:
        return MessageForumTopicIsClosedToggled.fromJson(json);
      case MessageForumTopicIsHiddenToggled.objectType:
        return MessageForumTopicIsHiddenToggled.fromJson(json);
      case MessageSuggestProfilePhoto.objectType:
        return MessageSuggestProfilePhoto.fromJson(json);
      case MessageCustomServiceAction.objectType:
        return MessageCustomServiceAction.fromJson(json);
      case MessageGameScore.objectType:
        return MessageGameScore.fromJson(json);
      case MessagePaymentSuccessful.objectType:
        return MessagePaymentSuccessful.fromJson(json);
      case MessagePaymentSuccessfulBot.objectType:
        return MessagePaymentSuccessfulBot.fromJson(json);
      case MessageGiftedPremium.objectType:
        return MessageGiftedPremium.fromJson(json);
      case MessageContactRegistered.objectType:
        return MessageContactRegistered.fromJson(json);
      case MessageWebsiteConnected.objectType:
        return MessageWebsiteConnected.fromJson(json);
      case MessageBotWriteAccessAllowed.objectType:
        return MessageBotWriteAccessAllowed.fromJson(json);
      case MessageWebAppDataSent.objectType:
        return MessageWebAppDataSent.fromJson(json);
      case MessageWebAppDataReceived.objectType:
        return MessageWebAppDataReceived.fromJson(json);
      case MessagePassportDataSent.objectType:
        return MessagePassportDataSent.fromJson(json);
      case MessagePassportDataReceived.objectType:
        return MessagePassportDataReceived.fromJson(json);
      case MessageProximityAlertTriggered.objectType:
        return MessageProximityAlertTriggered.fromJson(json);
      case MessageUnsupported.objectType:
        return MessageUnsupported.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageContent)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  MessageContent copyWith();

  static const String objectType = 'messageContent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageText** *(messageText)* - child of MessageContent
///
/// A text message.
///
/// * [text]: Text of the message.
/// * [webPage]: A preview of the web page that's mentioned in the text; may be null *(optional)*.
final class MessageText extends MessageContent {
  
  /// **MessageText** *(messageText)* - child of MessageContent
  ///
  /// A text message.
  ///
  /// * [text]: Text of the message.
  /// * [webPage]: A preview of the web page that's mentioned in the text; may be null *(optional)*.
  const MessageText({
    required this.text,
    this.webPage,
  });
  
  /// Text of the message 
  final FormattedText text;

  /// A preview of the web page that's mentioned in the text; may be null
  final WebPage? webPage;
  
  /// Parse from a json
  factory MessageText.fromJson(Map<String, dynamic> json) => MessageText(
    text: FormattedText.fromJson(json['text']),
    webPage: json['web_page'] == null ? null : WebPage.fromJson(json['web_page']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "web_page": webPage?.toJson(),
		};
	}

  
  @override
  MessageText copyWith({
    FormattedText? text,
    WebPage? webPage,
  }) => MessageText(
    text: text ?? this.text,
    webPage: webPage ?? this.webPage,
  );

  static const String objectType = 'messageText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageAnimation** *(messageAnimation)* - child of MessageContent
///
/// An animation message (GIF-style).
///
/// * [animation]: The animation description.
/// * [caption]: Animation caption.
/// * [hasSpoiler]: True, if the animation preview must be covered by a spoiler animation.
/// * [isSecret]: True, if the animation thumbnail must be blurred and the animation must be shown only while tapped.
final class MessageAnimation extends MessageContent {
  
  /// **MessageAnimation** *(messageAnimation)* - child of MessageContent
  ///
  /// An animation message (GIF-style).
  ///
  /// * [animation]: The animation description.
  /// * [caption]: Animation caption.
  /// * [hasSpoiler]: True, if the animation preview must be covered by a spoiler animation.
  /// * [isSecret]: True, if the animation thumbnail must be blurred and the animation must be shown only while tapped.
  const MessageAnimation({
    required this.animation,
    required this.caption,
    required this.hasSpoiler,
    required this.isSecret,
  });
  
  /// The animation description
  final Animation animation;

  /// Animation caption
  final FormattedText caption;

  /// True, if the animation preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  final bool isSecret;
  
  /// Parse from a json
  factory MessageAnimation.fromJson(Map<String, dynamic> json) => MessageAnimation(
    animation: Animation.fromJson(json['animation']),
    caption: FormattedText.fromJson(json['caption']),
    hasSpoiler: json['has_spoiler'],
    isSecret: json['is_secret'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "animation": animation.toJson(),
      "caption": caption.toJson(),
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
		};
	}

  
  @override
  MessageAnimation copyWith({
    Animation? animation,
    FormattedText? caption,
    bool? hasSpoiler,
    bool? isSecret,
  }) => MessageAnimation(
    animation: animation ?? this.animation,
    caption: caption ?? this.caption,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    isSecret: isSecret ?? this.isSecret,
  );

  static const String objectType = 'messageAnimation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageAudio** *(messageAudio)* - child of MessageContent
///
/// An audio message.
///
/// * [audio]: The audio description.
/// * [caption]: Audio caption.
final class MessageAudio extends MessageContent {
  
  /// **MessageAudio** *(messageAudio)* - child of MessageContent
  ///
  /// An audio message.
  ///
  /// * [audio]: The audio description.
  /// * [caption]: Audio caption.
  const MessageAudio({
    required this.audio,
    required this.caption,
  });
  
  /// The audio description 
  final Audio audio;

  /// Audio caption
  final FormattedText caption;
  
  /// Parse from a json
  factory MessageAudio.fromJson(Map<String, dynamic> json) => MessageAudio(
    audio: Audio.fromJson(json['audio']),
    caption: FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "audio": audio.toJson(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  MessageAudio copyWith({
    Audio? audio,
    FormattedText? caption,
  }) => MessageAudio(
    audio: audio ?? this.audio,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'messageAudio';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageDocument** *(messageDocument)* - child of MessageContent
///
/// A document message (general file).
///
/// * [document]: The document description.
/// * [caption]: Document caption.
final class MessageDocument extends MessageContent {
  
  /// **MessageDocument** *(messageDocument)* - child of MessageContent
  ///
  /// A document message (general file).
  ///
  /// * [document]: The document description.
  /// * [caption]: Document caption.
  const MessageDocument({
    required this.document,
    required this.caption,
  });
  
  /// The document description 
  final Document document;

  /// Document caption
  final FormattedText caption;
  
  /// Parse from a json
  factory MessageDocument.fromJson(Map<String, dynamic> json) => MessageDocument(
    document: Document.fromJson(json['document']),
    caption: FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "document": document.toJson(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  MessageDocument copyWith({
    Document? document,
    FormattedText? caption,
  }) => MessageDocument(
    document: document ?? this.document,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'messageDocument';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessagePhoto** *(messagePhoto)* - child of MessageContent
///
/// A photo message.
///
/// * [photo]: The photo.
/// * [caption]: Photo caption.
/// * [hasSpoiler]: True, if the photo preview must be covered by a spoiler animation.
/// * [isSecret]: True, if the photo must be blurred and must be shown only while tapped.
final class MessagePhoto extends MessageContent {
  
  /// **MessagePhoto** *(messagePhoto)* - child of MessageContent
  ///
  /// A photo message.
  ///
  /// * [photo]: The photo.
  /// * [caption]: Photo caption.
  /// * [hasSpoiler]: True, if the photo preview must be covered by a spoiler animation.
  /// * [isSecret]: True, if the photo must be blurred and must be shown only while tapped.
  const MessagePhoto({
    required this.photo,
    required this.caption,
    required this.hasSpoiler,
    required this.isSecret,
  });
  
  /// The photo
  final Photo photo;

  /// Photo caption
  final FormattedText caption;

  /// True, if the photo preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// True, if the photo must be blurred and must be shown only while tapped
  final bool isSecret;
  
  /// Parse from a json
  factory MessagePhoto.fromJson(Map<String, dynamic> json) => MessagePhoto(
    photo: Photo.fromJson(json['photo']),
    caption: FormattedText.fromJson(json['caption']),
    hasSpoiler: json['has_spoiler'],
    isSecret: json['is_secret'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "photo": photo.toJson(),
      "caption": caption.toJson(),
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
		};
	}

  
  @override
  MessagePhoto copyWith({
    Photo? photo,
    FormattedText? caption,
    bool? hasSpoiler,
    bool? isSecret,
  }) => MessagePhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    isSecret: isSecret ?? this.isSecret,
  );

  static const String objectType = 'messagePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageExpiredPhoto** *(messageExpiredPhoto)* - child of MessageContent
///
/// A self-destructed photo message.
final class MessageExpiredPhoto extends MessageContent {
  
  /// **MessageExpiredPhoto** *(messageExpiredPhoto)* - child of MessageContent
  ///
  /// A self-destructed photo message.
  const MessageExpiredPhoto();
  
  /// Parse from a json
  factory MessageExpiredPhoto.fromJson(Map<String, dynamic> json) => const MessageExpiredPhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageExpiredPhoto copyWith() => const MessageExpiredPhoto();

  static const String objectType = 'messageExpiredPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageSticker** *(messageSticker)* - child of MessageContent
///
/// A sticker message.
///
/// * [sticker]: The sticker description.
/// * [isPremium]: True, if premium animation of the sticker must be played.
final class MessageSticker extends MessageContent {
  
  /// **MessageSticker** *(messageSticker)* - child of MessageContent
  ///
  /// A sticker message.
  ///
  /// * [sticker]: The sticker description.
  /// * [isPremium]: True, if premium animation of the sticker must be played.
  const MessageSticker({
    required this.sticker,
    required this.isPremium,
  });
  
  /// The sticker description 
  final Sticker sticker;

  /// True, if premium animation of the sticker must be played
  final bool isPremium;
  
  /// Parse from a json
  factory MessageSticker.fromJson(Map<String, dynamic> json) => MessageSticker(
    sticker: Sticker.fromJson(json['sticker']),
    isPremium: json['is_premium'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "is_premium": isPremium,
		};
	}

  
  @override
  MessageSticker copyWith({
    Sticker? sticker,
    bool? isPremium,
  }) => MessageSticker(
    sticker: sticker ?? this.sticker,
    isPremium: isPremium ?? this.isPremium,
  );

  static const String objectType = 'messageSticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageVideo** *(messageVideo)* - child of MessageContent
///
/// A video message.
///
/// * [video]: The video description.
/// * [caption]: Video caption.
/// * [hasSpoiler]: True, if the video preview must be covered by a spoiler animation.
/// * [isSecret]: True, if the video thumbnail must be blurred and the video must be shown only while tapped.
final class MessageVideo extends MessageContent {
  
  /// **MessageVideo** *(messageVideo)* - child of MessageContent
  ///
  /// A video message.
  ///
  /// * [video]: The video description.
  /// * [caption]: Video caption.
  /// * [hasSpoiler]: True, if the video preview must be covered by a spoiler animation.
  /// * [isSecret]: True, if the video thumbnail must be blurred and the video must be shown only while tapped.
  const MessageVideo({
    required this.video,
    required this.caption,
    required this.hasSpoiler,
    required this.isSecret,
  });
  
  /// The video description
  final Video video;

  /// Video caption
  final FormattedText caption;

  /// True, if the video preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// True, if the video thumbnail must be blurred and the video must be shown only while tapped
  final bool isSecret;
  
  /// Parse from a json
  factory MessageVideo.fromJson(Map<String, dynamic> json) => MessageVideo(
    video: Video.fromJson(json['video']),
    caption: FormattedText.fromJson(json['caption']),
    hasSpoiler: json['has_spoiler'],
    isSecret: json['is_secret'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "video": video.toJson(),
      "caption": caption.toJson(),
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
		};
	}

  
  @override
  MessageVideo copyWith({
    Video? video,
    FormattedText? caption,
    bool? hasSpoiler,
    bool? isSecret,
  }) => MessageVideo(
    video: video ?? this.video,
    caption: caption ?? this.caption,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    isSecret: isSecret ?? this.isSecret,
  );

  static const String objectType = 'messageVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageExpiredVideo** *(messageExpiredVideo)* - child of MessageContent
///
/// A self-destructed video message.
final class MessageExpiredVideo extends MessageContent {
  
  /// **MessageExpiredVideo** *(messageExpiredVideo)* - child of MessageContent
  ///
  /// A self-destructed video message.
  const MessageExpiredVideo();
  
  /// Parse from a json
  factory MessageExpiredVideo.fromJson(Map<String, dynamic> json) => const MessageExpiredVideo();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageExpiredVideo copyWith() => const MessageExpiredVideo();

  static const String objectType = 'messageExpiredVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageVideoNote** *(messageVideoNote)* - child of MessageContent
///
/// A video note message.
///
/// * [videoNote]: The video note description.
/// * [isViewed]: True, if at least one of the recipients has viewed the video note.
/// * [isSecret]: True, if the video note thumbnail must be blurred and the video note must be shown only while tapped.
final class MessageVideoNote extends MessageContent {
  
  /// **MessageVideoNote** *(messageVideoNote)* - child of MessageContent
  ///
  /// A video note message.
  ///
  /// * [videoNote]: The video note description.
  /// * [isViewed]: True, if at least one of the recipients has viewed the video note.
  /// * [isSecret]: True, if the video note thumbnail must be blurred and the video note must be shown only while tapped.
  const MessageVideoNote({
    required this.videoNote,
    required this.isViewed,
    required this.isSecret,
  });
  
  /// The video note description 
  final VideoNote videoNote;

  /// True, if at least one of the recipients has viewed the video note 
  final bool isViewed;

  /// True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  final bool isSecret;
  
  /// Parse from a json
  factory MessageVideoNote.fromJson(Map<String, dynamic> json) => MessageVideoNote(
    videoNote: VideoNote.fromJson(json['video_note']),
    isViewed: json['is_viewed'],
    isSecret: json['is_secret'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "video_note": videoNote.toJson(),
      "is_viewed": isViewed,
      "is_secret": isSecret,
		};
	}

  
  @override
  MessageVideoNote copyWith({
    VideoNote? videoNote,
    bool? isViewed,
    bool? isSecret,
  }) => MessageVideoNote(
    videoNote: videoNote ?? this.videoNote,
    isViewed: isViewed ?? this.isViewed,
    isSecret: isSecret ?? this.isSecret,
  );

  static const String objectType = 'messageVideoNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageVoiceNote** *(messageVoiceNote)* - child of MessageContent
///
/// A voice note message.
///
/// * [voiceNote]: The voice note description.
/// * [caption]: Voice note caption.
/// * [isListened]: True, if at least one of the recipients has listened to the voice note.
final class MessageVoiceNote extends MessageContent {
  
  /// **MessageVoiceNote** *(messageVoiceNote)* - child of MessageContent
  ///
  /// A voice note message.
  ///
  /// * [voiceNote]: The voice note description.
  /// * [caption]: Voice note caption.
  /// * [isListened]: True, if at least one of the recipients has listened to the voice note.
  const MessageVoiceNote({
    required this.voiceNote,
    required this.caption,
    required this.isListened,
  });
  
  /// The voice note description 
  final VoiceNote voiceNote;

  /// Voice note caption 
  final FormattedText caption;

  /// True, if at least one of the recipients has listened to the voice note
  final bool isListened;
  
  /// Parse from a json
  factory MessageVoiceNote.fromJson(Map<String, dynamic> json) => MessageVoiceNote(
    voiceNote: VoiceNote.fromJson(json['voice_note']),
    caption: FormattedText.fromJson(json['caption']),
    isListened: json['is_listened'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "voice_note": voiceNote.toJson(),
      "caption": caption.toJson(),
      "is_listened": isListened,
		};
	}

  
  @override
  MessageVoiceNote copyWith({
    VoiceNote? voiceNote,
    FormattedText? caption,
    bool? isListened,
  }) => MessageVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    caption: caption ?? this.caption,
    isListened: isListened ?? this.isListened,
  );

  static const String objectType = 'messageVoiceNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageLocation** *(messageLocation)* - child of MessageContent
///
/// A message with a location.
///
/// * [location]: The location description.
/// * [livePeriod]: Time relative to the message send date, for which the location can be updated, in seconds.
/// * [expiresIn]: Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes.
/// * [heading]: For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown.
/// * [proximityAlertRadius]: For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only to the message sender.
final class MessageLocation extends MessageContent {
  
  /// **MessageLocation** *(messageLocation)* - child of MessageContent
  ///
  /// A message with a location.
  ///
  /// * [location]: The location description.
  /// * [livePeriod]: Time relative to the message send date, for which the location can be updated, in seconds.
  /// * [expiresIn]: Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes.
  /// * [heading]: For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown.
  /// * [proximityAlertRadius]: For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only to the message sender.
  const MessageLocation({
    required this.location,
    required this.livePeriod,
    required this.expiresIn,
    required this.heading,
    required this.proximityAlertRadius,
  });
  
  /// The location description
  final Location location;

  /// Time relative to the message send date, for which the location can be updated, in seconds
  final int livePeriod;

  /// Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
  final int expiresIn;

  /// For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown
  final int heading;

  /// For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only to the message sender
  final int proximityAlertRadius;
  
  /// Parse from a json
  factory MessageLocation.fromJson(Map<String, dynamic> json) => MessageLocation(
    location: Location.fromJson(json['location']),
    livePeriod: json['live_period'],
    expiresIn: json['expires_in'],
    heading: json['heading'],
    proximityAlertRadius: json['proximity_alert_radius'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "location": location.toJson(),
      "live_period": livePeriod,
      "expires_in": expiresIn,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
		};
	}

  
  @override
  MessageLocation copyWith({
    Location? location,
    int? livePeriod,
    int? expiresIn,
    int? heading,
    int? proximityAlertRadius,
  }) => MessageLocation(
    location: location ?? this.location,
    livePeriod: livePeriod ?? this.livePeriod,
    expiresIn: expiresIn ?? this.expiresIn,
    heading: heading ?? this.heading,
    proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
  );

  static const String objectType = 'messageLocation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageVenue** *(messageVenue)* - child of MessageContent
///
/// A message with information about a venue.
///
/// * [venue]: The venue description.
final class MessageVenue extends MessageContent {
  
  /// **MessageVenue** *(messageVenue)* - child of MessageContent
  ///
  /// A message with information about a venue.
  ///
  /// * [venue]: The venue description.
  const MessageVenue({
    required this.venue,
  });
  
  /// The venue description
  final Venue venue;
  
  /// Parse from a json
  factory MessageVenue.fromJson(Map<String, dynamic> json) => MessageVenue(
    venue: Venue.fromJson(json['venue']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "venue": venue.toJson(),
		};
	}

  
  @override
  MessageVenue copyWith({
    Venue? venue,
  }) => MessageVenue(
    venue: venue ?? this.venue,
  );

  static const String objectType = 'messageVenue';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageContact** *(messageContact)* - child of MessageContent
///
/// A message with a user contact.
///
/// * [contact]: The contact description.
final class MessageContact extends MessageContent {
  
  /// **MessageContact** *(messageContact)* - child of MessageContent
  ///
  /// A message with a user contact.
  ///
  /// * [contact]: The contact description.
  const MessageContact({
    required this.contact,
  });
  
  /// The contact description
  final Contact contact;
  
  /// Parse from a json
  factory MessageContact.fromJson(Map<String, dynamic> json) => MessageContact(
    contact: Contact.fromJson(json['contact']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "contact": contact.toJson(),
		};
	}

  
  @override
  MessageContact copyWith({
    Contact? contact,
  }) => MessageContact(
    contact: contact ?? this.contact,
  );

  static const String objectType = 'messageContact';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageAnimatedEmoji** *(messageAnimatedEmoji)* - child of MessageContent
///
/// A message with an animated emoji.
///
/// * [animatedEmoji]: The animated emoji.
/// * [emoji]: The corresponding emoji.
final class MessageAnimatedEmoji extends MessageContent {
  
  /// **MessageAnimatedEmoji** *(messageAnimatedEmoji)* - child of MessageContent
  ///
  /// A message with an animated emoji.
  ///
  /// * [animatedEmoji]: The animated emoji.
  /// * [emoji]: The corresponding emoji.
  const MessageAnimatedEmoji({
    required this.animatedEmoji,
    required this.emoji,
  });
  
  /// The animated emoji 
  final AnimatedEmoji animatedEmoji;

  /// The corresponding emoji
  final String emoji;
  
  /// Parse from a json
  factory MessageAnimatedEmoji.fromJson(Map<String, dynamic> json) => MessageAnimatedEmoji(
    animatedEmoji: AnimatedEmoji.fromJson(json['animated_emoji']),
    emoji: json['emoji'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "animated_emoji": animatedEmoji.toJson(),
      "emoji": emoji,
		};
	}

  
  @override
  MessageAnimatedEmoji copyWith({
    AnimatedEmoji? animatedEmoji,
    String? emoji,
  }) => MessageAnimatedEmoji(
    animatedEmoji: animatedEmoji ?? this.animatedEmoji,
    emoji: emoji ?? this.emoji,
  );

  static const String objectType = 'messageAnimatedEmoji';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageDice** *(messageDice)* - child of MessageContent
///
/// A dice message. The dice value is randomly generated by the server.
///
/// * [initialState]: The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known *(optional)*.
/// * [finalState]: The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known *(optional)*.
/// * [emoji]: Emoji on which the dice throw animation is based.
/// * [value]: The dice value. If the value is 0, the dice don't have final state yet.
/// * [successAnimationFrameNumber]: Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded.
final class MessageDice extends MessageContent {
  
  /// **MessageDice** *(messageDice)* - child of MessageContent
  ///
  /// A dice message. The dice value is randomly generated by the server.
  ///
  /// * [initialState]: The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known *(optional)*.
  /// * [finalState]: The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known *(optional)*.
  /// * [emoji]: Emoji on which the dice throw animation is based.
  /// * [value]: The dice value. If the value is 0, the dice don't have final state yet.
  /// * [successAnimationFrameNumber]: Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded.
  const MessageDice({
    this.initialState,
    this.finalState,
    required this.emoji,
    required this.value,
    required this.successAnimationFrameNumber,
  });
  
  /// The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  final DiceStickers? initialState;

  /// The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  final DiceStickers? finalState;

  /// Emoji on which the dice throw animation is based
  final String emoji;

  /// The dice value. If the value is 0, the dice don't have final state yet
  final int value;

  /// Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded
  final int successAnimationFrameNumber;
  
  /// Parse from a json
  factory MessageDice.fromJson(Map<String, dynamic> json) => MessageDice(
    initialState: json['initial_state'] == null ? null : DiceStickers.fromJson(json['initial_state']),
    finalState: json['final_state'] == null ? null : DiceStickers.fromJson(json['final_state']),
    emoji: json['emoji'],
    value: json['value'],
    successAnimationFrameNumber: json['success_animation_frame_number'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "initial_state": initialState?.toJson(),
      "final_state": finalState?.toJson(),
      "emoji": emoji,
      "value": value,
      "success_animation_frame_number": successAnimationFrameNumber,
		};
	}

  
  @override
  MessageDice copyWith({
    DiceStickers? initialState,
    DiceStickers? finalState,
    String? emoji,
    int? value,
    int? successAnimationFrameNumber,
  }) => MessageDice(
    initialState: initialState ?? this.initialState,
    finalState: finalState ?? this.finalState,
    emoji: emoji ?? this.emoji,
    value: value ?? this.value,
    successAnimationFrameNumber: successAnimationFrameNumber ?? this.successAnimationFrameNumber,
  );

  static const String objectType = 'messageDice';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageGame** *(messageGame)* - child of MessageContent
///
/// A message with a game.
///
/// * [game]: The game description.
final class MessageGame extends MessageContent {
  
  /// **MessageGame** *(messageGame)* - child of MessageContent
  ///
  /// A message with a game.
  ///
  /// * [game]: The game description.
  const MessageGame({
    required this.game,
  });
  
  /// The game description
  final Game game;
  
  /// Parse from a json
  factory MessageGame.fromJson(Map<String, dynamic> json) => MessageGame(
    game: Game.fromJson(json['game']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "game": game.toJson(),
		};
	}

  
  @override
  MessageGame copyWith({
    Game? game,
  }) => MessageGame(
    game: game ?? this.game,
  );

  static const String objectType = 'messageGame';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessagePoll** *(messagePoll)* - child of MessageContent
///
/// A message with a poll.
///
/// * [poll]: The poll description.
final class MessagePoll extends MessageContent {
  
  /// **MessagePoll** *(messagePoll)* - child of MessageContent
  ///
  /// A message with a poll.
  ///
  /// * [poll]: The poll description.
  const MessagePoll({
    required this.poll,
  });
  
  /// The poll description
  final Poll poll;
  
  /// Parse from a json
  factory MessagePoll.fromJson(Map<String, dynamic> json) => MessagePoll(
    poll: Poll.fromJson(json['poll']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "poll": poll.toJson(),
		};
	}

  
  @override
  MessagePoll copyWith({
    Poll? poll,
  }) => MessagePoll(
    poll: poll ?? this.poll,
  );

  static const String objectType = 'messagePoll';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageInvoice** *(messageInvoice)* - child of MessageContent
///
/// A message with an invoice from a bot.
///
/// * [title]: Product title.
/// * [description]: Product description.
/// * [photo]: Product photo; may be null *(optional)*.
/// * [currency]: Currency for the product price.
/// * [totalAmount]: Product total price in the smallest units of the currency.
/// * [startParameter]: Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}.
/// * [isTest]: True, if the invoice is a test invoice.
/// * [needShippingAddress]: True, if the shipping address must be specified.
/// * [receiptMessageId]: The identifier of the message with the receipt, after the product has been purchased.
/// * [extendedMedia]: Extended media attached to the invoice; may be null *(optional)*.
final class MessageInvoice extends MessageContent {
  
  /// **MessageInvoice** *(messageInvoice)* - child of MessageContent
  ///
  /// A message with an invoice from a bot.
  ///
  /// * [title]: Product title.
  /// * [description]: Product description.
  /// * [photo]: Product photo; may be null *(optional)*.
  /// * [currency]: Currency for the product price.
  /// * [totalAmount]: Product total price in the smallest units of the currency.
  /// * [startParameter]: Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}.
  /// * [isTest]: True, if the invoice is a test invoice.
  /// * [needShippingAddress]: True, if the shipping address must be specified.
  /// * [receiptMessageId]: The identifier of the message with the receipt, after the product has been purchased.
  /// * [extendedMedia]: Extended media attached to the invoice; may be null *(optional)*.
  const MessageInvoice({
    required this.title,
    required this.description,
    this.photo,
    required this.currency,
    required this.totalAmount,
    required this.startParameter,
    required this.isTest,
    required this.needShippingAddress,
    required this.receiptMessageId,
    this.extendedMedia,
  });
  
  /// Product title
  final String title;

  /// Product description
  final FormattedText description;

  /// Product photo; may be null
  final Photo? photo;

  /// Currency for the product price
  final String currency;

  /// Product total price in the smallest units of the currency
  final int totalAmount;

  /// Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}
  final String startParameter;

  /// True, if the invoice is a test invoice
  final bool isTest;

  /// True, if the shipping address must be specified
  final bool needShippingAddress;

  /// The identifier of the message with the receipt, after the product has been purchased
  final int receiptMessageId;

  /// Extended media attached to the invoice; may be null
  final MessageExtendedMedia? extendedMedia;
  
  /// Parse from a json
  factory MessageInvoice.fromJson(Map<String, dynamic> json) => MessageInvoice(
    title: json['title'],
    description: FormattedText.fromJson(json['description']),
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    currency: json['currency'],
    totalAmount: json['total_amount'],
    startParameter: json['start_parameter'],
    isTest: json['is_test'],
    needShippingAddress: json['need_shipping_address'],
    receiptMessageId: json['receipt_message_id'],
    extendedMedia: json['extended_media'] == null ? null : MessageExtendedMedia.fromJson(json['extended_media']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
      "description": description.toJson(),
      "photo": photo?.toJson(),
      "currency": currency,
      "total_amount": totalAmount,
      "start_parameter": startParameter,
      "is_test": isTest,
      "need_shipping_address": needShippingAddress,
      "receipt_message_id": receiptMessageId,
      "extended_media": extendedMedia?.toJson(),
		};
	}

  
  @override
  MessageInvoice copyWith({
    String? title,
    FormattedText? description,
    Photo? photo,
    String? currency,
    int? totalAmount,
    String? startParameter,
    bool? isTest,
    bool? needShippingAddress,
    int? receiptMessageId,
    MessageExtendedMedia? extendedMedia,
  }) => MessageInvoice(
    title: title ?? this.title,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    startParameter: startParameter ?? this.startParameter,
    isTest: isTest ?? this.isTest,
    needShippingAddress: needShippingAddress ?? this.needShippingAddress,
    receiptMessageId: receiptMessageId ?? this.receiptMessageId,
    extendedMedia: extendedMedia ?? this.extendedMedia,
  );

  static const String objectType = 'messageInvoice';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageCall** *(messageCall)* - child of MessageContent
///
/// A message with information about an ended call.
///
/// * [isVideo]: True, if the call was a video call.
/// * [discardReason]: Reason why the call was discarded.
/// * [duration]: Call duration, in seconds.
final class MessageCall extends MessageContent {
  
  /// **MessageCall** *(messageCall)* - child of MessageContent
  ///
  /// A message with information about an ended call.
  ///
  /// * [isVideo]: True, if the call was a video call.
  /// * [discardReason]: Reason why the call was discarded.
  /// * [duration]: Call duration, in seconds.
  const MessageCall({
    required this.isVideo,
    required this.discardReason,
    required this.duration,
  });
  
  /// True, if the call was a video call 
  final bool isVideo;

  /// Reason why the call was discarded 
  final CallDiscardReason discardReason;

  /// Call duration, in seconds
  final int duration;
  
  /// Parse from a json
  factory MessageCall.fromJson(Map<String, dynamic> json) => MessageCall(
    isVideo: json['is_video'],
    discardReason: CallDiscardReason.fromJson(json['discard_reason']),
    duration: json['duration'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_video": isVideo,
      "discard_reason": discardReason.toJson(),
      "duration": duration,
		};
	}

  
  @override
  MessageCall copyWith({
    bool? isVideo,
    CallDiscardReason? discardReason,
    int? duration,
  }) => MessageCall(
    isVideo: isVideo ?? this.isVideo,
    discardReason: discardReason ?? this.discardReason,
    duration: duration ?? this.duration,
  );

  static const String objectType = 'messageCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageVideoChatScheduled** *(messageVideoChatScheduled)* - child of MessageContent
///
/// A new video chat was scheduled.
///
/// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
/// * [startDate]: Point in time (Unix timestamp) when the group call is supposed to be started by an administrator.
final class MessageVideoChatScheduled extends MessageContent {
  
  /// **MessageVideoChatScheduled** *(messageVideoChatScheduled)* - child of MessageContent
  ///
  /// A new video chat was scheduled.
  ///
  /// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
  /// * [startDate]: Point in time (Unix timestamp) when the group call is supposed to be started by an administrator.
  const MessageVideoChatScheduled({
    required this.groupCallId,
    required this.startDate,
  });
  
  /// Identifier of the video chat. The video chat can be received through the method getGroupCall 
  final int groupCallId;

  /// Point in time (Unix timestamp) when the group call is supposed to be started by an administrator
  final int startDate;
  
  /// Parse from a json
  factory MessageVideoChatScheduled.fromJson(Map<String, dynamic> json) => MessageVideoChatScheduled(
    groupCallId: json['group_call_id'],
    startDate: json['start_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "start_date": startDate,
		};
	}

  
  @override
  MessageVideoChatScheduled copyWith({
    int? groupCallId,
    int? startDate,
  }) => MessageVideoChatScheduled(
    groupCallId: groupCallId ?? this.groupCallId,
    startDate: startDate ?? this.startDate,
  );

  static const String objectType = 'messageVideoChatScheduled';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageVideoChatStarted** *(messageVideoChatStarted)* - child of MessageContent
///
/// A newly created video chat.
///
/// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
final class MessageVideoChatStarted extends MessageContent {
  
  /// **MessageVideoChatStarted** *(messageVideoChatStarted)* - child of MessageContent
  ///
  /// A newly created video chat.
  ///
  /// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
  const MessageVideoChatStarted({
    required this.groupCallId,
  });
  
  /// Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;
  
  /// Parse from a json
  factory MessageVideoChatStarted.fromJson(Map<String, dynamic> json) => MessageVideoChatStarted(
    groupCallId: json['group_call_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
		};
	}

  
  @override
  MessageVideoChatStarted copyWith({
    int? groupCallId,
  }) => MessageVideoChatStarted(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String objectType = 'messageVideoChatStarted';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageVideoChatEnded** *(messageVideoChatEnded)* - child of MessageContent
///
/// A message with information about an ended video chat.
///
/// * [duration]: Call duration, in seconds.
final class MessageVideoChatEnded extends MessageContent {
  
  /// **MessageVideoChatEnded** *(messageVideoChatEnded)* - child of MessageContent
  ///
  /// A message with information about an ended video chat.
  ///
  /// * [duration]: Call duration, in seconds.
  const MessageVideoChatEnded({
    required this.duration,
  });
  
  /// Call duration, in seconds
  final int duration;
  
  /// Parse from a json
  factory MessageVideoChatEnded.fromJson(Map<String, dynamic> json) => MessageVideoChatEnded(
    duration: json['duration'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "duration": duration,
		};
	}

  
  @override
  MessageVideoChatEnded copyWith({
    int? duration,
  }) => MessageVideoChatEnded(
    duration: duration ?? this.duration,
  );

  static const String objectType = 'messageVideoChatEnded';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageInviteVideoChatParticipants** *(messageInviteVideoChatParticipants)* - child of MessageContent
///
/// A message with information about an invite to a video chat.
///
/// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
/// * [userIds]: Invited user identifiers.
final class MessageInviteVideoChatParticipants extends MessageContent {
  
  /// **MessageInviteVideoChatParticipants** *(messageInviteVideoChatParticipants)* - child of MessageContent
  ///
  /// A message with information about an invite to a video chat.
  ///
  /// * [groupCallId]: Identifier of the video chat. The video chat can be received through the method getGroupCall.
  /// * [userIds]: Invited user identifiers.
  const MessageInviteVideoChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });
  
  /// Identifier of the video chat. The video chat can be received through the method getGroupCall 
  final int groupCallId;

  /// Invited user identifiers
  final List<int> userIds;
  
  /// Parse from a json
  factory MessageInviteVideoChatParticipants.fromJson(Map<String, dynamic> json) => MessageInviteVideoChatParticipants(
    groupCallId: json['group_call_id'],
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "user_ids": userIds.map((i) => i).toList(),
		};
	}

  
  @override
  MessageInviteVideoChatParticipants copyWith({
    int? groupCallId,
    List<int>? userIds,
  }) => MessageInviteVideoChatParticipants(
    groupCallId: groupCallId ?? this.groupCallId,
    userIds: userIds ?? this.userIds,
  );

  static const String objectType = 'messageInviteVideoChatParticipants';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageBasicGroupChatCreate** *(messageBasicGroupChatCreate)* - child of MessageContent
///
/// A newly created basic group.
///
/// * [title]: Title of the basic group.
/// * [memberUserIds]: User identifiers of members in the basic group.
final class MessageBasicGroupChatCreate extends MessageContent {
  
  /// **MessageBasicGroupChatCreate** *(messageBasicGroupChatCreate)* - child of MessageContent
  ///
  /// A newly created basic group.
  ///
  /// * [title]: Title of the basic group.
  /// * [memberUserIds]: User identifiers of members in the basic group.
  const MessageBasicGroupChatCreate({
    required this.title,
    required this.memberUserIds,
  });
  
  /// Title of the basic group 
  final String title;

  /// User identifiers of members in the basic group
  final List<int> memberUserIds;
  
  /// Parse from a json
  factory MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) => MessageBasicGroupChatCreate(
    title: json['title'],
    memberUserIds: List<int>.from((json['member_user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
      "member_user_ids": memberUserIds.map((i) => i).toList(),
		};
	}

  
  @override
  MessageBasicGroupChatCreate copyWith({
    String? title,
    List<int>? memberUserIds,
  }) => MessageBasicGroupChatCreate(
    title: title ?? this.title,
    memberUserIds: memberUserIds ?? this.memberUserIds,
  );

  static const String objectType = 'messageBasicGroupChatCreate';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageSupergroupChatCreate** *(messageSupergroupChatCreate)* - child of MessageContent
///
/// A newly created supergroup or channel.
///
/// * [title]: Title of the supergroup or channel.
final class MessageSupergroupChatCreate extends MessageContent {
  
  /// **MessageSupergroupChatCreate** *(messageSupergroupChatCreate)* - child of MessageContent
  ///
  /// A newly created supergroup or channel.
  ///
  /// * [title]: Title of the supergroup or channel.
  const MessageSupergroupChatCreate({
    required this.title,
  });
  
  /// Title of the supergroup or channel
  final String title;
  
  /// Parse from a json
  factory MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) => MessageSupergroupChatCreate(
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
		};
	}

  
  @override
  MessageSupergroupChatCreate copyWith({
    String? title,
  }) => MessageSupergroupChatCreate(
    title: title ?? this.title,
  );

  static const String objectType = 'messageSupergroupChatCreate';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatChangeTitle** *(messageChatChangeTitle)* - child of MessageContent
///
/// An updated chat title.
///
/// * [title]: New chat title.
final class MessageChatChangeTitle extends MessageContent {
  
  /// **MessageChatChangeTitle** *(messageChatChangeTitle)* - child of MessageContent
  ///
  /// An updated chat title.
  ///
  /// * [title]: New chat title.
  const MessageChatChangeTitle({
    required this.title,
  });
  
  /// New chat title
  final String title;
  
  /// Parse from a json
  factory MessageChatChangeTitle.fromJson(Map<String, dynamic> json) => MessageChatChangeTitle(
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
		};
	}

  
  @override
  MessageChatChangeTitle copyWith({
    String? title,
  }) => MessageChatChangeTitle(
    title: title ?? this.title,
  );

  static const String objectType = 'messageChatChangeTitle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatChangePhoto** *(messageChatChangePhoto)* - child of MessageContent
///
/// An updated chat photo.
///
/// * [photo]: New chat photo.
final class MessageChatChangePhoto extends MessageContent {
  
  /// **MessageChatChangePhoto** *(messageChatChangePhoto)* - child of MessageContent
  ///
  /// An updated chat photo.
  ///
  /// * [photo]: New chat photo.
  const MessageChatChangePhoto({
    required this.photo,
  });
  
  /// New chat photo
  final ChatPhoto photo;
  
  /// Parse from a json
  factory MessageChatChangePhoto.fromJson(Map<String, dynamic> json) => MessageChatChangePhoto(
    photo: ChatPhoto.fromJson(json['photo']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "photo": photo.toJson(),
		};
	}

  
  @override
  MessageChatChangePhoto copyWith({
    ChatPhoto? photo,
  }) => MessageChatChangePhoto(
    photo: photo ?? this.photo,
  );

  static const String objectType = 'messageChatChangePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatDeletePhoto** *(messageChatDeletePhoto)* - child of MessageContent
///
/// A deleted chat photo.
final class MessageChatDeletePhoto extends MessageContent {
  
  /// **MessageChatDeletePhoto** *(messageChatDeletePhoto)* - child of MessageContent
  ///
  /// A deleted chat photo.
  const MessageChatDeletePhoto();
  
  /// Parse from a json
  factory MessageChatDeletePhoto.fromJson(Map<String, dynamic> json) => const MessageChatDeletePhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageChatDeletePhoto copyWith() => const MessageChatDeletePhoto();

  static const String objectType = 'messageChatDeletePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatAddMembers** *(messageChatAddMembers)* - child of MessageContent
///
/// New chat members were added.
///
/// * [memberUserIds]: User identifiers of the new members.
final class MessageChatAddMembers extends MessageContent {
  
  /// **MessageChatAddMembers** *(messageChatAddMembers)* - child of MessageContent
  ///
  /// New chat members were added.
  ///
  /// * [memberUserIds]: User identifiers of the new members.
  const MessageChatAddMembers({
    required this.memberUserIds,
  });
  
  /// User identifiers of the new members
  final List<int> memberUserIds;
  
  /// Parse from a json
  factory MessageChatAddMembers.fromJson(Map<String, dynamic> json) => MessageChatAddMembers(
    memberUserIds: List<int>.from((json['member_user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "member_user_ids": memberUserIds.map((i) => i).toList(),
		};
	}

  
  @override
  MessageChatAddMembers copyWith({
    List<int>? memberUserIds,
  }) => MessageChatAddMembers(
    memberUserIds: memberUserIds ?? this.memberUserIds,
  );

  static const String objectType = 'messageChatAddMembers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatJoinByLink** *(messageChatJoinByLink)* - child of MessageContent
///
/// A new member joined the chat via an invite link.
final class MessageChatJoinByLink extends MessageContent {
  
  /// **MessageChatJoinByLink** *(messageChatJoinByLink)* - child of MessageContent
  ///
  /// A new member joined the chat via an invite link.
  const MessageChatJoinByLink();
  
  /// Parse from a json
  factory MessageChatJoinByLink.fromJson(Map<String, dynamic> json) => const MessageChatJoinByLink();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageChatJoinByLink copyWith() => const MessageChatJoinByLink();

  static const String objectType = 'messageChatJoinByLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatJoinByRequest** *(messageChatJoinByRequest)* - child of MessageContent
///
/// A new member was accepted to the chat by an administrator.
final class MessageChatJoinByRequest extends MessageContent {
  
  /// **MessageChatJoinByRequest** *(messageChatJoinByRequest)* - child of MessageContent
  ///
  /// A new member was accepted to the chat by an administrator.
  const MessageChatJoinByRequest();
  
  /// Parse from a json
  factory MessageChatJoinByRequest.fromJson(Map<String, dynamic> json) => const MessageChatJoinByRequest();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageChatJoinByRequest copyWith() => const MessageChatJoinByRequest();

  static const String objectType = 'messageChatJoinByRequest';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatDeleteMember** *(messageChatDeleteMember)* - child of MessageContent
///
/// A chat member was deleted.
///
/// * [userId]: User identifier of the deleted chat member.
final class MessageChatDeleteMember extends MessageContent {
  
  /// **MessageChatDeleteMember** *(messageChatDeleteMember)* - child of MessageContent
  ///
  /// A chat member was deleted.
  ///
  /// * [userId]: User identifier of the deleted chat member.
  const MessageChatDeleteMember({
    required this.userId,
  });
  
  /// User identifier of the deleted chat member
  final int userId;
  
  /// Parse from a json
  factory MessageChatDeleteMember.fromJson(Map<String, dynamic> json) => MessageChatDeleteMember(
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
		};
	}

  
  @override
  MessageChatDeleteMember copyWith({
    int? userId,
  }) => MessageChatDeleteMember(
    userId: userId ?? this.userId,
  );

  static const String objectType = 'messageChatDeleteMember';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatUpgradeTo** *(messageChatUpgradeTo)* - child of MessageContent
///
/// A basic group was upgraded to a supergroup and was deactivated as the result.
///
/// * [supergroupId]: Identifier of the supergroup to which the basic group was upgraded.
final class MessageChatUpgradeTo extends MessageContent {
  
  /// **MessageChatUpgradeTo** *(messageChatUpgradeTo)* - child of MessageContent
  ///
  /// A basic group was upgraded to a supergroup and was deactivated as the result.
  ///
  /// * [supergroupId]: Identifier of the supergroup to which the basic group was upgraded.
  const MessageChatUpgradeTo({
    required this.supergroupId,
  });
  
  /// Identifier of the supergroup to which the basic group was upgraded
  final int supergroupId;
  
  /// Parse from a json
  factory MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) => MessageChatUpgradeTo(
    supergroupId: json['supergroup_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
		};
	}

  
  @override
  MessageChatUpgradeTo copyWith({
    int? supergroupId,
  }) => MessageChatUpgradeTo(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const String objectType = 'messageChatUpgradeTo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatUpgradeFrom** *(messageChatUpgradeFrom)* - child of MessageContent
///
/// A supergroup has been created from a basic group.
///
/// * [title]: Title of the newly created supergroup.
/// * [basicGroupId]: The identifier of the original basic group.
final class MessageChatUpgradeFrom extends MessageContent {
  
  /// **MessageChatUpgradeFrom** *(messageChatUpgradeFrom)* - child of MessageContent
  ///
  /// A supergroup has been created from a basic group.
  ///
  /// * [title]: Title of the newly created supergroup.
  /// * [basicGroupId]: The identifier of the original basic group.
  const MessageChatUpgradeFrom({
    required this.title,
    required this.basicGroupId,
  });
  
  /// Title of the newly created supergroup 
  final String title;

  /// The identifier of the original basic group
  final int basicGroupId;
  
  /// Parse from a json
  factory MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) => MessageChatUpgradeFrom(
    title: json['title'],
    basicGroupId: json['basic_group_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
      "basic_group_id": basicGroupId,
		};
	}

  
  @override
  MessageChatUpgradeFrom copyWith({
    String? title,
    int? basicGroupId,
  }) => MessageChatUpgradeFrom(
    title: title ?? this.title,
    basicGroupId: basicGroupId ?? this.basicGroupId,
  );

  static const String objectType = 'messageChatUpgradeFrom';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessagePinMessage** *(messagePinMessage)* - child of MessageContent
///
/// A message has been pinned.
///
/// * [messageId]: Identifier of the pinned message, can be an identifier of a deleted message or 0.
final class MessagePinMessage extends MessageContent {
  
  /// **MessagePinMessage** *(messagePinMessage)* - child of MessageContent
  ///
  /// A message has been pinned.
  ///
  /// * [messageId]: Identifier of the pinned message, can be an identifier of a deleted message or 0.
  const MessagePinMessage({
    required this.messageId,
  });
  
  /// Identifier of the pinned message, can be an identifier of a deleted message or 0
  final int messageId;
  
  /// Parse from a json
  factory MessagePinMessage.fromJson(Map<String, dynamic> json) => MessagePinMessage(
    messageId: json['message_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message_id": messageId,
		};
	}

  
  @override
  MessagePinMessage copyWith({
    int? messageId,
  }) => MessagePinMessage(
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'messagePinMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageScreenshotTaken** *(messageScreenshotTaken)* - child of MessageContent
///
/// A screenshot of a message in the chat has been taken.
final class MessageScreenshotTaken extends MessageContent {
  
  /// **MessageScreenshotTaken** *(messageScreenshotTaken)* - child of MessageContent
  ///
  /// A screenshot of a message in the chat has been taken.
  const MessageScreenshotTaken();
  
  /// Parse from a json
  factory MessageScreenshotTaken.fromJson(Map<String, dynamic> json) => const MessageScreenshotTaken();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageScreenshotTaken copyWith() => const MessageScreenshotTaken();

  static const String objectType = 'messageScreenshotTaken';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatSetTheme** *(messageChatSetTheme)* - child of MessageContent
///
/// A theme in the chat has been changed.
///
/// * [themeName]: If non-empty, name of a new theme, set for the chat. Otherwise, chat theme was reset to the default one.
final class MessageChatSetTheme extends MessageContent {
  
  /// **MessageChatSetTheme** *(messageChatSetTheme)* - child of MessageContent
  ///
  /// A theme in the chat has been changed.
  ///
  /// * [themeName]: If non-empty, name of a new theme, set for the chat. Otherwise, chat theme was reset to the default one.
  const MessageChatSetTheme({
    required this.themeName,
  });
  
  /// If non-empty, name of a new theme, set for the chat. Otherwise, chat theme was reset to the default one
  final String themeName;
  
  /// Parse from a json
  factory MessageChatSetTheme.fromJson(Map<String, dynamic> json) => MessageChatSetTheme(
    themeName: json['theme_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "theme_name": themeName,
		};
	}

  
  @override
  MessageChatSetTheme copyWith({
    String? themeName,
  }) => MessageChatSetTheme(
    themeName: themeName ?? this.themeName,
  );

  static const String objectType = 'messageChatSetTheme';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageChatSetMessageAutoDeleteTime** *(messageChatSetMessageAutoDeleteTime)* - child of MessageContent
///
/// The auto-delete or self-destruct timer for messages in the chat has been changed.
///
/// * [messageAutoDeleteTime]: New value auto-delete or self-destruct time, in seconds; 0 if disabled.
/// * [fromUserId]: If not 0, a user identifier, which default setting was automatically applied.
final class MessageChatSetMessageAutoDeleteTime extends MessageContent {
  
  /// **MessageChatSetMessageAutoDeleteTime** *(messageChatSetMessageAutoDeleteTime)* - child of MessageContent
  ///
  /// The auto-delete or self-destruct timer for messages in the chat has been changed.
  ///
  /// * [messageAutoDeleteTime]: New value auto-delete or self-destruct time, in seconds; 0 if disabled.
  /// * [fromUserId]: If not 0, a user identifier, which default setting was automatically applied.
  const MessageChatSetMessageAutoDeleteTime({
    required this.messageAutoDeleteTime,
    required this.fromUserId,
  });
  
  /// New value auto-delete or self-destruct time, in seconds; 0 if disabled 
  final int messageAutoDeleteTime;

  /// If not 0, a user identifier, which default setting was automatically applied
  final int fromUserId;
  
  /// Parse from a json
  factory MessageChatSetMessageAutoDeleteTime.fromJson(Map<String, dynamic> json) => MessageChatSetMessageAutoDeleteTime(
    messageAutoDeleteTime: json['message_auto_delete_time'],
    fromUserId: json['from_user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message_auto_delete_time": messageAutoDeleteTime,
      "from_user_id": fromUserId,
		};
	}

  
  @override
  MessageChatSetMessageAutoDeleteTime copyWith({
    int? messageAutoDeleteTime,
    int? fromUserId,
  }) => MessageChatSetMessageAutoDeleteTime(
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
    fromUserId: fromUserId ?? this.fromUserId,
  );

  static const String objectType = 'messageChatSetMessageAutoDeleteTime';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForumTopicCreated** *(messageForumTopicCreated)* - child of MessageContent
///
/// A forum topic has been created.
///
/// * [name]: Name of the topic.
/// * [icon]: Icon of the topic.
final class MessageForumTopicCreated extends MessageContent {
  
  /// **MessageForumTopicCreated** *(messageForumTopicCreated)* - child of MessageContent
  ///
  /// A forum topic has been created.
  ///
  /// * [name]: Name of the topic.
  /// * [icon]: Icon of the topic.
  const MessageForumTopicCreated({
    required this.name,
    required this.icon,
  });
  
  /// Name of the topic 
  final String name;

  /// Icon of the topic
  final ForumTopicIcon icon;
  
  /// Parse from a json
  factory MessageForumTopicCreated.fromJson(Map<String, dynamic> json) => MessageForumTopicCreated(
    name: json['name'],
    icon: ForumTopicIcon.fromJson(json['icon']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
      "icon": icon.toJson(),
		};
	}

  
  @override
  MessageForumTopicCreated copyWith({
    String? name,
    ForumTopicIcon? icon,
  }) => MessageForumTopicCreated(
    name: name ?? this.name,
    icon: icon ?? this.icon,
  );

  static const String objectType = 'messageForumTopicCreated';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForumTopicEdited** *(messageForumTopicEdited)* - child of MessageContent
///
/// A forum topic has been edited.
///
/// * [name]: If non-empty, the new name of the topic.
/// * [editIconCustomEmojiId]: True, if icon's custom_emoji_id is changed.
/// * [iconCustomEmojiId]: New unique identifier of the custom emoji shown on the topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is false.
final class MessageForumTopicEdited extends MessageContent {
  
  /// **MessageForumTopicEdited** *(messageForumTopicEdited)* - child of MessageContent
  ///
  /// A forum topic has been edited.
  ///
  /// * [name]: If non-empty, the new name of the topic.
  /// * [editIconCustomEmojiId]: True, if icon's custom_emoji_id is changed.
  /// * [iconCustomEmojiId]: New unique identifier of the custom emoji shown on the topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is false.
  const MessageForumTopicEdited({
    required this.name,
    required this.editIconCustomEmojiId,
    required this.iconCustomEmojiId,
  });
  
  /// If non-empty, the new name of the topic
  final String name;

  /// True, if icon's custom_emoji_id is changed
  final bool editIconCustomEmojiId;

  /// New unique identifier of the custom emoji shown on the topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is false
  final int iconCustomEmojiId;
  
  /// Parse from a json
  factory MessageForumTopicEdited.fromJson(Map<String, dynamic> json) => MessageForumTopicEdited(
    name: json['name'],
    editIconCustomEmojiId: json['edit_icon_custom_emoji_id'],
    iconCustomEmojiId: int.tryParse(json['icon_custom_emoji_id'] ?? "") ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
      "edit_icon_custom_emoji_id": editIconCustomEmojiId,
      "icon_custom_emoji_id": iconCustomEmojiId,
		};
	}

  
  @override
  MessageForumTopicEdited copyWith({
    String? name,
    bool? editIconCustomEmojiId,
    int? iconCustomEmojiId,
  }) => MessageForumTopicEdited(
    name: name ?? this.name,
    editIconCustomEmojiId: editIconCustomEmojiId ?? this.editIconCustomEmojiId,
    iconCustomEmojiId: iconCustomEmojiId ?? this.iconCustomEmojiId,
  );

  static const String objectType = 'messageForumTopicEdited';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForumTopicIsClosedToggled** *(messageForumTopicIsClosedToggled)* - child of MessageContent
///
/// A forum topic has been closed or opened.
///
/// * [isClosed]: True, if the topic was closed; otherwise, the topic was reopened.
final class MessageForumTopicIsClosedToggled extends MessageContent {
  
  /// **MessageForumTopicIsClosedToggled** *(messageForumTopicIsClosedToggled)* - child of MessageContent
  ///
  /// A forum topic has been closed or opened.
  ///
  /// * [isClosed]: True, if the topic was closed; otherwise, the topic was reopened.
  const MessageForumTopicIsClosedToggled({
    required this.isClosed,
  });
  
  /// True, if the topic was closed; otherwise, the topic was reopened
  final bool isClosed;
  
  /// Parse from a json
  factory MessageForumTopicIsClosedToggled.fromJson(Map<String, dynamic> json) => MessageForumTopicIsClosedToggled(
    isClosed: json['is_closed'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_closed": isClosed,
		};
	}

  
  @override
  MessageForumTopicIsClosedToggled copyWith({
    bool? isClosed,
  }) => MessageForumTopicIsClosedToggled(
    isClosed: isClosed ?? this.isClosed,
  );

  static const String objectType = 'messageForumTopicIsClosedToggled';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageForumTopicIsHiddenToggled** *(messageForumTopicIsHiddenToggled)* - child of MessageContent
///
/// A General forum topic has been hidden or unhidden.
///
/// * [isHidden]: True, if the topic was hidden; otherwise, the topic was unhidden.
final class MessageForumTopicIsHiddenToggled extends MessageContent {
  
  /// **MessageForumTopicIsHiddenToggled** *(messageForumTopicIsHiddenToggled)* - child of MessageContent
  ///
  /// A General forum topic has been hidden or unhidden.
  ///
  /// * [isHidden]: True, if the topic was hidden; otherwise, the topic was unhidden.
  const MessageForumTopicIsHiddenToggled({
    required this.isHidden,
  });
  
  /// True, if the topic was hidden; otherwise, the topic was unhidden
  final bool isHidden;
  
  /// Parse from a json
  factory MessageForumTopicIsHiddenToggled.fromJson(Map<String, dynamic> json) => MessageForumTopicIsHiddenToggled(
    isHidden: json['is_hidden'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_hidden": isHidden,
		};
	}

  
  @override
  MessageForumTopicIsHiddenToggled copyWith({
    bool? isHidden,
  }) => MessageForumTopicIsHiddenToggled(
    isHidden: isHidden ?? this.isHidden,
  );

  static const String objectType = 'messageForumTopicIsHiddenToggled';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageSuggestProfilePhoto** *(messageSuggestProfilePhoto)* - child of MessageContent
///
/// A profile photo was suggested to a user in a private chat.
///
/// * [photo]: The suggested chat photo. Use the method setProfilePhoto with inputChatPhotoPrevious to apply the photo.
final class MessageSuggestProfilePhoto extends MessageContent {
  
  /// **MessageSuggestProfilePhoto** *(messageSuggestProfilePhoto)* - child of MessageContent
  ///
  /// A profile photo was suggested to a user in a private chat.
  ///
  /// * [photo]: The suggested chat photo. Use the method setProfilePhoto with inputChatPhotoPrevious to apply the photo.
  const MessageSuggestProfilePhoto({
    required this.photo,
  });
  
  /// The suggested chat photo. Use the method setProfilePhoto with inputChatPhotoPrevious to apply the photo
  final ChatPhoto photo;
  
  /// Parse from a json
  factory MessageSuggestProfilePhoto.fromJson(Map<String, dynamic> json) => MessageSuggestProfilePhoto(
    photo: ChatPhoto.fromJson(json['photo']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "photo": photo.toJson(),
		};
	}

  
  @override
  MessageSuggestProfilePhoto copyWith({
    ChatPhoto? photo,
  }) => MessageSuggestProfilePhoto(
    photo: photo ?? this.photo,
  );

  static const String objectType = 'messageSuggestProfilePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageCustomServiceAction** *(messageCustomServiceAction)* - child of MessageContent
///
/// A non-standard action has happened in the chat.
///
/// * [text]: Message text to be shown in the chat.
final class MessageCustomServiceAction extends MessageContent {
  
  /// **MessageCustomServiceAction** *(messageCustomServiceAction)* - child of MessageContent
  ///
  /// A non-standard action has happened in the chat.
  ///
  /// * [text]: Message text to be shown in the chat.
  const MessageCustomServiceAction({
    required this.text,
  });
  
  /// Message text to be shown in the chat
  final String text;
  
  /// Parse from a json
  factory MessageCustomServiceAction.fromJson(Map<String, dynamic> json) => MessageCustomServiceAction(
    text: json['text'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
		};
	}

  
  @override
  MessageCustomServiceAction copyWith({
    String? text,
  }) => MessageCustomServiceAction(
    text: text ?? this.text,
  );

  static const String objectType = 'messageCustomServiceAction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageGameScore** *(messageGameScore)* - child of MessageContent
///
/// A new high score was achieved in a game.
///
/// * [gameMessageId]: Identifier of the message with the game, can be an identifier of a deleted message.
/// * [gameId]: Identifier of the game; may be different from the games presented in the message with the game.
/// * [score]: New score.
final class MessageGameScore extends MessageContent {
  
  /// **MessageGameScore** *(messageGameScore)* - child of MessageContent
  ///
  /// A new high score was achieved in a game.
  ///
  /// * [gameMessageId]: Identifier of the message with the game, can be an identifier of a deleted message.
  /// * [gameId]: Identifier of the game; may be different from the games presented in the message with the game.
  /// * [score]: New score.
  const MessageGameScore({
    required this.gameMessageId,
    required this.gameId,
    required this.score,
  });
  
  /// Identifier of the message with the game, can be an identifier of a deleted message 
  final int gameMessageId;

  /// Identifier of the game; may be different from the games presented in the message with the game 
  final int gameId;

  /// New score
  final int score;
  
  /// Parse from a json
  factory MessageGameScore.fromJson(Map<String, dynamic> json) => MessageGameScore(
    gameMessageId: json['game_message_id'],
    gameId: int.parse(json['game_id']),
    score: json['score'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "game_message_id": gameMessageId,
      "game_id": gameId,
      "score": score,
		};
	}

  
  @override
  MessageGameScore copyWith({
    int? gameMessageId,
    int? gameId,
    int? score,
  }) => MessageGameScore(
    gameMessageId: gameMessageId ?? this.gameMessageId,
    gameId: gameId ?? this.gameId,
    score: score ?? this.score,
  );

  static const String objectType = 'messageGameScore';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessagePaymentSuccessful** *(messagePaymentSuccessful)* - child of MessageContent
///
/// A payment has been completed.
///
/// * [invoiceChatId]: Identifier of the chat, containing the corresponding invoice message.
/// * [invoiceMessageId]: Identifier of the message with the corresponding invoice; can be 0 or an identifier of a deleted message.
/// * [currency]: Currency for the price of the product.
/// * [totalAmount]: Total price for the product, in the smallest units of the currency.
/// * [isRecurring]: True, if this is a recurring payment.
/// * [isFirstRecurring]: True, if this is the first recurring payment.
/// * [invoiceName]: Name of the invoice; may be empty if unknown.
final class MessagePaymentSuccessful extends MessageContent {
  
  /// **MessagePaymentSuccessful** *(messagePaymentSuccessful)* - child of MessageContent
  ///
  /// A payment has been completed.
  ///
  /// * [invoiceChatId]: Identifier of the chat, containing the corresponding invoice message.
  /// * [invoiceMessageId]: Identifier of the message with the corresponding invoice; can be 0 or an identifier of a deleted message.
  /// * [currency]: Currency for the price of the product.
  /// * [totalAmount]: Total price for the product, in the smallest units of the currency.
  /// * [isRecurring]: True, if this is a recurring payment.
  /// * [isFirstRecurring]: True, if this is the first recurring payment.
  /// * [invoiceName]: Name of the invoice; may be empty if unknown.
  const MessagePaymentSuccessful({
    required this.invoiceChatId,
    required this.invoiceMessageId,
    required this.currency,
    required this.totalAmount,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoiceName,
  });
  
  /// Identifier of the chat, containing the corresponding invoice message
  final int invoiceChatId;

  /// Identifier of the message with the corresponding invoice; can be 0 or an identifier of a deleted message
  final int invoiceMessageId;

  /// Currency for the price of the product
  final String currency;

  /// Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// True, if this is a recurring payment
  final bool isRecurring;

  /// True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// Name of the invoice; may be empty if unknown
  final String invoiceName;
  
  /// Parse from a json
  factory MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) => MessagePaymentSuccessful(
    invoiceChatId: json['invoice_chat_id'],
    invoiceMessageId: json['invoice_message_id'],
    currency: json['currency'],
    totalAmount: json['total_amount'],
    isRecurring: json['is_recurring'],
    isFirstRecurring: json['is_first_recurring'],
    invoiceName: json['invoice_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invoice_chat_id": invoiceChatId,
      "invoice_message_id": invoiceMessageId,
      "currency": currency,
      "total_amount": totalAmount,
      "is_recurring": isRecurring,
      "is_first_recurring": isFirstRecurring,
      "invoice_name": invoiceName,
		};
	}

  
  @override
  MessagePaymentSuccessful copyWith({
    int? invoiceChatId,
    int? invoiceMessageId,
    String? currency,
    int? totalAmount,
    bool? isRecurring,
    bool? isFirstRecurring,
    String? invoiceName,
  }) => MessagePaymentSuccessful(
    invoiceChatId: invoiceChatId ?? this.invoiceChatId,
    invoiceMessageId: invoiceMessageId ?? this.invoiceMessageId,
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    isRecurring: isRecurring ?? this.isRecurring,
    isFirstRecurring: isFirstRecurring ?? this.isFirstRecurring,
    invoiceName: invoiceName ?? this.invoiceName,
  );

  static const String objectType = 'messagePaymentSuccessful';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessagePaymentSuccessfulBot** *(messagePaymentSuccessfulBot)* - child of MessageContent
///
/// A payment has been completed; for bots only.
///
/// * [currency]: Currency for price of the product.
/// * [totalAmount]: Total price for the product, in the smallest units of the currency.
/// * [isRecurring]: True, if this is a recurring payment.
/// * [isFirstRecurring]: True, if this is the first recurring payment.
/// * [invoicePayload]: Invoice payload.
/// * [shippingOptionId]: Identifier of the shipping option chosen by the user; may be empty if not applicable.
/// * [orderInfo]: Information about the order; may be null *(optional)*.
/// * [telegramPaymentChargeId]: Telegram payment identifier.
/// * [providerPaymentChargeId]: Provider payment identifier.
final class MessagePaymentSuccessfulBot extends MessageContent {
  
  /// **MessagePaymentSuccessfulBot** *(messagePaymentSuccessfulBot)* - child of MessageContent
  ///
  /// A payment has been completed; for bots only.
  ///
  /// * [currency]: Currency for price of the product.
  /// * [totalAmount]: Total price for the product, in the smallest units of the currency.
  /// * [isRecurring]: True, if this is a recurring payment.
  /// * [isFirstRecurring]: True, if this is the first recurring payment.
  /// * [invoicePayload]: Invoice payload.
  /// * [shippingOptionId]: Identifier of the shipping option chosen by the user; may be empty if not applicable.
  /// * [orderInfo]: Information about the order; may be null *(optional)*.
  /// * [telegramPaymentChargeId]: Telegram payment identifier.
  /// * [providerPaymentChargeId]: Provider payment identifier.
  const MessagePaymentSuccessfulBot({
    required this.currency,
    required this.totalAmount,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });
  
  /// Currency for price of the product
  final String currency;

  /// Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// True, if this is a recurring payment
  final bool isRecurring;

  /// True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// Invoice payload
  final String invoicePayload;

  /// Identifier of the shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;

  /// Information about the order; may be null
  final OrderInfo? orderInfo;

  /// Telegram payment identifier
  final String telegramPaymentChargeId;

  /// Provider payment identifier
  final String providerPaymentChargeId;
  
  /// Parse from a json
  factory MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) => MessagePaymentSuccessfulBot(
    currency: json['currency'],
    totalAmount: json['total_amount'],
    isRecurring: json['is_recurring'],
    isFirstRecurring: json['is_first_recurring'],
    invoicePayload: json['invoice_payload'],
    shippingOptionId: json['shipping_option_id'],
    orderInfo: json['order_info'] == null ? null : OrderInfo.fromJson(json['order_info']),
    telegramPaymentChargeId: json['telegram_payment_charge_id'],
    providerPaymentChargeId: json['provider_payment_charge_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "currency": currency,
      "total_amount": totalAmount,
      "is_recurring": isRecurring,
      "is_first_recurring": isFirstRecurring,
      "invoice_payload": invoicePayload,
      "shipping_option_id": shippingOptionId,
      "order_info": orderInfo?.toJson(),
      "telegram_payment_charge_id": telegramPaymentChargeId,
      "provider_payment_charge_id": providerPaymentChargeId,
		};
	}

  
  @override
  MessagePaymentSuccessfulBot copyWith({
    String? currency,
    int? totalAmount,
    bool? isRecurring,
    bool? isFirstRecurring,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    String? telegramPaymentChargeId,
    String? providerPaymentChargeId,
  }) => MessagePaymentSuccessfulBot(
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    isRecurring: isRecurring ?? this.isRecurring,
    isFirstRecurring: isFirstRecurring ?? this.isFirstRecurring,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    shippingOptionId: shippingOptionId ?? this.shippingOptionId,
    orderInfo: orderInfo ?? this.orderInfo,
    telegramPaymentChargeId: telegramPaymentChargeId ?? this.telegramPaymentChargeId,
    providerPaymentChargeId: providerPaymentChargeId ?? this.providerPaymentChargeId,
  );

  static const String objectType = 'messagePaymentSuccessfulBot';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageGiftedPremium** *(messageGiftedPremium)* - child of MessageContent
///
/// Telegram Premium was gifted to the user.
///
/// * [currency]: Currency for the paid amount.
/// * [amount]: The paid amount, in the smallest units of the currency.
/// * [monthCount]: Number of month the Telegram Premium subscription will be active.
/// * [sticker]: A sticker to be shown in the message; may be null if unknown *(optional)*.
final class MessageGiftedPremium extends MessageContent {
  
  /// **MessageGiftedPremium** *(messageGiftedPremium)* - child of MessageContent
  ///
  /// Telegram Premium was gifted to the user.
  ///
  /// * [currency]: Currency for the paid amount.
  /// * [amount]: The paid amount, in the smallest units of the currency.
  /// * [monthCount]: Number of month the Telegram Premium subscription will be active.
  /// * [sticker]: A sticker to be shown in the message; may be null if unknown *(optional)*.
  const MessageGiftedPremium({
    required this.currency,
    required this.amount,
    required this.monthCount,
    this.sticker,
  });
  
  /// Currency for the paid amount
  final String currency;

  /// The paid amount, in the smallest units of the currency
  final int amount;

  /// Number of month the Telegram Premium subscription will be active
  final int monthCount;

  /// A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;
  
  /// Parse from a json
  factory MessageGiftedPremium.fromJson(Map<String, dynamic> json) => MessageGiftedPremium(
    currency: json['currency'],
    amount: json['amount'],
    monthCount: json['month_count'],
    sticker: json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "currency": currency,
      "amount": amount,
      "month_count": monthCount,
      "sticker": sticker?.toJson(),
		};
	}

  
  @override
  MessageGiftedPremium copyWith({
    String? currency,
    int? amount,
    int? monthCount,
    Sticker? sticker,
  }) => MessageGiftedPremium(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    monthCount: monthCount ?? this.monthCount,
    sticker: sticker ?? this.sticker,
  );

  static const String objectType = 'messageGiftedPremium';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageContactRegistered** *(messageContactRegistered)* - child of MessageContent
///
/// A contact has registered with Telegram.
final class MessageContactRegistered extends MessageContent {
  
  /// **MessageContactRegistered** *(messageContactRegistered)* - child of MessageContent
  ///
  /// A contact has registered with Telegram.
  const MessageContactRegistered();
  
  /// Parse from a json
  factory MessageContactRegistered.fromJson(Map<String, dynamic> json) => const MessageContactRegistered();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageContactRegistered copyWith() => const MessageContactRegistered();

  static const String objectType = 'messageContactRegistered';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageWebsiteConnected** *(messageWebsiteConnected)* - child of MessageContent
///
/// The current user has connected a website by logging in using Telegram Login Widget on it.
///
/// * [domainName]: Domain name of the connected website.
final class MessageWebsiteConnected extends MessageContent {
  
  /// **MessageWebsiteConnected** *(messageWebsiteConnected)* - child of MessageContent
  ///
  /// The current user has connected a website by logging in using Telegram Login Widget on it.
  ///
  /// * [domainName]: Domain name of the connected website.
  const MessageWebsiteConnected({
    required this.domainName,
  });
  
  /// Domain name of the connected website
  final String domainName;
  
  /// Parse from a json
  factory MessageWebsiteConnected.fromJson(Map<String, dynamic> json) => MessageWebsiteConnected(
    domainName: json['domain_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "domain_name": domainName,
		};
	}

  
  @override
  MessageWebsiteConnected copyWith({
    String? domainName,
  }) => MessageWebsiteConnected(
    domainName: domainName ?? this.domainName,
  );

  static const String objectType = 'messageWebsiteConnected';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageBotWriteAccessAllowed** *(messageBotWriteAccessAllowed)* - child of MessageContent
///
/// The user allowed the bot to send messages.
final class MessageBotWriteAccessAllowed extends MessageContent {
  
  /// **MessageBotWriteAccessAllowed** *(messageBotWriteAccessAllowed)* - child of MessageContent
  ///
  /// The user allowed the bot to send messages.
  const MessageBotWriteAccessAllowed();
  
  /// Parse from a json
  factory MessageBotWriteAccessAllowed.fromJson(Map<String, dynamic> json) => const MessageBotWriteAccessAllowed();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageBotWriteAccessAllowed copyWith() => const MessageBotWriteAccessAllowed();

  static const String objectType = 'messageBotWriteAccessAllowed';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageWebAppDataSent** *(messageWebAppDataSent)* - child of MessageContent
///
/// Data from a Web App has been sent to a bot.
///
/// * [buttonText]: Text of the keyboardButtonTypeWebApp button, which opened the Web App.
final class MessageWebAppDataSent extends MessageContent {
  
  /// **MessageWebAppDataSent** *(messageWebAppDataSent)* - child of MessageContent
  ///
  /// Data from a Web App has been sent to a bot.
  ///
  /// * [buttonText]: Text of the keyboardButtonTypeWebApp button, which opened the Web App.
  const MessageWebAppDataSent({
    required this.buttonText,
  });
  
  /// Text of the keyboardButtonTypeWebApp button, which opened the Web App
  final String buttonText;
  
  /// Parse from a json
  factory MessageWebAppDataSent.fromJson(Map<String, dynamic> json) => MessageWebAppDataSent(
    buttonText: json['button_text'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "button_text": buttonText,
		};
	}

  
  @override
  MessageWebAppDataSent copyWith({
    String? buttonText,
  }) => MessageWebAppDataSent(
    buttonText: buttonText ?? this.buttonText,
  );

  static const String objectType = 'messageWebAppDataSent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageWebAppDataReceived** *(messageWebAppDataReceived)* - child of MessageContent
///
/// Data from a Web App has been received; for bots only.
///
/// * [buttonText]: Text of the keyboardButtonTypeWebApp button, which opened the Web App.
/// * [data]: Received data.
final class MessageWebAppDataReceived extends MessageContent {
  
  /// **MessageWebAppDataReceived** *(messageWebAppDataReceived)* - child of MessageContent
  ///
  /// Data from a Web App has been received; for bots only.
  ///
  /// * [buttonText]: Text of the keyboardButtonTypeWebApp button, which opened the Web App.
  /// * [data]: Received data.
  const MessageWebAppDataReceived({
    required this.buttonText,
    required this.data,
  });
  
  /// Text of the keyboardButtonTypeWebApp button, which opened the Web App 
  final String buttonText;

  /// Received data
  final String data;
  
  /// Parse from a json
  factory MessageWebAppDataReceived.fromJson(Map<String, dynamic> json) => MessageWebAppDataReceived(
    buttonText: json['button_text'],
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "button_text": buttonText,
      "data": data,
		};
	}

  
  @override
  MessageWebAppDataReceived copyWith({
    String? buttonText,
    String? data,
  }) => MessageWebAppDataReceived(
    buttonText: buttonText ?? this.buttonText,
    data: data ?? this.data,
  );

  static const String objectType = 'messageWebAppDataReceived';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessagePassportDataSent** *(messagePassportDataSent)* - child of MessageContent
///
/// Telegram Passport data has been sent to a bot.
///
/// * [types]: List of Telegram Passport element types sent.
final class MessagePassportDataSent extends MessageContent {
  
  /// **MessagePassportDataSent** *(messagePassportDataSent)* - child of MessageContent
  ///
  /// Telegram Passport data has been sent to a bot.
  ///
  /// * [types]: List of Telegram Passport element types sent.
  const MessagePassportDataSent({
    required this.types,
  });
  
  /// List of Telegram Passport element types sent
  final List<PassportElementType> types;
  
  /// Parse from a json
  factory MessagePassportDataSent.fromJson(Map<String, dynamic> json) => MessagePassportDataSent(
    types: List<PassportElementType>.from((json['types'] ?? []).map((item) => PassportElementType.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "types": types.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  MessagePassportDataSent copyWith({
    List<PassportElementType>? types,
  }) => MessagePassportDataSent(
    types: types ?? this.types,
  );

  static const String objectType = 'messagePassportDataSent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessagePassportDataReceived** *(messagePassportDataReceived)* - child of MessageContent
///
/// Telegram Passport data has been received; for bots only.
///
/// * [elements]: List of received Telegram Passport elements.
/// * [credentials]: Encrypted data credentials.
final class MessagePassportDataReceived extends MessageContent {
  
  /// **MessagePassportDataReceived** *(messagePassportDataReceived)* - child of MessageContent
  ///
  /// Telegram Passport data has been received; for bots only.
  ///
  /// * [elements]: List of received Telegram Passport elements.
  /// * [credentials]: Encrypted data credentials.
  const MessagePassportDataReceived({
    required this.elements,
    required this.credentials,
  });
  
  /// List of received Telegram Passport elements 
  final List<EncryptedPassportElement> elements;

  /// Encrypted data credentials
  final EncryptedCredentials credentials;
  
  /// Parse from a json
  factory MessagePassportDataReceived.fromJson(Map<String, dynamic> json) => MessagePassportDataReceived(
    elements: List<EncryptedPassportElement>.from((json['elements'] ?? []).map((item) => EncryptedPassportElement.fromJson(item)).toList()),
    credentials: EncryptedCredentials.fromJson(json['credentials']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "elements": elements.map((i) => i.toJson()).toList(),
      "credentials": credentials.toJson(),
		};
	}

  
  @override
  MessagePassportDataReceived copyWith({
    List<EncryptedPassportElement>? elements,
    EncryptedCredentials? credentials,
  }) => MessagePassportDataReceived(
    elements: elements ?? this.elements,
    credentials: credentials ?? this.credentials,
  );

  static const String objectType = 'messagePassportDataReceived';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageProximityAlertTriggered** *(messageProximityAlertTriggered)* - child of MessageContent
///
/// A user in the chat came within proximity alert range.
///
/// * [travelerId]: The identifier of a user or chat that triggered the proximity alert.
/// * [watcherId]: The identifier of a user or chat that subscribed for the proximity alert.
/// * [distance]: The distance between the users.
final class MessageProximityAlertTriggered extends MessageContent {
  
  /// **MessageProximityAlertTriggered** *(messageProximityAlertTriggered)* - child of MessageContent
  ///
  /// A user in the chat came within proximity alert range.
  ///
  /// * [travelerId]: The identifier of a user or chat that triggered the proximity alert.
  /// * [watcherId]: The identifier of a user or chat that subscribed for the proximity alert.
  /// * [distance]: The distance between the users.
  const MessageProximityAlertTriggered({
    required this.travelerId,
    required this.watcherId,
    required this.distance,
  });
  
  /// The identifier of a user or chat that triggered the proximity alert 
  final MessageSender travelerId;

  /// The identifier of a user or chat that subscribed for the proximity alert 
  final MessageSender watcherId;

  /// The distance between the users
  final int distance;
  
  /// Parse from a json
  factory MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json) => MessageProximityAlertTriggered(
    travelerId: MessageSender.fromJson(json['traveler_id']),
    watcherId: MessageSender.fromJson(json['watcher_id']),
    distance: json['distance'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "traveler_id": travelerId.toJson(),
      "watcher_id": watcherId.toJson(),
      "distance": distance,
		};
	}

  
  @override
  MessageProximityAlertTriggered copyWith({
    MessageSender? travelerId,
    MessageSender? watcherId,
    int? distance,
  }) => MessageProximityAlertTriggered(
    travelerId: travelerId ?? this.travelerId,
    watcherId: watcherId ?? this.watcherId,
    distance: distance ?? this.distance,
  );

  static const String objectType = 'messageProximityAlertTriggered';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageUnsupported** *(messageUnsupported)* - child of MessageContent
///
/// Message content that is not supported in the current TDLib version.
final class MessageUnsupported extends MessageContent {
  
  /// **MessageUnsupported** *(messageUnsupported)* - child of MessageContent
  ///
  /// Message content that is not supported in the current TDLib version.
  const MessageUnsupported();
  
  /// Parse from a json
  factory MessageUnsupported.fromJson(Map<String, dynamic> json) => const MessageUnsupported();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageUnsupported copyWith() => const MessageUnsupported();

  static const String objectType = 'messageUnsupported';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
