part of '../tdapi.dart';

/// **ChatAction** *(chatAction)* - parent
  ///
  /// Describes the different types of activity in a chat.
class ChatAction extends TdObject {
  
  /// **ChatAction** *(chatAction)* - parent
  ///
  /// Describes the different types of activity in a chat.
  const ChatAction();
  
  /// a ChatAction return type can be :
  /// * [ChatActionTyping]
  /// * [ChatActionRecordingVideo]
  /// * [ChatActionUploadingVideo]
  /// * [ChatActionRecordingVoiceNote]
  /// * [ChatActionUploadingVoiceNote]
  /// * [ChatActionUploadingPhoto]
  /// * [ChatActionUploadingDocument]
  /// * [ChatActionChoosingSticker]
  /// * [ChatActionChoosingLocation]
  /// * [ChatActionChoosingContact]
  /// * [ChatActionStartPlayingGame]
  /// * [ChatActionRecordingVideoNote]
  /// * [ChatActionUploadingVideoNote]
  /// * [ChatActionWatchingAnimations]
  /// * [ChatActionCancel]
  factory ChatAction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatActionTyping.constructor:
        return ChatActionTyping.fromJson(json);
      case ChatActionRecordingVideo.constructor:
        return ChatActionRecordingVideo.fromJson(json);
      case ChatActionUploadingVideo.constructor:
        return ChatActionUploadingVideo.fromJson(json);
      case ChatActionRecordingVoiceNote.constructor:
        return ChatActionRecordingVoiceNote.fromJson(json);
      case ChatActionUploadingVoiceNote.constructor:
        return ChatActionUploadingVoiceNote.fromJson(json);
      case ChatActionUploadingPhoto.constructor:
        return ChatActionUploadingPhoto.fromJson(json);
      case ChatActionUploadingDocument.constructor:
        return ChatActionUploadingDocument.fromJson(json);
      case ChatActionChoosingSticker.constructor:
        return ChatActionChoosingSticker.fromJson(json);
      case ChatActionChoosingLocation.constructor:
        return ChatActionChoosingLocation.fromJson(json);
      case ChatActionChoosingContact.constructor:
        return ChatActionChoosingContact.fromJson(json);
      case ChatActionStartPlayingGame.constructor:
        return ChatActionStartPlayingGame.fromJson(json);
      case ChatActionRecordingVideoNote.constructor:
        return ChatActionRecordingVideoNote.fromJson(json);
      case ChatActionUploadingVideoNote.constructor:
        return ChatActionUploadingVideoNote.fromJson(json);
      case ChatActionWatchingAnimations.constructor:
        return ChatActionWatchingAnimations.fromJson(json);
      case ChatActionCancel.constructor:
        return ChatActionCancel.fromJson(json);
      default:
        return const ChatAction();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatAction copyWith() => const ChatAction();

  static const String constructor = 'chatAction';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionTyping** *(chatActionTyping)* - child of ChatAction
  ///
  /// The user is typing a message.
class ChatActionTyping extends ChatAction {
  
  /// **ChatActionTyping** *(chatActionTyping)* - child of ChatAction
  ///
  /// The user is typing a message.
  const ChatActionTyping();
  
  /// Parse from a json
  factory ChatActionTyping.fromJson(Map<String, dynamic> json) => const ChatActionTyping();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionTyping copyWith() => const ChatActionTyping();

  static const String constructor = 'chatActionTyping';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionRecordingVideo** *(chatActionRecordingVideo)* - child of ChatAction
  ///
  /// The user is recording a video.
class ChatActionRecordingVideo extends ChatAction {
  
  /// **ChatActionRecordingVideo** *(chatActionRecordingVideo)* - child of ChatAction
  ///
  /// The user is recording a video.
  const ChatActionRecordingVideo();
  
  /// Parse from a json
  factory ChatActionRecordingVideo.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionRecordingVideo copyWith() => const ChatActionRecordingVideo();

  static const String constructor = 'chatActionRecordingVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionUploadingVideo** *(chatActionUploadingVideo)* - child of ChatAction
  ///
  /// The user is uploading a video.
  ///
  /// * [progress]: Upload progress, as a percentage.
class ChatActionUploadingVideo extends ChatAction {
  
  /// **ChatActionUploadingVideo** *(chatActionUploadingVideo)* - child of ChatAction
  ///
  /// The user is uploading a video.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingVideo({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVideo.fromJson(Map<String, dynamic> json) => ChatActionUploadingVideo(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingVideo copyWith({
    int? progress,
  }) => ChatActionUploadingVideo(
    progress: progress ?? this.progress,
  );

  static const String constructor = 'chatActionUploadingVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionRecordingVoiceNote** *(chatActionRecordingVoiceNote)* - child of ChatAction
  ///
  /// The user is recording a voice note.
class ChatActionRecordingVoiceNote extends ChatAction {
  
  /// **ChatActionRecordingVoiceNote** *(chatActionRecordingVoiceNote)* - child of ChatAction
  ///
  /// The user is recording a voice note.
  const ChatActionRecordingVoiceNote();
  
  /// Parse from a json
  factory ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVoiceNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionRecordingVoiceNote copyWith() => const ChatActionRecordingVoiceNote();

  static const String constructor = 'chatActionRecordingVoiceNote';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionUploadingVoiceNote** *(chatActionUploadingVoiceNote)* - child of ChatAction
  ///
  /// The user is uploading a voice note.
  ///
  /// * [progress]: Upload progress, as a percentage.
class ChatActionUploadingVoiceNote extends ChatAction {
  
  /// **ChatActionUploadingVoiceNote** *(chatActionUploadingVoiceNote)* - child of ChatAction
  ///
  /// The user is uploading a voice note.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingVoiceNote({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json) => ChatActionUploadingVoiceNote(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingVoiceNote copyWith({
    int? progress,
  }) => ChatActionUploadingVoiceNote(
    progress: progress ?? this.progress,
  );

  static const String constructor = 'chatActionUploadingVoiceNote';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionUploadingPhoto** *(chatActionUploadingPhoto)* - child of ChatAction
  ///
  /// The user is uploading a photo.
  ///
  /// * [progress]: Upload progress, as a percentage.
class ChatActionUploadingPhoto extends ChatAction {
  
  /// **ChatActionUploadingPhoto** *(chatActionUploadingPhoto)* - child of ChatAction
  ///
  /// The user is uploading a photo.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingPhoto({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json) => ChatActionUploadingPhoto(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingPhoto copyWith({
    int? progress,
  }) => ChatActionUploadingPhoto(
    progress: progress ?? this.progress,
  );

  static const String constructor = 'chatActionUploadingPhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionUploadingDocument** *(chatActionUploadingDocument)* - child of ChatAction
  ///
  /// The user is uploading a document.
  ///
  /// * [progress]: Upload progress, as a percentage.
class ChatActionUploadingDocument extends ChatAction {
  
  /// **ChatActionUploadingDocument** *(chatActionUploadingDocument)* - child of ChatAction
  ///
  /// The user is uploading a document.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingDocument({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingDocument.fromJson(Map<String, dynamic> json) => ChatActionUploadingDocument(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingDocument copyWith({
    int? progress,
  }) => ChatActionUploadingDocument(
    progress: progress ?? this.progress,
  );

  static const String constructor = 'chatActionUploadingDocument';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionChoosingSticker** *(chatActionChoosingSticker)* - child of ChatAction
  ///
  /// The user is picking a sticker to send.
class ChatActionChoosingSticker extends ChatAction {
  
  /// **ChatActionChoosingSticker** *(chatActionChoosingSticker)* - child of ChatAction
  ///
  /// The user is picking a sticker to send.
  const ChatActionChoosingSticker();
  
  /// Parse from a json
  factory ChatActionChoosingSticker.fromJson(Map<String, dynamic> json) => const ChatActionChoosingSticker();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionChoosingSticker copyWith() => const ChatActionChoosingSticker();

  static const String constructor = 'chatActionChoosingSticker';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionChoosingLocation** *(chatActionChoosingLocation)* - child of ChatAction
  ///
  /// The user is picking a location or venue to send.
class ChatActionChoosingLocation extends ChatAction {
  
  /// **ChatActionChoosingLocation** *(chatActionChoosingLocation)* - child of ChatAction
  ///
  /// The user is picking a location or venue to send.
  const ChatActionChoosingLocation();
  
  /// Parse from a json
  factory ChatActionChoosingLocation.fromJson(Map<String, dynamic> json) => const ChatActionChoosingLocation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionChoosingLocation copyWith() => const ChatActionChoosingLocation();

  static const String constructor = 'chatActionChoosingLocation';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionChoosingContact** *(chatActionChoosingContact)* - child of ChatAction
  ///
  /// The user is picking a contact to send.
class ChatActionChoosingContact extends ChatAction {
  
  /// **ChatActionChoosingContact** *(chatActionChoosingContact)* - child of ChatAction
  ///
  /// The user is picking a contact to send.
  const ChatActionChoosingContact();
  
  /// Parse from a json
  factory ChatActionChoosingContact.fromJson(Map<String, dynamic> json) => const ChatActionChoosingContact();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionChoosingContact copyWith() => const ChatActionChoosingContact();

  static const String constructor = 'chatActionChoosingContact';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionStartPlayingGame** *(chatActionStartPlayingGame)* - child of ChatAction
  ///
  /// The user has started to play a game.
class ChatActionStartPlayingGame extends ChatAction {
  
  /// **ChatActionStartPlayingGame** *(chatActionStartPlayingGame)* - child of ChatAction
  ///
  /// The user has started to play a game.
  const ChatActionStartPlayingGame();
  
  /// Parse from a json
  factory ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json) => const ChatActionStartPlayingGame();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionStartPlayingGame copyWith() => const ChatActionStartPlayingGame();

  static const String constructor = 'chatActionStartPlayingGame';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionRecordingVideoNote** *(chatActionRecordingVideoNote)* - child of ChatAction
  ///
  /// The user is recording a video note.
class ChatActionRecordingVideoNote extends ChatAction {
  
  /// **ChatActionRecordingVideoNote** *(chatActionRecordingVideoNote)* - child of ChatAction
  ///
  /// The user is recording a video note.
  const ChatActionRecordingVideoNote();
  
  /// Parse from a json
  factory ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVideoNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionRecordingVideoNote copyWith() => const ChatActionRecordingVideoNote();

  static const String constructor = 'chatActionRecordingVideoNote';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionUploadingVideoNote** *(chatActionUploadingVideoNote)* - child of ChatAction
  ///
  /// The user is uploading a video note.
  ///
  /// * [progress]: Upload progress, as a percentage.
class ChatActionUploadingVideoNote extends ChatAction {
  
  /// **ChatActionUploadingVideoNote** *(chatActionUploadingVideoNote)* - child of ChatAction
  ///
  /// The user is uploading a video note.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingVideoNote({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json) => ChatActionUploadingVideoNote(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingVideoNote copyWith({
    int? progress,
  }) => ChatActionUploadingVideoNote(
    progress: progress ?? this.progress,
  );

  static const String constructor = 'chatActionUploadingVideoNote';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionWatchingAnimations** *(chatActionWatchingAnimations)* - child of ChatAction
  ///
  /// The user is watching animations sent by the other party by clicking on an animated emoji.
  ///
  /// * [emoji]: The animated emoji.
class ChatActionWatchingAnimations extends ChatAction {
  
  /// **ChatActionWatchingAnimations** *(chatActionWatchingAnimations)* - child of ChatAction
  ///
  /// The user is watching animations sent by the other party by clicking on an animated emoji.
  ///
  /// * [emoji]: The animated emoji.
  const ChatActionWatchingAnimations({
    required this.emoji,
  });
  
  /// The animated emoji
  final String emoji;
  
  /// Parse from a json
  factory ChatActionWatchingAnimations.fromJson(Map<String, dynamic> json) => ChatActionWatchingAnimations(
    emoji: json['emoji'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "emoji": emoji,
    };
  }
  
  @override
  ChatActionWatchingAnimations copyWith({
    String? emoji,
  }) => ChatActionWatchingAnimations(
    emoji: emoji ?? this.emoji,
  );

  static const String constructor = 'chatActionWatchingAnimations';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatActionCancel** *(chatActionCancel)* - child of ChatAction
  ///
  /// The user has canceled the previous action.
class ChatActionCancel extends ChatAction {
  
  /// **ChatActionCancel** *(chatActionCancel)* - child of ChatAction
  ///
  /// The user has canceled the previous action.
  const ChatActionCancel();
  
  /// Parse from a json
  factory ChatActionCancel.fromJson(Map<String, dynamic> json) => const ChatActionCancel();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatActionCancel copyWith() => const ChatActionCancel();

  static const String constructor = 'chatActionCancel';
  
  @override
  String getConstructor() => constructor;
}
