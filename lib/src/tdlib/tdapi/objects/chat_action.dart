part of '../tdapi.dart';

/// **ChatAction** *(chatAction)* - parent
///
/// Describes the different types of activity in a chat.
sealed class ChatAction extends TdObject {
  
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
      case ChatActionTyping.objectType:
        return ChatActionTyping.fromJson(json);
      case ChatActionRecordingVideo.objectType:
        return ChatActionRecordingVideo.fromJson(json);
      case ChatActionUploadingVideo.objectType:
        return ChatActionUploadingVideo.fromJson(json);
      case ChatActionRecordingVoiceNote.objectType:
        return ChatActionRecordingVoiceNote.fromJson(json);
      case ChatActionUploadingVoiceNote.objectType:
        return ChatActionUploadingVoiceNote.fromJson(json);
      case ChatActionUploadingPhoto.objectType:
        return ChatActionUploadingPhoto.fromJson(json);
      case ChatActionUploadingDocument.objectType:
        return ChatActionUploadingDocument.fromJson(json);
      case ChatActionChoosingSticker.objectType:
        return ChatActionChoosingSticker.fromJson(json);
      case ChatActionChoosingLocation.objectType:
        return ChatActionChoosingLocation.fromJson(json);
      case ChatActionChoosingContact.objectType:
        return ChatActionChoosingContact.fromJson(json);
      case ChatActionStartPlayingGame.objectType:
        return ChatActionStartPlayingGame.fromJson(json);
      case ChatActionRecordingVideoNote.objectType:
        return ChatActionRecordingVideoNote.fromJson(json);
      case ChatActionUploadingVideoNote.objectType:
        return ChatActionUploadingVideoNote.fromJson(json);
      case ChatActionWatchingAnimations.objectType:
        return ChatActionWatchingAnimations.fromJson(json);
      case ChatActionCancel.objectType:
        return ChatActionCancel.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatAction)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatAction copyWith();

  static const String objectType = 'chatAction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionTyping** *(chatActionTyping)* - child of ChatAction
///
/// The user is typing a message.
final class ChatActionTyping extends ChatAction {
  
  /// **ChatActionTyping** *(chatActionTyping)* - child of ChatAction
  ///
  /// The user is typing a message.
  const ChatActionTyping();
  
  /// Parse from a json
  factory ChatActionTyping.fromJson(Map<String, dynamic> json) => const ChatActionTyping();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionTyping copyWith() => const ChatActionTyping();

  static const String objectType = 'chatActionTyping';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionRecordingVideo** *(chatActionRecordingVideo)* - child of ChatAction
///
/// The user is recording a video.
final class ChatActionRecordingVideo extends ChatAction {
  
  /// **ChatActionRecordingVideo** *(chatActionRecordingVideo)* - child of ChatAction
  ///
  /// The user is recording a video.
  const ChatActionRecordingVideo();
  
  /// Parse from a json
  factory ChatActionRecordingVideo.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVideo();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionRecordingVideo copyWith() => const ChatActionRecordingVideo();

  static const String objectType = 'chatActionRecordingVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingVideo** *(chatActionUploadingVideo)* - child of ChatAction
///
/// The user is uploading a video.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingVideo extends ChatAction {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  
  @override
  ChatActionUploadingVideo copyWith({
    int? progress,
  }) => ChatActionUploadingVideo(
    progress: progress ?? this.progress,
  );

  static const String objectType = 'chatActionUploadingVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionRecordingVoiceNote** *(chatActionRecordingVoiceNote)* - child of ChatAction
///
/// The user is recording a voice note.
final class ChatActionRecordingVoiceNote extends ChatAction {
  
  /// **ChatActionRecordingVoiceNote** *(chatActionRecordingVoiceNote)* - child of ChatAction
  ///
  /// The user is recording a voice note.
  const ChatActionRecordingVoiceNote();
  
  /// Parse from a json
  factory ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVoiceNote();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionRecordingVoiceNote copyWith() => const ChatActionRecordingVoiceNote();

  static const String objectType = 'chatActionRecordingVoiceNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingVoiceNote** *(chatActionUploadingVoiceNote)* - child of ChatAction
///
/// The user is uploading a voice note.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingVoiceNote extends ChatAction {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  
  @override
  ChatActionUploadingVoiceNote copyWith({
    int? progress,
  }) => ChatActionUploadingVoiceNote(
    progress: progress ?? this.progress,
  );

  static const String objectType = 'chatActionUploadingVoiceNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingPhoto** *(chatActionUploadingPhoto)* - child of ChatAction
///
/// The user is uploading a photo.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingPhoto extends ChatAction {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  
  @override
  ChatActionUploadingPhoto copyWith({
    int? progress,
  }) => ChatActionUploadingPhoto(
    progress: progress ?? this.progress,
  );

  static const String objectType = 'chatActionUploadingPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingDocument** *(chatActionUploadingDocument)* - child of ChatAction
///
/// The user is uploading a document.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingDocument extends ChatAction {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  
  @override
  ChatActionUploadingDocument copyWith({
    int? progress,
  }) => ChatActionUploadingDocument(
    progress: progress ?? this.progress,
  );

  static const String objectType = 'chatActionUploadingDocument';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionChoosingSticker** *(chatActionChoosingSticker)* - child of ChatAction
///
/// The user is picking a sticker to send.
final class ChatActionChoosingSticker extends ChatAction {
  
  /// **ChatActionChoosingSticker** *(chatActionChoosingSticker)* - child of ChatAction
  ///
  /// The user is picking a sticker to send.
  const ChatActionChoosingSticker();
  
  /// Parse from a json
  factory ChatActionChoosingSticker.fromJson(Map<String, dynamic> json) => const ChatActionChoosingSticker();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionChoosingSticker copyWith() => const ChatActionChoosingSticker();

  static const String objectType = 'chatActionChoosingSticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionChoosingLocation** *(chatActionChoosingLocation)* - child of ChatAction
///
/// The user is picking a location or venue to send.
final class ChatActionChoosingLocation extends ChatAction {
  
  /// **ChatActionChoosingLocation** *(chatActionChoosingLocation)* - child of ChatAction
  ///
  /// The user is picking a location or venue to send.
  const ChatActionChoosingLocation();
  
  /// Parse from a json
  factory ChatActionChoosingLocation.fromJson(Map<String, dynamic> json) => const ChatActionChoosingLocation();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionChoosingLocation copyWith() => const ChatActionChoosingLocation();

  static const String objectType = 'chatActionChoosingLocation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionChoosingContact** *(chatActionChoosingContact)* - child of ChatAction
///
/// The user is picking a contact to send.
final class ChatActionChoosingContact extends ChatAction {
  
  /// **ChatActionChoosingContact** *(chatActionChoosingContact)* - child of ChatAction
  ///
  /// The user is picking a contact to send.
  const ChatActionChoosingContact();
  
  /// Parse from a json
  factory ChatActionChoosingContact.fromJson(Map<String, dynamic> json) => const ChatActionChoosingContact();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionChoosingContact copyWith() => const ChatActionChoosingContact();

  static const String objectType = 'chatActionChoosingContact';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionStartPlayingGame** *(chatActionStartPlayingGame)* - child of ChatAction
///
/// The user has started to play a game.
final class ChatActionStartPlayingGame extends ChatAction {
  
  /// **ChatActionStartPlayingGame** *(chatActionStartPlayingGame)* - child of ChatAction
  ///
  /// The user has started to play a game.
  const ChatActionStartPlayingGame();
  
  /// Parse from a json
  factory ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json) => const ChatActionStartPlayingGame();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionStartPlayingGame copyWith() => const ChatActionStartPlayingGame();

  static const String objectType = 'chatActionStartPlayingGame';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionRecordingVideoNote** *(chatActionRecordingVideoNote)* - child of ChatAction
///
/// The user is recording a video note.
final class ChatActionRecordingVideoNote extends ChatAction {
  
  /// **ChatActionRecordingVideoNote** *(chatActionRecordingVideoNote)* - child of ChatAction
  ///
  /// The user is recording a video note.
  const ChatActionRecordingVideoNote();
  
  /// Parse from a json
  factory ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVideoNote();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionRecordingVideoNote copyWith() => const ChatActionRecordingVideoNote();

  static const String objectType = 'chatActionRecordingVideoNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingVideoNote** *(chatActionUploadingVideoNote)* - child of ChatAction
///
/// The user is uploading a video note.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingVideoNote extends ChatAction {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  
  @override
  ChatActionUploadingVideoNote copyWith({
    int? progress,
  }) => ChatActionUploadingVideoNote(
    progress: progress ?? this.progress,
  );

  static const String objectType = 'chatActionUploadingVideoNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionWatchingAnimations** *(chatActionWatchingAnimations)* - child of ChatAction
///
/// The user is watching animations sent by the other party by clicking on an animated emoji.
///
/// * [emoji]: The animated emoji.
final class ChatActionWatchingAnimations extends ChatAction {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "emoji": emoji,
		};
	}

  
  @override
  ChatActionWatchingAnimations copyWith({
    String? emoji,
  }) => ChatActionWatchingAnimations(
    emoji: emoji ?? this.emoji,
  );

  static const String objectType = 'chatActionWatchingAnimations';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionCancel** *(chatActionCancel)* - child of ChatAction
///
/// The user has canceled the previous action.
final class ChatActionCancel extends ChatAction {
  
  /// **ChatActionCancel** *(chatActionCancel)* - child of ChatAction
  ///
  /// The user has canceled the previous action.
  const ChatActionCancel();
  
  /// Parse from a json
  factory ChatActionCancel.fromJson(Map<String, dynamic> json) => const ChatActionCancel();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionCancel copyWith() => const ChatActionCancel();

  static const String objectType = 'chatActionCancel';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
