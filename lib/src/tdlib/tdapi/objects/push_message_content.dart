part of '../tdapi.dart';

/// **PushMessageContent** *(pushMessageContent)* - parent
  ///
  /// Contains content of a push message notification.
class PushMessageContent extends TdObject {
  
  /// **PushMessageContent** *(pushMessageContent)* - parent
  ///
  /// Contains content of a push message notification.
  const PushMessageContent();
  
  /// a PushMessageContent return type can be :
  /// * [PushMessageContentHidden]
  /// * [PushMessageContentAnimation]
  /// * [PushMessageContentAudio]
  /// * [PushMessageContentContact]
  /// * [PushMessageContentContactRegistered]
  /// * [PushMessageContentDocument]
  /// * [PushMessageContentGame]
  /// * [PushMessageContentGameScore]
  /// * [PushMessageContentInvoice]
  /// * [PushMessageContentLocation]
  /// * [PushMessageContentPhoto]
  /// * [PushMessageContentPoll]
  /// * [PushMessageContentScreenshotTaken]
  /// * [PushMessageContentSticker]
  /// * [PushMessageContentText]
  /// * [PushMessageContentVideo]
  /// * [PushMessageContentVideoNote]
  /// * [PushMessageContentVoiceNote]
  /// * [PushMessageContentBasicGroupChatCreate]
  /// * [PushMessageContentChatAddMembers]
  /// * [PushMessageContentChatChangePhoto]
  /// * [PushMessageContentChatChangeTitle]
  /// * [PushMessageContentChatSetTheme]
  /// * [PushMessageContentChatDeleteMember]
  /// * [PushMessageContentChatJoinByLink]
  /// * [PushMessageContentChatJoinByRequest]
  /// * [PushMessageContentRecurringPayment]
  /// * [PushMessageContentSuggestProfilePhoto]
  /// * [PushMessageContentMessageForwards]
  /// * [PushMessageContentMediaAlbum]
  factory PushMessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PushMessageContentHidden.constructor:
        return PushMessageContentHidden.fromJson(json);
      case PushMessageContentAnimation.constructor:
        return PushMessageContentAnimation.fromJson(json);
      case PushMessageContentAudio.constructor:
        return PushMessageContentAudio.fromJson(json);
      case PushMessageContentContact.constructor:
        return PushMessageContentContact.fromJson(json);
      case PushMessageContentContactRegistered.constructor:
        return PushMessageContentContactRegistered.fromJson(json);
      case PushMessageContentDocument.constructor:
        return PushMessageContentDocument.fromJson(json);
      case PushMessageContentGame.constructor:
        return PushMessageContentGame.fromJson(json);
      case PushMessageContentGameScore.constructor:
        return PushMessageContentGameScore.fromJson(json);
      case PushMessageContentInvoice.constructor:
        return PushMessageContentInvoice.fromJson(json);
      case PushMessageContentLocation.constructor:
        return PushMessageContentLocation.fromJson(json);
      case PushMessageContentPhoto.constructor:
        return PushMessageContentPhoto.fromJson(json);
      case PushMessageContentPoll.constructor:
        return PushMessageContentPoll.fromJson(json);
      case PushMessageContentScreenshotTaken.constructor:
        return PushMessageContentScreenshotTaken.fromJson(json);
      case PushMessageContentSticker.constructor:
        return PushMessageContentSticker.fromJson(json);
      case PushMessageContentText.constructor:
        return PushMessageContentText.fromJson(json);
      case PushMessageContentVideo.constructor:
        return PushMessageContentVideo.fromJson(json);
      case PushMessageContentVideoNote.constructor:
        return PushMessageContentVideoNote.fromJson(json);
      case PushMessageContentVoiceNote.constructor:
        return PushMessageContentVoiceNote.fromJson(json);
      case PushMessageContentBasicGroupChatCreate.constructor:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);
      case PushMessageContentChatAddMembers.constructor:
        return PushMessageContentChatAddMembers.fromJson(json);
      case PushMessageContentChatChangePhoto.constructor:
        return PushMessageContentChatChangePhoto.fromJson(json);
      case PushMessageContentChatChangeTitle.constructor:
        return PushMessageContentChatChangeTitle.fromJson(json);
      case PushMessageContentChatSetTheme.constructor:
        return PushMessageContentChatSetTheme.fromJson(json);
      case PushMessageContentChatDeleteMember.constructor:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.constructor:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentChatJoinByRequest.constructor:
        return PushMessageContentChatJoinByRequest.fromJson(json);
      case PushMessageContentRecurringPayment.constructor:
        return PushMessageContentRecurringPayment.fromJson(json);
      case PushMessageContentSuggestProfilePhoto.constructor:
        return PushMessageContentSuggestProfilePhoto.fromJson(json);
      case PushMessageContentMessageForwards.constructor:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentMediaAlbum.constructor:
        return PushMessageContentMediaAlbum.fromJson(json);
      default:
        return const PushMessageContent();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PushMessageContent copyWith() => const PushMessageContent();

  static const String constructor = 'pushMessageContent';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentHidden** *(pushMessageContentHidden)* - child of PushMessageContent
  ///
  /// A general message with hidden content.
  ///
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentHidden extends PushMessageContent {
  
  /// **PushMessageContentHidden** *(pushMessageContentHidden)* - child of PushMessageContent
  ///
  /// A general message with hidden content.
  ///
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentHidden({
    required this.isPinned,
  });
  
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentHidden.fromJson(Map<String, dynamic> json) => PushMessageContentHidden(
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentHidden copyWith({
    bool? isPinned,
  }) => PushMessageContentHidden(
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentHidden';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentAnimation** *(pushMessageContentAnimation)* - child of PushMessageContent
  ///
  /// An animation message (GIF-style).
  ///
  /// * [animation]: Message content; may be null *(optional)*.
  /// * [caption]: Animation caption.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentAnimation extends PushMessageContent {
  
  /// **PushMessageContentAnimation** *(pushMessageContentAnimation)* - child of PushMessageContent
  ///
  /// An animation message (GIF-style).
  ///
  /// * [animation]: Message content; may be null *(optional)*.
  /// * [caption]: Animation caption.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentAnimation({
    this.animation,
    required this.caption,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final Animation? animation;

  /// Animation caption 
  final String caption;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentAnimation.fromJson(Map<String, dynamic> json) => PushMessageContentAnimation(
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
    caption: json['caption'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "animation": animation?.toJson(),
      "caption": caption,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentAnimation copyWith({
    Animation? animation,
    String? caption,
    bool? isPinned,
  }) => PushMessageContentAnimation(
    animation: animation ?? this.animation,
    caption: caption ?? this.caption,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentAnimation';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentAudio** *(pushMessageContentAudio)* - child of PushMessageContent
  ///
  /// An audio message.
  ///
  /// * [audio]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentAudio extends PushMessageContent {
  
  /// **PushMessageContentAudio** *(pushMessageContentAudio)* - child of PushMessageContent
  ///
  /// An audio message.
  ///
  /// * [audio]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentAudio({
    this.audio,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final Audio? audio;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentAudio.fromJson(Map<String, dynamic> json) => PushMessageContentAudio(
    audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "audio": audio?.toJson(),
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentAudio copyWith({
    Audio? audio,
    bool? isPinned,
  }) => PushMessageContentAudio(
    audio: audio ?? this.audio,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentAudio';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentContact** *(pushMessageContentContact)* - child of PushMessageContent
  ///
  /// A message with a user contact.
  ///
  /// * [name]: Contact's name.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentContact extends PushMessageContent {
  
  /// **PushMessageContentContact** *(pushMessageContentContact)* - child of PushMessageContent
  ///
  /// A message with a user contact.
  ///
  /// * [name]: Contact's name.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentContact({
    required this.name,
    required this.isPinned,
  });
  
  /// Contact's name 
  final String name;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentContact.fromJson(Map<String, dynamic> json) => PushMessageContentContact(
    name: json['name'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "name": name,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentContact copyWith({
    String? name,
    bool? isPinned,
  }) => PushMessageContentContact(
    name: name ?? this.name,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentContact';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentContactRegistered** *(pushMessageContentContactRegistered)* - child of PushMessageContent
  ///
  /// A contact has registered with Telegram.
class PushMessageContentContactRegistered extends PushMessageContent {
  
  /// **PushMessageContentContactRegistered** *(pushMessageContentContactRegistered)* - child of PushMessageContent
  ///
  /// A contact has registered with Telegram.
  const PushMessageContentContactRegistered();
  
  /// Parse from a json
  factory PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json) => const PushMessageContentContactRegistered();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PushMessageContentContactRegistered copyWith() => const PushMessageContentContactRegistered();

  static const String constructor = 'pushMessageContentContactRegistered';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentDocument** *(pushMessageContentDocument)* - child of PushMessageContent
  ///
  /// A document message (a general file).
  ///
  /// * [document]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentDocument extends PushMessageContent {
  
  /// **PushMessageContentDocument** *(pushMessageContentDocument)* - child of PushMessageContent
  ///
  /// A document message (a general file).
  ///
  /// * [document]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentDocument({
    this.document,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final Document? document;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentDocument.fromJson(Map<String, dynamic> json) => PushMessageContentDocument(
    document: json['document'] == null ? null : Document.fromJson(json['document']),
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "document": document?.toJson(),
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentDocument copyWith({
    Document? document,
    bool? isPinned,
  }) => PushMessageContentDocument(
    document: document ?? this.document,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentDocument';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentGame** *(pushMessageContentGame)* - child of PushMessageContent
  ///
  /// A message with a game.
  ///
  /// * [title]: Game title, empty for pinned game message.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentGame extends PushMessageContent {
  
  /// **PushMessageContentGame** *(pushMessageContentGame)* - child of PushMessageContent
  ///
  /// A message with a game.
  ///
  /// * [title]: Game title, empty for pinned game message.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentGame({
    required this.title,
    required this.isPinned,
  });
  
  /// Game title, empty for pinned game message 
  final String title;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentGame.fromJson(Map<String, dynamic> json) => PushMessageContentGame(
    title: json['title'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "title": title,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentGame copyWith({
    String? title,
    bool? isPinned,
  }) => PushMessageContentGame(
    title: title ?? this.title,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentGame';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentGameScore** *(pushMessageContentGameScore)* - child of PushMessageContent
  ///
  /// A new high score was achieved in a game.
  ///
  /// * [title]: Game title, empty for pinned message.
  /// * [score]: New score, 0 for pinned message.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentGameScore extends PushMessageContent {
  
  /// **PushMessageContentGameScore** *(pushMessageContentGameScore)* - child of PushMessageContent
  ///
  /// A new high score was achieved in a game.
  ///
  /// * [title]: Game title, empty for pinned message.
  /// * [score]: New score, 0 for pinned message.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentGameScore({
    required this.title,
    required this.score,
    required this.isPinned,
  });
  
  /// Game title, empty for pinned message 
  final String title;

  /// New score, 0 for pinned message 
  final int score;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentGameScore.fromJson(Map<String, dynamic> json) => PushMessageContentGameScore(
    title: json['title'],
    score: json['score'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "title": title,
      "score": score,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentGameScore copyWith({
    String? title,
    int? score,
    bool? isPinned,
  }) => PushMessageContentGameScore(
    title: title ?? this.title,
    score: score ?? this.score,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentGameScore';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentInvoice** *(pushMessageContentInvoice)* - child of PushMessageContent
  ///
  /// A message with an invoice from a bot.
  ///
  /// * [price]: Product price.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentInvoice extends PushMessageContent {
  
  /// **PushMessageContentInvoice** *(pushMessageContentInvoice)* - child of PushMessageContent
  ///
  /// A message with an invoice from a bot.
  ///
  /// * [price]: Product price.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentInvoice({
    required this.price,
    required this.isPinned,
  });
  
  /// Product price 
  final String price;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentInvoice.fromJson(Map<String, dynamic> json) => PushMessageContentInvoice(
    price: json['price'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "price": price,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentInvoice copyWith({
    String? price,
    bool? isPinned,
  }) => PushMessageContentInvoice(
    price: price ?? this.price,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentInvoice';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentLocation** *(pushMessageContentLocation)* - child of PushMessageContent
  ///
  /// A message with a location.
  ///
  /// * [isLive]: True, if the location is live.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentLocation extends PushMessageContent {
  
  /// **PushMessageContentLocation** *(pushMessageContentLocation)* - child of PushMessageContent
  ///
  /// A message with a location.
  ///
  /// * [isLive]: True, if the location is live.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentLocation({
    required this.isLive,
    required this.isPinned,
  });
  
  /// True, if the location is live 
  final bool isLive;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentLocation.fromJson(Map<String, dynamic> json) => PushMessageContentLocation(
    isLive: json['is_live'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "is_live": isLive,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentLocation copyWith({
    bool? isLive,
    bool? isPinned,
  }) => PushMessageContentLocation(
    isLive: isLive ?? this.isLive,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentLocation';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentPhoto** *(pushMessageContentPhoto)* - child of PushMessageContent
  ///
  /// A photo message.
  ///
  /// * [photo]: Message content; may be null *(optional)*.
  /// * [caption]: Photo caption.
  /// * [isSecret]: True, if the photo is secret.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentPhoto extends PushMessageContent {
  
  /// **PushMessageContentPhoto** *(pushMessageContentPhoto)* - child of PushMessageContent
  ///
  /// A photo message.
  ///
  /// * [photo]: Message content; may be null *(optional)*.
  /// * [caption]: Photo caption.
  /// * [isSecret]: True, if the photo is secret.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentPhoto({
    this.photo,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });
  
  /// Message content; may be null
  final Photo? photo;

  /// Photo caption
  final String caption;

  /// True, if the photo is secret
  final bool isSecret;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentPhoto.fromJson(Map<String, dynamic> json) => PushMessageContentPhoto(
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    caption: json['caption'],
    isSecret: json['is_secret'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "photo": photo?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentPhoto copyWith({
    Photo? photo,
    String? caption,
    bool? isSecret,
    bool? isPinned,
  }) => PushMessageContentPhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
    isSecret: isSecret ?? this.isSecret,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentPhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentPoll** *(pushMessageContentPoll)* - child of PushMessageContent
  ///
  /// A message with a poll.
  ///
  /// * [question]: Poll question.
  /// * [isRegular]: True, if the poll is regular and not in quiz mode.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentPoll extends PushMessageContent {
  
  /// **PushMessageContentPoll** *(pushMessageContentPoll)* - child of PushMessageContent
  ///
  /// A message with a poll.
  ///
  /// * [question]: Poll question.
  /// * [isRegular]: True, if the poll is regular and not in quiz mode.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentPoll({
    required this.question,
    required this.isRegular,
    required this.isPinned,
  });
  
  /// Poll question
  final String question;

  /// True, if the poll is regular and not in quiz mode
  final bool isRegular;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentPoll.fromJson(Map<String, dynamic> json) => PushMessageContentPoll(
    question: json['question'],
    isRegular: json['is_regular'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "question": question,
      "is_regular": isRegular,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentPoll copyWith({
    String? question,
    bool? isRegular,
    bool? isPinned,
  }) => PushMessageContentPoll(
    question: question ?? this.question,
    isRegular: isRegular ?? this.isRegular,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentPoll';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentScreenshotTaken** *(pushMessageContentScreenshotTaken)* - child of PushMessageContent
  ///
  /// A screenshot of a message in the chat has been taken.
class PushMessageContentScreenshotTaken extends PushMessageContent {
  
  /// **PushMessageContentScreenshotTaken** *(pushMessageContentScreenshotTaken)* - child of PushMessageContent
  ///
  /// A screenshot of a message in the chat has been taken.
  const PushMessageContentScreenshotTaken();
  
  /// Parse from a json
  factory PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json) => const PushMessageContentScreenshotTaken();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PushMessageContentScreenshotTaken copyWith() => const PushMessageContentScreenshotTaken();

  static const String constructor = 'pushMessageContentScreenshotTaken';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentSticker** *(pushMessageContentSticker)* - child of PushMessageContent
  ///
  /// A message with a sticker.
  ///
  /// * [sticker]: Message content; may be null *(optional)*.
  /// * [emoji]: Emoji corresponding to the sticker; may be empty.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentSticker extends PushMessageContent {
  
  /// **PushMessageContentSticker** *(pushMessageContentSticker)* - child of PushMessageContent
  ///
  /// A message with a sticker.
  ///
  /// * [sticker]: Message content; may be null *(optional)*.
  /// * [emoji]: Emoji corresponding to the sticker; may be empty.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentSticker({
    this.sticker,
    required this.emoji,
    required this.isPinned,
  });
  
  /// Message content; may be null
  final Sticker? sticker;

  /// Emoji corresponding to the sticker; may be empty
  final String emoji;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentSticker.fromJson(Map<String, dynamic> json) => PushMessageContentSticker(
    sticker: json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
    emoji: json['emoji'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sticker": sticker?.toJson(),
      "emoji": emoji,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentSticker copyWith({
    Sticker? sticker,
    String? emoji,
    bool? isPinned,
  }) => PushMessageContentSticker(
    sticker: sticker ?? this.sticker,
    emoji: emoji ?? this.emoji,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentSticker';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentText** *(pushMessageContentText)* - child of PushMessageContent
  ///
  /// A text message.
  ///
  /// * [text]: Message text.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentText extends PushMessageContent {
  
  /// **PushMessageContentText** *(pushMessageContentText)* - child of PushMessageContent
  ///
  /// A text message.
  ///
  /// * [text]: Message text.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentText({
    required this.text,
    required this.isPinned,
  });
  
  /// Message text 
  final String text;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentText.fromJson(Map<String, dynamic> json) => PushMessageContentText(
    text: json['text'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "text": text,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentText copyWith({
    String? text,
    bool? isPinned,
  }) => PushMessageContentText(
    text: text ?? this.text,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentText';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentVideo** *(pushMessageContentVideo)* - child of PushMessageContent
  ///
  /// A video message.
  ///
  /// * [video]: Message content; may be null *(optional)*.
  /// * [caption]: Video caption.
  /// * [isSecret]: True, if the video is secret.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentVideo extends PushMessageContent {
  
  /// **PushMessageContentVideo** *(pushMessageContentVideo)* - child of PushMessageContent
  ///
  /// A video message.
  ///
  /// * [video]: Message content; may be null *(optional)*.
  /// * [caption]: Video caption.
  /// * [isSecret]: True, if the video is secret.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentVideo({
    this.video,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });
  
  /// Message content; may be null
  final Video? video;

  /// Video caption
  final String caption;

  /// True, if the video is secret
  final bool isSecret;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVideo.fromJson(Map<String, dynamic> json) => PushMessageContentVideo(
    video: json['video'] == null ? null : Video.fromJson(json['video']),
    caption: json['caption'],
    isSecret: json['is_secret'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "video": video?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentVideo copyWith({
    Video? video,
    String? caption,
    bool? isSecret,
    bool? isPinned,
  }) => PushMessageContentVideo(
    video: video ?? this.video,
    caption: caption ?? this.caption,
    isSecret: isSecret ?? this.isSecret,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentVideoNote** *(pushMessageContentVideoNote)* - child of PushMessageContent
  ///
  /// A video note message.
  ///
  /// * [videoNote]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentVideoNote extends PushMessageContent {
  
  /// **PushMessageContentVideoNote** *(pushMessageContentVideoNote)* - child of PushMessageContent
  ///
  /// A video note message.
  ///
  /// * [videoNote]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentVideoNote({
    this.videoNote,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final VideoNote? videoNote;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVideoNote.fromJson(Map<String, dynamic> json) => PushMessageContentVideoNote(
    videoNote: json['video_note'] == null ? null : VideoNote.fromJson(json['video_note']),
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "video_note": videoNote?.toJson(),
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentVideoNote copyWith({
    VideoNote? videoNote,
    bool? isPinned,
  }) => PushMessageContentVideoNote(
    videoNote: videoNote ?? this.videoNote,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentVideoNote';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentVoiceNote** *(pushMessageContentVoiceNote)* - child of PushMessageContent
  ///
  /// A voice note message.
  ///
  /// * [voiceNote]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
class PushMessageContentVoiceNote extends PushMessageContent {
  
  /// **PushMessageContentVoiceNote** *(pushMessageContentVoiceNote)* - child of PushMessageContent
  ///
  /// A voice note message.
  ///
  /// * [voiceNote]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentVoiceNote({
    this.voiceNote,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final VoiceNote? voiceNote;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json) => PushMessageContentVoiceNote(
    voiceNote: json['voice_note'] == null ? null : VoiceNote.fromJson(json['voice_note']),
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "voice_note": voiceNote?.toJson(),
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentVoiceNote copyWith({
    VoiceNote? voiceNote,
    bool? isPinned,
  }) => PushMessageContentVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    isPinned: isPinned ?? this.isPinned,
  );

  static const String constructor = 'pushMessageContentVoiceNote';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentBasicGroupChatCreate** *(pushMessageContentBasicGroupChatCreate)* - child of PushMessageContent
  ///
  /// A newly created basic group.
class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  
  /// **PushMessageContentBasicGroupChatCreate** *(pushMessageContentBasicGroupChatCreate)* - child of PushMessageContent
  ///
  /// A newly created basic group.
  const PushMessageContentBasicGroupChatCreate();
  
  /// Parse from a json
  factory PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json) => const PushMessageContentBasicGroupChatCreate();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PushMessageContentBasicGroupChatCreate copyWith() => const PushMessageContentBasicGroupChatCreate();

  static const String constructor = 'pushMessageContentBasicGroupChatCreate';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentChatAddMembers** *(pushMessageContentChatAddMembers)* - child of PushMessageContent
  ///
  /// New chat members were invited to a group.
  ///
  /// * [memberName]: Name of the added member.
  /// * [isCurrentUser]: True, if the current user was added to the group.
  /// * [isReturned]: True, if the user has returned to the group themselves.
class PushMessageContentChatAddMembers extends PushMessageContent {
  
  /// **PushMessageContentChatAddMembers** *(pushMessageContentChatAddMembers)* - child of PushMessageContent
  ///
  /// New chat members were invited to a group.
  ///
  /// * [memberName]: Name of the added member.
  /// * [isCurrentUser]: True, if the current user was added to the group.
  /// * [isReturned]: True, if the user has returned to the group themselves.
  const PushMessageContentChatAddMembers({
    required this.memberName,
    required this.isCurrentUser,
    required this.isReturned,
  });
  
  /// Name of the added member
  final String memberName;

  /// True, if the current user was added to the group
  final bool isCurrentUser;

  /// True, if the user has returned to the group themselves
  final bool isReturned;
  
  /// Parse from a json
  factory PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json) => PushMessageContentChatAddMembers(
    memberName: json['member_name'],
    isCurrentUser: json['is_current_user'],
    isReturned: json['is_returned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_returned": isReturned,
    };
  }
  
  @override
  PushMessageContentChatAddMembers copyWith({
    String? memberName,
    bool? isCurrentUser,
    bool? isReturned,
  }) => PushMessageContentChatAddMembers(
    memberName: memberName ?? this.memberName,
    isCurrentUser: isCurrentUser ?? this.isCurrentUser,
    isReturned: isReturned ?? this.isReturned,
  );

  static const String constructor = 'pushMessageContentChatAddMembers';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentChatChangePhoto** *(pushMessageContentChatChangePhoto)* - child of PushMessageContent
  ///
  /// A chat photo was edited.
class PushMessageContentChatChangePhoto extends PushMessageContent {
  
  /// **PushMessageContentChatChangePhoto** *(pushMessageContentChatChangePhoto)* - child of PushMessageContent
  ///
  /// A chat photo was edited.
  const PushMessageContentChatChangePhoto();
  
  /// Parse from a json
  factory PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json) => const PushMessageContentChatChangePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PushMessageContentChatChangePhoto copyWith() => const PushMessageContentChatChangePhoto();

  static const String constructor = 'pushMessageContentChatChangePhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentChatChangeTitle** *(pushMessageContentChatChangeTitle)* - child of PushMessageContent
  ///
  /// A chat title was edited.
  ///
  /// * [title]: New chat title.
class PushMessageContentChatChangeTitle extends PushMessageContent {
  
  /// **PushMessageContentChatChangeTitle** *(pushMessageContentChatChangeTitle)* - child of PushMessageContent
  ///
  /// A chat title was edited.
  ///
  /// * [title]: New chat title.
  const PushMessageContentChatChangeTitle({
    required this.title,
  });
  
  /// New chat title
  final String title;
  
  /// Parse from a json
  factory PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json) => PushMessageContentChatChangeTitle(
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "title": title,
    };
  }
  
  @override
  PushMessageContentChatChangeTitle copyWith({
    String? title,
  }) => PushMessageContentChatChangeTitle(
    title: title ?? this.title,
  );

  static const String constructor = 'pushMessageContentChatChangeTitle';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentChatSetTheme** *(pushMessageContentChatSetTheme)* - child of PushMessageContent
  ///
  /// A chat theme was edited.
  ///
  /// * [themeName]: If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one.
class PushMessageContentChatSetTheme extends PushMessageContent {
  
  /// **PushMessageContentChatSetTheme** *(pushMessageContentChatSetTheme)* - child of PushMessageContent
  ///
  /// A chat theme was edited.
  ///
  /// * [themeName]: If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one.
  const PushMessageContentChatSetTheme({
    required this.themeName,
  });
  
  /// If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one
  final String themeName;
  
  /// Parse from a json
  factory PushMessageContentChatSetTheme.fromJson(Map<String, dynamic> json) => PushMessageContentChatSetTheme(
    themeName: json['theme_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "theme_name": themeName,
    };
  }
  
  @override
  PushMessageContentChatSetTheme copyWith({
    String? themeName,
  }) => PushMessageContentChatSetTheme(
    themeName: themeName ?? this.themeName,
  );

  static const String constructor = 'pushMessageContentChatSetTheme';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentChatDeleteMember** *(pushMessageContentChatDeleteMember)* - child of PushMessageContent
  ///
  /// A chat member was deleted.
  ///
  /// * [memberName]: Name of the deleted member.
  /// * [isCurrentUser]: True, if the current user was deleted from the group.
  /// * [isLeft]: True, if the user has left the group themselves.
class PushMessageContentChatDeleteMember extends PushMessageContent {
  
  /// **PushMessageContentChatDeleteMember** *(pushMessageContentChatDeleteMember)* - child of PushMessageContent
  ///
  /// A chat member was deleted.
  ///
  /// * [memberName]: Name of the deleted member.
  /// * [isCurrentUser]: True, if the current user was deleted from the group.
  /// * [isLeft]: True, if the user has left the group themselves.
  const PushMessageContentChatDeleteMember({
    required this.memberName,
    required this.isCurrentUser,
    required this.isLeft,
  });
  
  /// Name of the deleted member
  final String memberName;

  /// True, if the current user was deleted from the group
  final bool isCurrentUser;

  /// True, if the user has left the group themselves
  final bool isLeft;
  
  /// Parse from a json
  factory PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json) => PushMessageContentChatDeleteMember(
    memberName: json['member_name'],
    isCurrentUser: json['is_current_user'],
    isLeft: json['is_left'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_left": isLeft,
    };
  }
  
  @override
  PushMessageContentChatDeleteMember copyWith({
    String? memberName,
    bool? isCurrentUser,
    bool? isLeft,
  }) => PushMessageContentChatDeleteMember(
    memberName: memberName ?? this.memberName,
    isCurrentUser: isCurrentUser ?? this.isCurrentUser,
    isLeft: isLeft ?? this.isLeft,
  );

  static const String constructor = 'pushMessageContentChatDeleteMember';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentChatJoinByLink** *(pushMessageContentChatJoinByLink)* - child of PushMessageContent
  ///
  /// A new member joined the chat via an invite link.
class PushMessageContentChatJoinByLink extends PushMessageContent {
  
  /// **PushMessageContentChatJoinByLink** *(pushMessageContentChatJoinByLink)* - child of PushMessageContent
  ///
  /// A new member joined the chat via an invite link.
  const PushMessageContentChatJoinByLink();
  
  /// Parse from a json
  factory PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json) => const PushMessageContentChatJoinByLink();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PushMessageContentChatJoinByLink copyWith() => const PushMessageContentChatJoinByLink();

  static const String constructor = 'pushMessageContentChatJoinByLink';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentChatJoinByRequest** *(pushMessageContentChatJoinByRequest)* - child of PushMessageContent
  ///
  /// A new member was accepted to the chat by an administrator.
class PushMessageContentChatJoinByRequest extends PushMessageContent {
  
  /// **PushMessageContentChatJoinByRequest** *(pushMessageContentChatJoinByRequest)* - child of PushMessageContent
  ///
  /// A new member was accepted to the chat by an administrator.
  const PushMessageContentChatJoinByRequest();
  
  /// Parse from a json
  factory PushMessageContentChatJoinByRequest.fromJson(Map<String, dynamic> json) => const PushMessageContentChatJoinByRequest();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PushMessageContentChatJoinByRequest copyWith() => const PushMessageContentChatJoinByRequest();

  static const String constructor = 'pushMessageContentChatJoinByRequest';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentRecurringPayment** *(pushMessageContentRecurringPayment)* - child of PushMessageContent
  ///
  /// A new recurrent payment was made by the current user.
  ///
  /// * [amount]: The paid amount.
class PushMessageContentRecurringPayment extends PushMessageContent {
  
  /// **PushMessageContentRecurringPayment** *(pushMessageContentRecurringPayment)* - child of PushMessageContent
  ///
  /// A new recurrent payment was made by the current user.
  ///
  /// * [amount]: The paid amount.
  const PushMessageContentRecurringPayment({
    required this.amount,
  });
  
  /// The paid amount
  final String amount;
  
  /// Parse from a json
  factory PushMessageContentRecurringPayment.fromJson(Map<String, dynamic> json) => PushMessageContentRecurringPayment(
    amount: json['amount'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "amount": amount,
    };
  }
  
  @override
  PushMessageContentRecurringPayment copyWith({
    String? amount,
  }) => PushMessageContentRecurringPayment(
    amount: amount ?? this.amount,
  );

  static const String constructor = 'pushMessageContentRecurringPayment';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentSuggestProfilePhoto** *(pushMessageContentSuggestProfilePhoto)* - child of PushMessageContent
  ///
  /// A profile photo was suggested to the user.
class PushMessageContentSuggestProfilePhoto extends PushMessageContent {
  
  /// **PushMessageContentSuggestProfilePhoto** *(pushMessageContentSuggestProfilePhoto)* - child of PushMessageContent
  ///
  /// A profile photo was suggested to the user.
  const PushMessageContentSuggestProfilePhoto();
  
  /// Parse from a json
  factory PushMessageContentSuggestProfilePhoto.fromJson(Map<String, dynamic> json) => const PushMessageContentSuggestProfilePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PushMessageContentSuggestProfilePhoto copyWith() => const PushMessageContentSuggestProfilePhoto();

  static const String constructor = 'pushMessageContentSuggestProfilePhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentMessageForwards** *(pushMessageContentMessageForwards)* - child of PushMessageContent
  ///
  /// A forwarded messages.
  ///
  /// * [totalCount]: Number of forwarded messages.
class PushMessageContentMessageForwards extends PushMessageContent {
  
  /// **PushMessageContentMessageForwards** *(pushMessageContentMessageForwards)* - child of PushMessageContent
  ///
  /// A forwarded messages.
  ///
  /// * [totalCount]: Number of forwarded messages.
  const PushMessageContentMessageForwards({
    required this.totalCount,
  });
  
  /// Number of forwarded messages
  final int totalCount;
  
  /// Parse from a json
  factory PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json) => PushMessageContentMessageForwards(
    totalCount: json['total_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "total_count": totalCount,
    };
  }
  
  @override
  PushMessageContentMessageForwards copyWith({
    int? totalCount,
  }) => PushMessageContentMessageForwards(
    totalCount: totalCount ?? this.totalCount,
  );

  static const String constructor = 'pushMessageContentMessageForwards';
  
  @override
  String getConstructor() => constructor;
}


/// **PushMessageContentMediaAlbum** *(pushMessageContentMediaAlbum)* - child of PushMessageContent
  ///
  /// A media album.
  ///
  /// * [totalCount]: Number of messages in the album.
  /// * [hasPhotos]: True, if the album has at least one photo.
  /// * [hasVideos]: True, if the album has at least one video file.
  /// * [hasAudios]: True, if the album has at least one audio file.
  /// * [hasDocuments]: True, if the album has at least one document.
class PushMessageContentMediaAlbum extends PushMessageContent {
  
  /// **PushMessageContentMediaAlbum** *(pushMessageContentMediaAlbum)* - child of PushMessageContent
  ///
  /// A media album.
  ///
  /// * [totalCount]: Number of messages in the album.
  /// * [hasPhotos]: True, if the album has at least one photo.
  /// * [hasVideos]: True, if the album has at least one video file.
  /// * [hasAudios]: True, if the album has at least one audio file.
  /// * [hasDocuments]: True, if the album has at least one document.
  const PushMessageContentMediaAlbum({
    required this.totalCount,
    required this.hasPhotos,
    required this.hasVideos,
    required this.hasAudios,
    required this.hasDocuments,
  });
  
  /// Number of messages in the album
  final int totalCount;

  /// True, if the album has at least one photo
  final bool hasPhotos;

  /// True, if the album has at least one video file
  final bool hasVideos;

  /// True, if the album has at least one audio file
  final bool hasAudios;

  /// True, if the album has at least one document
  final bool hasDocuments;
  
  /// Parse from a json
  factory PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) => PushMessageContentMediaAlbum(
    totalCount: json['total_count'],
    hasPhotos: json['has_photos'],
    hasVideos: json['has_videos'],
    hasAudios: json['has_audios'],
    hasDocuments: json['has_documents'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "total_count": totalCount,
      "has_photos": hasPhotos,
      "has_videos": hasVideos,
      "has_audios": hasAudios,
      "has_documents": hasDocuments,
    };
  }
  
  @override
  PushMessageContentMediaAlbum copyWith({
    int? totalCount,
    bool? hasPhotos,
    bool? hasVideos,
    bool? hasAudios,
    bool? hasDocuments,
  }) => PushMessageContentMediaAlbum(
    totalCount: totalCount ?? this.totalCount,
    hasPhotos: hasPhotos ?? this.hasPhotos,
    hasVideos: hasVideos ?? this.hasVideos,
    hasAudios: hasAudios ?? this.hasAudios,
    hasDocuments: hasDocuments ?? this.hasDocuments,
  );

  static const String constructor = 'pushMessageContentMediaAlbum';
  
  @override
  String getConstructor() => constructor;
}
