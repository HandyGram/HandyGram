part of '../tdapi.dart';

/// **FileType** *(fileType)* - parent
///
/// Represents the type of a file.
sealed class FileType extends TdObject {
  
  /// **FileType** *(fileType)* - parent
  ///
  /// Represents the type of a file.
  const FileType();
  
  /// a FileType return type can be :
  /// * [FileTypeNone]
  /// * [FileTypeAnimation]
  /// * [FileTypeAudio]
  /// * [FileTypeDocument]
  /// * [FileTypeNotificationSound]
  /// * [FileTypePhoto]
  /// * [FileTypeProfilePhoto]
  /// * [FileTypeSecret]
  /// * [FileTypeSecretThumbnail]
  /// * [FileTypeSecure]
  /// * [FileTypeSticker]
  /// * [FileTypeThumbnail]
  /// * [FileTypeUnknown]
  /// * [FileTypeVideo]
  /// * [FileTypeVideoNote]
  /// * [FileTypeVoiceNote]
  /// * [FileTypeWallpaper]
  factory FileType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case FileTypeNone.objectType:
        return FileTypeNone.fromJson(json);
      case FileTypeAnimation.objectType:
        return FileTypeAnimation.fromJson(json);
      case FileTypeAudio.objectType:
        return FileTypeAudio.fromJson(json);
      case FileTypeDocument.objectType:
        return FileTypeDocument.fromJson(json);
      case FileTypeNotificationSound.objectType:
        return FileTypeNotificationSound.fromJson(json);
      case FileTypePhoto.objectType:
        return FileTypePhoto.fromJson(json);
      case FileTypeProfilePhoto.objectType:
        return FileTypeProfilePhoto.fromJson(json);
      case FileTypeSecret.objectType:
        return FileTypeSecret.fromJson(json);
      case FileTypeSecretThumbnail.objectType:
        return FileTypeSecretThumbnail.fromJson(json);
      case FileTypeSecure.objectType:
        return FileTypeSecure.fromJson(json);
      case FileTypeSticker.objectType:
        return FileTypeSticker.fromJson(json);
      case FileTypeThumbnail.objectType:
        return FileTypeThumbnail.fromJson(json);
      case FileTypeUnknown.objectType:
        return FileTypeUnknown.fromJson(json);
      case FileTypeVideo.objectType:
        return FileTypeVideo.fromJson(json);
      case FileTypeVideoNote.objectType:
        return FileTypeVideoNote.fromJson(json);
      case FileTypeVoiceNote.objectType:
        return FileTypeVoiceNote.fromJson(json);
      case FileTypeWallpaper.objectType:
        return FileTypeWallpaper.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of FileType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  FileType copyWith();

  static const String objectType = 'fileType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeNone** *(fileTypeNone)* - child of FileType
///
/// The data is not a file.
final class FileTypeNone extends FileType {
  
  /// **FileTypeNone** *(fileTypeNone)* - child of FileType
  ///
  /// The data is not a file.
  const FileTypeNone();
  
  /// Parse from a json
  factory FileTypeNone.fromJson(Map<String, dynamic> json) => const FileTypeNone();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeNone copyWith() => const FileTypeNone();

  static const String objectType = 'fileTypeNone';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeAnimation** *(fileTypeAnimation)* - child of FileType
///
/// The file is an animation.
final class FileTypeAnimation extends FileType {
  
  /// **FileTypeAnimation** *(fileTypeAnimation)* - child of FileType
  ///
  /// The file is an animation.
  const FileTypeAnimation();
  
  /// Parse from a json
  factory FileTypeAnimation.fromJson(Map<String, dynamic> json) => const FileTypeAnimation();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeAnimation copyWith() => const FileTypeAnimation();

  static const String objectType = 'fileTypeAnimation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeAudio** *(fileTypeAudio)* - child of FileType
///
/// The file is an audio file.
final class FileTypeAudio extends FileType {
  
  /// **FileTypeAudio** *(fileTypeAudio)* - child of FileType
  ///
  /// The file is an audio file.
  const FileTypeAudio();
  
  /// Parse from a json
  factory FileTypeAudio.fromJson(Map<String, dynamic> json) => const FileTypeAudio();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeAudio copyWith() => const FileTypeAudio();

  static const String objectType = 'fileTypeAudio';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeDocument** *(fileTypeDocument)* - child of FileType
///
/// The file is a document.
final class FileTypeDocument extends FileType {
  
  /// **FileTypeDocument** *(fileTypeDocument)* - child of FileType
  ///
  /// The file is a document.
  const FileTypeDocument();
  
  /// Parse from a json
  factory FileTypeDocument.fromJson(Map<String, dynamic> json) => const FileTypeDocument();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeDocument copyWith() => const FileTypeDocument();

  static const String objectType = 'fileTypeDocument';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeNotificationSound** *(fileTypeNotificationSound)* - child of FileType
///
/// The file is a notification sound.
final class FileTypeNotificationSound extends FileType {
  
  /// **FileTypeNotificationSound** *(fileTypeNotificationSound)* - child of FileType
  ///
  /// The file is a notification sound.
  const FileTypeNotificationSound();
  
  /// Parse from a json
  factory FileTypeNotificationSound.fromJson(Map<String, dynamic> json) => const FileTypeNotificationSound();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeNotificationSound copyWith() => const FileTypeNotificationSound();

  static const String objectType = 'fileTypeNotificationSound';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypePhoto** *(fileTypePhoto)* - child of FileType
///
/// The file is a photo.
final class FileTypePhoto extends FileType {
  
  /// **FileTypePhoto** *(fileTypePhoto)* - child of FileType
  ///
  /// The file is a photo.
  const FileTypePhoto();
  
  /// Parse from a json
  factory FileTypePhoto.fromJson(Map<String, dynamic> json) => const FileTypePhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypePhoto copyWith() => const FileTypePhoto();

  static const String objectType = 'fileTypePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeProfilePhoto** *(fileTypeProfilePhoto)* - child of FileType
///
/// The file is a profile photo.
final class FileTypeProfilePhoto extends FileType {
  
  /// **FileTypeProfilePhoto** *(fileTypeProfilePhoto)* - child of FileType
  ///
  /// The file is a profile photo.
  const FileTypeProfilePhoto();
  
  /// Parse from a json
  factory FileTypeProfilePhoto.fromJson(Map<String, dynamic> json) => const FileTypeProfilePhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeProfilePhoto copyWith() => const FileTypeProfilePhoto();

  static const String objectType = 'fileTypeProfilePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeSecret** *(fileTypeSecret)* - child of FileType
///
/// The file was sent to a secret chat (the file type is not known to the server).
final class FileTypeSecret extends FileType {
  
  /// **FileTypeSecret** *(fileTypeSecret)* - child of FileType
  ///
  /// The file was sent to a secret chat (the file type is not known to the server).
  const FileTypeSecret();
  
  /// Parse from a json
  factory FileTypeSecret.fromJson(Map<String, dynamic> json) => const FileTypeSecret();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeSecret copyWith() => const FileTypeSecret();

  static const String objectType = 'fileTypeSecret';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeSecretThumbnail** *(fileTypeSecretThumbnail)* - child of FileType
///
/// The file is a thumbnail of a file from a secret chat.
final class FileTypeSecretThumbnail extends FileType {
  
  /// **FileTypeSecretThumbnail** *(fileTypeSecretThumbnail)* - child of FileType
  ///
  /// The file is a thumbnail of a file from a secret chat.
  const FileTypeSecretThumbnail();
  
  /// Parse from a json
  factory FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json) => const FileTypeSecretThumbnail();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeSecretThumbnail copyWith() => const FileTypeSecretThumbnail();

  static const String objectType = 'fileTypeSecretThumbnail';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeSecure** *(fileTypeSecure)* - child of FileType
///
/// The file is a file from Secure storage used for storing Telegram Passport files.
final class FileTypeSecure extends FileType {
  
  /// **FileTypeSecure** *(fileTypeSecure)* - child of FileType
  ///
  /// The file is a file from Secure storage used for storing Telegram Passport files.
  const FileTypeSecure();
  
  /// Parse from a json
  factory FileTypeSecure.fromJson(Map<String, dynamic> json) => const FileTypeSecure();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeSecure copyWith() => const FileTypeSecure();

  static const String objectType = 'fileTypeSecure';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeSticker** *(fileTypeSticker)* - child of FileType
///
/// The file is a sticker.
final class FileTypeSticker extends FileType {
  
  /// **FileTypeSticker** *(fileTypeSticker)* - child of FileType
  ///
  /// The file is a sticker.
  const FileTypeSticker();
  
  /// Parse from a json
  factory FileTypeSticker.fromJson(Map<String, dynamic> json) => const FileTypeSticker();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeSticker copyWith() => const FileTypeSticker();

  static const String objectType = 'fileTypeSticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeThumbnail** *(fileTypeThumbnail)* - child of FileType
///
/// The file is a thumbnail of another file.
final class FileTypeThumbnail extends FileType {
  
  /// **FileTypeThumbnail** *(fileTypeThumbnail)* - child of FileType
  ///
  /// The file is a thumbnail of another file.
  const FileTypeThumbnail();
  
  /// Parse from a json
  factory FileTypeThumbnail.fromJson(Map<String, dynamic> json) => const FileTypeThumbnail();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeThumbnail copyWith() => const FileTypeThumbnail();

  static const String objectType = 'fileTypeThumbnail';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeUnknown** *(fileTypeUnknown)* - child of FileType
///
/// The file type is not yet known.
final class FileTypeUnknown extends FileType {
  
  /// **FileTypeUnknown** *(fileTypeUnknown)* - child of FileType
  ///
  /// The file type is not yet known.
  const FileTypeUnknown();
  
  /// Parse from a json
  factory FileTypeUnknown.fromJson(Map<String, dynamic> json) => const FileTypeUnknown();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeUnknown copyWith() => const FileTypeUnknown();

  static const String objectType = 'fileTypeUnknown';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeVideo** *(fileTypeVideo)* - child of FileType
///
/// The file is a video.
final class FileTypeVideo extends FileType {
  
  /// **FileTypeVideo** *(fileTypeVideo)* - child of FileType
  ///
  /// The file is a video.
  const FileTypeVideo();
  
  /// Parse from a json
  factory FileTypeVideo.fromJson(Map<String, dynamic> json) => const FileTypeVideo();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeVideo copyWith() => const FileTypeVideo();

  static const String objectType = 'fileTypeVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeVideoNote** *(fileTypeVideoNote)* - child of FileType
///
/// The file is a video note.
final class FileTypeVideoNote extends FileType {
  
  /// **FileTypeVideoNote** *(fileTypeVideoNote)* - child of FileType
  ///
  /// The file is a video note.
  const FileTypeVideoNote();
  
  /// Parse from a json
  factory FileTypeVideoNote.fromJson(Map<String, dynamic> json) => const FileTypeVideoNote();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeVideoNote copyWith() => const FileTypeVideoNote();

  static const String objectType = 'fileTypeVideoNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeVoiceNote** *(fileTypeVoiceNote)* - child of FileType
///
/// The file is a voice note.
final class FileTypeVoiceNote extends FileType {
  
  /// **FileTypeVoiceNote** *(fileTypeVoiceNote)* - child of FileType
  ///
  /// The file is a voice note.
  const FileTypeVoiceNote();
  
  /// Parse from a json
  factory FileTypeVoiceNote.fromJson(Map<String, dynamic> json) => const FileTypeVoiceNote();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeVoiceNote copyWith() => const FileTypeVoiceNote();

  static const String objectType = 'fileTypeVoiceNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FileTypeWallpaper** *(fileTypeWallpaper)* - child of FileType
///
/// The file is a wallpaper or a background pattern.
final class FileTypeWallpaper extends FileType {
  
  /// **FileTypeWallpaper** *(fileTypeWallpaper)* - child of FileType
  ///
  /// The file is a wallpaper or a background pattern.
  const FileTypeWallpaper();
  
  /// Parse from a json
  factory FileTypeWallpaper.fromJson(Map<String, dynamic> json) => const FileTypeWallpaper();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FileTypeWallpaper copyWith() => const FileTypeWallpaper();

  static const String objectType = 'fileTypeWallpaper';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
