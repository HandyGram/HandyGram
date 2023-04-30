part of '../tdapi.dart';

/// **FileType** *(fileType)* - parent
  ///
  /// Represents the type of a file.
class FileType extends TdObject {
  
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
      case FileTypeNone.constructor:
        return FileTypeNone.fromJson(json);
      case FileTypeAnimation.constructor:
        return FileTypeAnimation.fromJson(json);
      case FileTypeAudio.constructor:
        return FileTypeAudio.fromJson(json);
      case FileTypeDocument.constructor:
        return FileTypeDocument.fromJson(json);
      case FileTypeNotificationSound.constructor:
        return FileTypeNotificationSound.fromJson(json);
      case FileTypePhoto.constructor:
        return FileTypePhoto.fromJson(json);
      case FileTypeProfilePhoto.constructor:
        return FileTypeProfilePhoto.fromJson(json);
      case FileTypeSecret.constructor:
        return FileTypeSecret.fromJson(json);
      case FileTypeSecretThumbnail.constructor:
        return FileTypeSecretThumbnail.fromJson(json);
      case FileTypeSecure.constructor:
        return FileTypeSecure.fromJson(json);
      case FileTypeSticker.constructor:
        return FileTypeSticker.fromJson(json);
      case FileTypeThumbnail.constructor:
        return FileTypeThumbnail.fromJson(json);
      case FileTypeUnknown.constructor:
        return FileTypeUnknown.fromJson(json);
      case FileTypeVideo.constructor:
        return FileTypeVideo.fromJson(json);
      case FileTypeVideoNote.constructor:
        return FileTypeVideoNote.fromJson(json);
      case FileTypeVoiceNote.constructor:
        return FileTypeVoiceNote.fromJson(json);
      case FileTypeWallpaper.constructor:
        return FileTypeWallpaper.fromJson(json);
      default:
        return const FileType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  FileType copyWith() => const FileType();

  static const String constructor = 'fileType';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeNone** *(fileTypeNone)* - child of FileType
  ///
  /// The data is not a file.
class FileTypeNone extends FileType {
  
  /// **FileTypeNone** *(fileTypeNone)* - child of FileType
  ///
  /// The data is not a file.
  const FileTypeNone();
  
  /// Parse from a json
  factory FileTypeNone.fromJson(Map<String, dynamic> json) => const FileTypeNone();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeNone copyWith() => const FileTypeNone();

  static const String constructor = 'fileTypeNone';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeAnimation** *(fileTypeAnimation)* - child of FileType
  ///
  /// The file is an animation.
class FileTypeAnimation extends FileType {
  
  /// **FileTypeAnimation** *(fileTypeAnimation)* - child of FileType
  ///
  /// The file is an animation.
  const FileTypeAnimation();
  
  /// Parse from a json
  factory FileTypeAnimation.fromJson(Map<String, dynamic> json) => const FileTypeAnimation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeAnimation copyWith() => const FileTypeAnimation();

  static const String constructor = 'fileTypeAnimation';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeAudio** *(fileTypeAudio)* - child of FileType
  ///
  /// The file is an audio file.
class FileTypeAudio extends FileType {
  
  /// **FileTypeAudio** *(fileTypeAudio)* - child of FileType
  ///
  /// The file is an audio file.
  const FileTypeAudio();
  
  /// Parse from a json
  factory FileTypeAudio.fromJson(Map<String, dynamic> json) => const FileTypeAudio();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeAudio copyWith() => const FileTypeAudio();

  static const String constructor = 'fileTypeAudio';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeDocument** *(fileTypeDocument)* - child of FileType
  ///
  /// The file is a document.
class FileTypeDocument extends FileType {
  
  /// **FileTypeDocument** *(fileTypeDocument)* - child of FileType
  ///
  /// The file is a document.
  const FileTypeDocument();
  
  /// Parse from a json
  factory FileTypeDocument.fromJson(Map<String, dynamic> json) => const FileTypeDocument();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeDocument copyWith() => const FileTypeDocument();

  static const String constructor = 'fileTypeDocument';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeNotificationSound** *(fileTypeNotificationSound)* - child of FileType
  ///
  /// The file is a notification sound.
class FileTypeNotificationSound extends FileType {
  
  /// **FileTypeNotificationSound** *(fileTypeNotificationSound)* - child of FileType
  ///
  /// The file is a notification sound.
  const FileTypeNotificationSound();
  
  /// Parse from a json
  factory FileTypeNotificationSound.fromJson(Map<String, dynamic> json) => const FileTypeNotificationSound();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeNotificationSound copyWith() => const FileTypeNotificationSound();

  static const String constructor = 'fileTypeNotificationSound';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypePhoto** *(fileTypePhoto)* - child of FileType
  ///
  /// The file is a photo.
class FileTypePhoto extends FileType {
  
  /// **FileTypePhoto** *(fileTypePhoto)* - child of FileType
  ///
  /// The file is a photo.
  const FileTypePhoto();
  
  /// Parse from a json
  factory FileTypePhoto.fromJson(Map<String, dynamic> json) => const FileTypePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypePhoto copyWith() => const FileTypePhoto();

  static const String constructor = 'fileTypePhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeProfilePhoto** *(fileTypeProfilePhoto)* - child of FileType
  ///
  /// The file is a profile photo.
class FileTypeProfilePhoto extends FileType {
  
  /// **FileTypeProfilePhoto** *(fileTypeProfilePhoto)* - child of FileType
  ///
  /// The file is a profile photo.
  const FileTypeProfilePhoto();
  
  /// Parse from a json
  factory FileTypeProfilePhoto.fromJson(Map<String, dynamic> json) => const FileTypeProfilePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeProfilePhoto copyWith() => const FileTypeProfilePhoto();

  static const String constructor = 'fileTypeProfilePhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeSecret** *(fileTypeSecret)* - child of FileType
  ///
  /// The file was sent to a secret chat (the file type is not known to the server).
class FileTypeSecret extends FileType {
  
  /// **FileTypeSecret** *(fileTypeSecret)* - child of FileType
  ///
  /// The file was sent to a secret chat (the file type is not known to the server).
  const FileTypeSecret();
  
  /// Parse from a json
  factory FileTypeSecret.fromJson(Map<String, dynamic> json) => const FileTypeSecret();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeSecret copyWith() => const FileTypeSecret();

  static const String constructor = 'fileTypeSecret';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeSecretThumbnail** *(fileTypeSecretThumbnail)* - child of FileType
  ///
  /// The file is a thumbnail of a file from a secret chat.
class FileTypeSecretThumbnail extends FileType {
  
  /// **FileTypeSecretThumbnail** *(fileTypeSecretThumbnail)* - child of FileType
  ///
  /// The file is a thumbnail of a file from a secret chat.
  const FileTypeSecretThumbnail();
  
  /// Parse from a json
  factory FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json) => const FileTypeSecretThumbnail();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeSecretThumbnail copyWith() => const FileTypeSecretThumbnail();

  static const String constructor = 'fileTypeSecretThumbnail';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeSecure** *(fileTypeSecure)* - child of FileType
  ///
  /// The file is a file from Secure storage used for storing Telegram Passport files.
class FileTypeSecure extends FileType {
  
  /// **FileTypeSecure** *(fileTypeSecure)* - child of FileType
  ///
  /// The file is a file from Secure storage used for storing Telegram Passport files.
  const FileTypeSecure();
  
  /// Parse from a json
  factory FileTypeSecure.fromJson(Map<String, dynamic> json) => const FileTypeSecure();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeSecure copyWith() => const FileTypeSecure();

  static const String constructor = 'fileTypeSecure';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeSticker** *(fileTypeSticker)* - child of FileType
  ///
  /// The file is a sticker.
class FileTypeSticker extends FileType {
  
  /// **FileTypeSticker** *(fileTypeSticker)* - child of FileType
  ///
  /// The file is a sticker.
  const FileTypeSticker();
  
  /// Parse from a json
  factory FileTypeSticker.fromJson(Map<String, dynamic> json) => const FileTypeSticker();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeSticker copyWith() => const FileTypeSticker();

  static const String constructor = 'fileTypeSticker';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeThumbnail** *(fileTypeThumbnail)* - child of FileType
  ///
  /// The file is a thumbnail of another file.
class FileTypeThumbnail extends FileType {
  
  /// **FileTypeThumbnail** *(fileTypeThumbnail)* - child of FileType
  ///
  /// The file is a thumbnail of another file.
  const FileTypeThumbnail();
  
  /// Parse from a json
  factory FileTypeThumbnail.fromJson(Map<String, dynamic> json) => const FileTypeThumbnail();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeThumbnail copyWith() => const FileTypeThumbnail();

  static const String constructor = 'fileTypeThumbnail';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeUnknown** *(fileTypeUnknown)* - child of FileType
  ///
  /// The file type is not yet known.
class FileTypeUnknown extends FileType {
  
  /// **FileTypeUnknown** *(fileTypeUnknown)* - child of FileType
  ///
  /// The file type is not yet known.
  const FileTypeUnknown();
  
  /// Parse from a json
  factory FileTypeUnknown.fromJson(Map<String, dynamic> json) => const FileTypeUnknown();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeUnknown copyWith() => const FileTypeUnknown();

  static const String constructor = 'fileTypeUnknown';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeVideo** *(fileTypeVideo)* - child of FileType
  ///
  /// The file is a video.
class FileTypeVideo extends FileType {
  
  /// **FileTypeVideo** *(fileTypeVideo)* - child of FileType
  ///
  /// The file is a video.
  const FileTypeVideo();
  
  /// Parse from a json
  factory FileTypeVideo.fromJson(Map<String, dynamic> json) => const FileTypeVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeVideo copyWith() => const FileTypeVideo();

  static const String constructor = 'fileTypeVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeVideoNote** *(fileTypeVideoNote)* - child of FileType
  ///
  /// The file is a video note.
class FileTypeVideoNote extends FileType {
  
  /// **FileTypeVideoNote** *(fileTypeVideoNote)* - child of FileType
  ///
  /// The file is a video note.
  const FileTypeVideoNote();
  
  /// Parse from a json
  factory FileTypeVideoNote.fromJson(Map<String, dynamic> json) => const FileTypeVideoNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeVideoNote copyWith() => const FileTypeVideoNote();

  static const String constructor = 'fileTypeVideoNote';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeVoiceNote** *(fileTypeVoiceNote)* - child of FileType
  ///
  /// The file is a voice note.
class FileTypeVoiceNote extends FileType {
  
  /// **FileTypeVoiceNote** *(fileTypeVoiceNote)* - child of FileType
  ///
  /// The file is a voice note.
  const FileTypeVoiceNote();
  
  /// Parse from a json
  factory FileTypeVoiceNote.fromJson(Map<String, dynamic> json) => const FileTypeVoiceNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeVoiceNote copyWith() => const FileTypeVoiceNote();

  static const String constructor = 'fileTypeVoiceNote';
  
  @override
  String getConstructor() => constructor;
}


/// **FileTypeWallpaper** *(fileTypeWallpaper)* - child of FileType
  ///
  /// The file is a wallpaper or a background pattern.
class FileTypeWallpaper extends FileType {
  
  /// **FileTypeWallpaper** *(fileTypeWallpaper)* - child of FileType
  ///
  /// The file is a wallpaper or a background pattern.
  const FileTypeWallpaper();
  
  /// Parse from a json
  factory FileTypeWallpaper.fromJson(Map<String, dynamic> json) => const FileTypeWallpaper();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  FileTypeWallpaper copyWith() => const FileTypeWallpaper();

  static const String constructor = 'fileTypeWallpaper';
  
  @override
  String getConstructor() => constructor;
}
