part of '../tdapi.dart';

/// **InputMessageContent** *(inputMessageContent)* - parent
///
/// The content of a message to send.
sealed class InputMessageContent extends TdObject {
  
  /// **InputMessageContent** *(inputMessageContent)* - parent
  ///
  /// The content of a message to send.
  const InputMessageContent();
  
  /// a InputMessageContent return type can be :
  /// * [InputMessageText]
  /// * [InputMessageAnimation]
  /// * [InputMessageAudio]
  /// * [InputMessageDocument]
  /// * [InputMessagePhoto]
  /// * [InputMessageSticker]
  /// * [InputMessageVideo]
  /// * [InputMessageVideoNote]
  /// * [InputMessageVoiceNote]
  /// * [InputMessageLocation]
  /// * [InputMessageVenue]
  /// * [InputMessageContact]
  /// * [InputMessageDice]
  /// * [InputMessageGame]
  /// * [InputMessageInvoice]
  /// * [InputMessagePoll]
  /// * [InputMessageForwarded]
  factory InputMessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputMessageText.objectType:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.objectType:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.objectType:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.objectType:
        return InputMessageDocument.fromJson(json);
      case InputMessagePhoto.objectType:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.objectType:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.objectType:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.objectType:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.objectType:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.objectType:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.objectType:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.objectType:
        return InputMessageContact.fromJson(json);
      case InputMessageDice.objectType:
        return InputMessageDice.fromJson(json);
      case InputMessageGame.objectType:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.objectType:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.objectType:
        return InputMessagePoll.fromJson(json);
      case InputMessageForwarded.objectType:
        return InputMessageForwarded.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputMessageContent)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  InputMessageContent copyWith();

  static const String objectType = 'inputMessageContent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageText** *(inputMessageText)* - child of InputMessageContent
///
/// A text message.
///
/// * [text]: Formatted text to be sent; 1-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually.
/// * [disableWebPagePreview]: True, if rich web page previews for URLs in the message text must be disabled.
/// * [clearDraft]: True, if a chat message draft must be deleted.
final class InputMessageText extends InputMessageContent {
  
  /// **InputMessageText** *(inputMessageText)* - child of InputMessageContent
  ///
  /// A text message.
  ///
  /// * [text]: Formatted text to be sent; 1-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually.
  /// * [disableWebPagePreview]: True, if rich web page previews for URLs in the message text must be disabled.
  /// * [clearDraft]: True, if a chat message draft must be deleted.
  const InputMessageText({
    required this.text,
    required this.disableWebPagePreview,
    required this.clearDraft,
  });
  
  /// Formatted text to be sent; 1-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  final FormattedText text;

  /// True, if rich web page previews for URLs in the message text must be disabled
  final bool disableWebPagePreview;

  /// True, if a chat message draft must be deleted
  final bool clearDraft;
  
  /// Parse from a json
  factory InputMessageText.fromJson(Map<String, dynamic> json) => InputMessageText(
    text: FormattedText.fromJson(json['text']),
    disableWebPagePreview: json['disable_web_page_preview'],
    clearDraft: json['clear_draft'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "disable_web_page_preview": disableWebPagePreview,
      "clear_draft": clearDraft,
		};
	}

  
  @override
  InputMessageText copyWith({
    FormattedText? text,
    bool? disableWebPagePreview,
    bool? clearDraft,
  }) => InputMessageText(
    text: text ?? this.text,
    disableWebPagePreview: disableWebPagePreview ?? this.disableWebPagePreview,
    clearDraft: clearDraft ?? this.clearDraft,
  );

  static const String objectType = 'inputMessageText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageAnimation** *(inputMessageAnimation)* - child of InputMessageContent
///
/// An animation message (GIF-style).
///
/// * [animation]: Animation file to be sent.
/// * [thumbnail]: Animation thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [addedStickerFileIds]: File identifiers of the stickers added to the animation, if applicable.
/// * [duration]: Duration of the animation, in seconds.
/// * [width]: Width of the animation; may be replaced by the server.
/// * [height]: Height of the animation; may be replaced by the server.
/// * [caption]: Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
/// * [hasSpoiler]: True, if the animation preview must be covered by a spoiler animation; not supported in secret chats.
final class InputMessageAnimation extends InputMessageContent {
  
  /// **InputMessageAnimation** *(inputMessageAnimation)* - child of InputMessageContent
  ///
  /// An animation message (GIF-style).
  ///
  /// * [animation]: Animation file to be sent.
  /// * [thumbnail]: Animation thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [addedStickerFileIds]: File identifiers of the stickers added to the animation, if applicable.
  /// * [duration]: Duration of the animation, in seconds.
  /// * [width]: Width of the animation; may be replaced by the server.
  /// * [height]: Height of the animation; may be replaced by the server.
  /// * [caption]: Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  /// * [hasSpoiler]: True, if the animation preview must be covered by a spoiler animation; not supported in secret chats.
  const InputMessageAnimation({
    required this.animation,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    this.caption,
    required this.hasSpoiler,
  });
  
  /// Animation file to be sent
  final InputFile animation;

  /// Animation thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// File identifiers of the stickers added to the animation, if applicable
  final List<int> addedStickerFileIds;

  /// Duration of the animation, in seconds
  final int duration;

  /// Width of the animation; may be replaced by the server
  final int width;

  /// Height of the animation; may be replaced by the server
  final int height;

  /// Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// True, if the animation preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;
  
  /// Parse from a json
  factory InputMessageAnimation.fromJson(Map<String, dynamic> json) => InputMessageAnimation(
    animation: InputFile.fromJson(json['animation']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
    hasSpoiler: json['has_spoiler'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "animation": animation.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
      "has_spoiler": hasSpoiler,
		};
	}

  
  @override
  InputMessageAnimation copyWith({
    InputFile? animation,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? duration,
    int? width,
    int? height,
    FormattedText? caption,
    bool? hasSpoiler,
  }) => InputMessageAnimation(
    animation: animation ?? this.animation,
    thumbnail: thumbnail ?? this.thumbnail,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
  );

  static const String objectType = 'inputMessageAnimation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageAudio** *(inputMessageAudio)* - child of InputMessageContent
///
/// An audio message.
///
/// * [audio]: Audio file to be sent.
/// * [albumCoverThumbnail]: Thumbnail of the cover for the album; pass null to skip thumbnail uploading *(optional)*.
/// * [duration]: Duration of the audio, in seconds; may be replaced by the server.
/// * [title]: Title of the audio; 0-64 characters; may be replaced by the server.
/// * [performer]: Performer of the audio; 0-64 characters, may be replaced by the server.
/// * [caption]: Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
final class InputMessageAudio extends InputMessageContent {
  
  /// **InputMessageAudio** *(inputMessageAudio)* - child of InputMessageContent
  ///
  /// An audio message.
  ///
  /// * [audio]: Audio file to be sent.
  /// * [albumCoverThumbnail]: Thumbnail of the cover for the album; pass null to skip thumbnail uploading *(optional)*.
  /// * [duration]: Duration of the audio, in seconds; may be replaced by the server.
  /// * [title]: Title of the audio; 0-64 characters; may be replaced by the server.
  /// * [performer]: Performer of the audio; 0-64 characters, may be replaced by the server.
  /// * [caption]: Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  const InputMessageAudio({
    required this.audio,
    this.albumCoverThumbnail,
    required this.duration,
    required this.title,
    required this.performer,
    this.caption,
  });
  
  /// Audio file to be sent
  final InputFile audio;

  /// Thumbnail of the cover for the album; pass null to skip thumbnail uploading
  final InputThumbnail? albumCoverThumbnail;

  /// Duration of the audio, in seconds; may be replaced by the server
  final int duration;

  /// Title of the audio; 0-64 characters; may be replaced by the server
  final String title;

  /// Performer of the audio; 0-64 characters, may be replaced by the server
  final String performer;

  /// Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;
  
  /// Parse from a json
  factory InputMessageAudio.fromJson(Map<String, dynamic> json) => InputMessageAudio(
    audio: InputFile.fromJson(json['audio']),
    albumCoverThumbnail: json['album_cover_thumbnail'] == null ? null : InputThumbnail.fromJson(json['album_cover_thumbnail']),
    duration: json['duration'],
    title: json['title'],
    performer: json['performer'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "audio": audio.toJson(),
      "album_cover_thumbnail": albumCoverThumbnail?.toJson(),
      "duration": duration,
      "title": title,
      "performer": performer,
      "caption": caption?.toJson(),
		};
	}

  
  @override
  InputMessageAudio copyWith({
    InputFile? audio,
    InputThumbnail? albumCoverThumbnail,
    int? duration,
    String? title,
    String? performer,
    FormattedText? caption,
  }) => InputMessageAudio(
    audio: audio ?? this.audio,
    albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
    duration: duration ?? this.duration,
    title: title ?? this.title,
    performer: performer ?? this.performer,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'inputMessageAudio';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageDocument** *(inputMessageDocument)* - child of InputMessageContent
///
/// A document message (general file).
///
/// * [document]: Document to be sent.
/// * [thumbnail]: Document thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [disableContentTypeDetection]: If true, automatic file type detection will be disabled and the document will always be sent as file. Always true for files sent to secret chats.
/// * [caption]: Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
final class InputMessageDocument extends InputMessageContent {
  
  /// **InputMessageDocument** *(inputMessageDocument)* - child of InputMessageContent
  ///
  /// A document message (general file).
  ///
  /// * [document]: Document to be sent.
  /// * [thumbnail]: Document thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [disableContentTypeDetection]: If true, automatic file type detection will be disabled and the document will always be sent as file. Always true for files sent to secret chats.
  /// * [caption]: Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  const InputMessageDocument({
    required this.document,
    this.thumbnail,
    required this.disableContentTypeDetection,
    this.caption,
  });
  
  /// Document to be sent
  final InputFile document;

  /// Document thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// If true, automatic file type detection will be disabled and the document will always be sent as file. Always true for files sent to secret chats
  final bool disableContentTypeDetection;

  /// Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;
  
  /// Parse from a json
  factory InputMessageDocument.fromJson(Map<String, dynamic> json) => InputMessageDocument(
    document: InputFile.fromJson(json['document']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    disableContentTypeDetection: json['disable_content_type_detection'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "document": document.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "disable_content_type_detection": disableContentTypeDetection,
      "caption": caption?.toJson(),
		};
	}

  
  @override
  InputMessageDocument copyWith({
    InputFile? document,
    InputThumbnail? thumbnail,
    bool? disableContentTypeDetection,
    FormattedText? caption,
  }) => InputMessageDocument(
    document: document ?? this.document,
    thumbnail: thumbnail ?? this.thumbnail,
    disableContentTypeDetection: disableContentTypeDetection ?? this.disableContentTypeDetection,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'inputMessageDocument';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessagePhoto** *(inputMessagePhoto)* - child of InputMessageContent
///
/// A photo message.
///
/// * [photo]: Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20.
/// * [thumbnail]: Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats *(optional)*.
/// * [addedStickerFileIds]: File identifiers of the stickers added to the photo, if applicable.
/// * [width]: Photo width.
/// * [height]: Photo height.
/// * [caption]: Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
/// * [selfDestructTime]: Photo self-destruct time, in seconds (0-60). A non-zero self-destruct time can be specified only in private chats.
/// * [hasSpoiler]: True, if the photo preview must be covered by a spoiler animation; not supported in secret chats.
final class InputMessagePhoto extends InputMessageContent {
  
  /// **InputMessagePhoto** *(inputMessagePhoto)* - child of InputMessageContent
  ///
  /// A photo message.
  ///
  /// * [photo]: Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20.
  /// * [thumbnail]: Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats *(optional)*.
  /// * [addedStickerFileIds]: File identifiers of the stickers added to the photo, if applicable.
  /// * [width]: Photo width.
  /// * [height]: Photo height.
  /// * [caption]: Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  /// * [selfDestructTime]: Photo self-destruct time, in seconds (0-60). A non-zero self-destruct time can be specified only in private chats.
  /// * [hasSpoiler]: True, if the photo preview must be covered by a spoiler animation; not supported in secret chats.
  const InputMessagePhoto({
    required this.photo,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
    this.caption,
    required this.selfDestructTime,
    required this.hasSpoiler,
  });
  
  /// Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
  final InputFile photo;

  /// Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats
  final InputThumbnail? thumbnail;

  /// File identifiers of the stickers added to the photo, if applicable
  final List<int> addedStickerFileIds;

  /// Photo width
  final int width;

  /// Photo height
  final int height;

  /// Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// Photo self-destruct time, in seconds (0-60). A non-zero self-destruct time can be specified only in private chats
  final int selfDestructTime;

  /// True, if the photo preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;
  
  /// Parse from a json
  factory InputMessagePhoto.fromJson(Map<String, dynamic> json) => InputMessagePhoto(
    photo: InputFile.fromJson(json['photo']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
    width: json['width'],
    height: json['height'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
    selfDestructTime: json['self_destruct_time'],
    hasSpoiler: json['has_spoiler'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "photo": photo.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
      "self_destruct_time": selfDestructTime,
      "has_spoiler": hasSpoiler,
		};
	}

  
  @override
  InputMessagePhoto copyWith({
    InputFile? photo,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? width,
    int? height,
    FormattedText? caption,
    int? selfDestructTime,
    bool? hasSpoiler,
  }) => InputMessagePhoto(
    photo: photo ?? this.photo,
    thumbnail: thumbnail ?? this.thumbnail,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
    selfDestructTime: selfDestructTime ?? this.selfDestructTime,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
  );

  static const String objectType = 'inputMessagePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageSticker** *(inputMessageSticker)* - child of InputMessageContent
///
/// A sticker message.
///
/// * [sticker]: Sticker to be sent.
/// * [thumbnail]: Sticker thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [width]: Sticker width.
/// * [height]: Sticker height.
/// * [emoji]: Emoji used to choose the sticker.
final class InputMessageSticker extends InputMessageContent {
  
  /// **InputMessageSticker** *(inputMessageSticker)* - child of InputMessageContent
  ///
  /// A sticker message.
  ///
  /// * [sticker]: Sticker to be sent.
  /// * [thumbnail]: Sticker thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [width]: Sticker width.
  /// * [height]: Sticker height.
  /// * [emoji]: Emoji used to choose the sticker.
  const InputMessageSticker({
    required this.sticker,
    this.thumbnail,
    required this.width,
    required this.height,
    required this.emoji,
  });
  
  /// Sticker to be sent
  final InputFile sticker;

  /// Sticker thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// Sticker width
  final int width;

  /// Sticker height
  final int height;

  /// Emoji used to choose the sticker
  final String emoji;
  
  /// Parse from a json
  factory InputMessageSticker.fromJson(Map<String, dynamic> json) => InputMessageSticker(
    sticker: InputFile.fromJson(json['sticker']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    width: json['width'],
    height: json['height'],
    emoji: json['emoji'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "width": width,
      "height": height,
      "emoji": emoji,
		};
	}

  
  @override
  InputMessageSticker copyWith({
    InputFile? sticker,
    InputThumbnail? thumbnail,
    int? width,
    int? height,
    String? emoji,
  }) => InputMessageSticker(
    sticker: sticker ?? this.sticker,
    thumbnail: thumbnail ?? this.thumbnail,
    width: width ?? this.width,
    height: height ?? this.height,
    emoji: emoji ?? this.emoji,
  );

  static const String objectType = 'inputMessageSticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageVideo** *(inputMessageVideo)* - child of InputMessageContent
///
/// A video message.
///
/// * [video]: Video to be sent.
/// * [thumbnail]: Video thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [addedStickerFileIds]: File identifiers of the stickers added to the video, if applicable.
/// * [duration]: Duration of the video, in seconds.
/// * [width]: Video width.
/// * [height]: Video height.
/// * [supportsStreaming]: True, if the video is supposed to be streamed.
/// * [caption]: Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
/// * [selfDestructTime]: Video self-destruct time, in seconds (0-60). A non-zero self-destruct time can be specified only in private chats.
/// * [hasSpoiler]: True, if the video preview must be covered by a spoiler animation; not supported in secret chats.
final class InputMessageVideo extends InputMessageContent {
  
  /// **InputMessageVideo** *(inputMessageVideo)* - child of InputMessageContent
  ///
  /// A video message.
  ///
  /// * [video]: Video to be sent.
  /// * [thumbnail]: Video thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [addedStickerFileIds]: File identifiers of the stickers added to the video, if applicable.
  /// * [duration]: Duration of the video, in seconds.
  /// * [width]: Video width.
  /// * [height]: Video height.
  /// * [supportsStreaming]: True, if the video is supposed to be streamed.
  /// * [caption]: Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  /// * [selfDestructTime]: Video self-destruct time, in seconds (0-60). A non-zero self-destruct time can be specified only in private chats.
  /// * [hasSpoiler]: True, if the video preview must be covered by a spoiler animation; not supported in secret chats.
  const InputMessageVideo({
    required this.video,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
    this.caption,
    required this.selfDestructTime,
    required this.hasSpoiler,
  });
  
  /// Video to be sent
  final InputFile video;

  /// Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// File identifiers of the stickers added to the video, if applicable
  final List<int> addedStickerFileIds;

  /// Duration of the video, in seconds
  final int duration;

  /// Video width
  final int width;

  /// Video height
  final int height;

  /// True, if the video is supposed to be streamed
  final bool supportsStreaming;

  /// Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// Video self-destruct time, in seconds (0-60). A non-zero self-destruct time can be specified only in private chats
  final int selfDestructTime;

  /// True, if the video preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;
  
  /// Parse from a json
  factory InputMessageVideo.fromJson(Map<String, dynamic> json) => InputMessageVideo(
    video: InputFile.fromJson(json['video']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    supportsStreaming: json['supports_streaming'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
    selfDestructTime: json['self_destruct_time'],
    hasSpoiler: json['has_spoiler'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "video": video.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "duration": duration,
      "width": width,
      "height": height,
      "supports_streaming": supportsStreaming,
      "caption": caption?.toJson(),
      "self_destruct_time": selfDestructTime,
      "has_spoiler": hasSpoiler,
		};
	}

  
  @override
  InputMessageVideo copyWith({
    InputFile? video,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? duration,
    int? width,
    int? height,
    bool? supportsStreaming,
    FormattedText? caption,
    int? selfDestructTime,
    bool? hasSpoiler,
  }) => InputMessageVideo(
    video: video ?? this.video,
    thumbnail: thumbnail ?? this.thumbnail,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
    supportsStreaming: supportsStreaming ?? this.supportsStreaming,
    caption: caption ?? this.caption,
    selfDestructTime: selfDestructTime ?? this.selfDestructTime,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
  );

  static const String objectType = 'inputMessageVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageVideoNote** *(inputMessageVideoNote)* - child of InputMessageContent
///
/// A video note message.
///
/// * [videoNote]: Video note to be sent.
/// * [thumbnail]: Video thumbnail; pass null to skip thumbnail uploading *(optional)*.
/// * [duration]: Duration of the video, in seconds.
/// * [length]: Video width and height; must be positive and not greater than 640.
final class InputMessageVideoNote extends InputMessageContent {
  
  /// **InputMessageVideoNote** *(inputMessageVideoNote)* - child of InputMessageContent
  ///
  /// A video note message.
  ///
  /// * [videoNote]: Video note to be sent.
  /// * [thumbnail]: Video thumbnail; pass null to skip thumbnail uploading *(optional)*.
  /// * [duration]: Duration of the video, in seconds.
  /// * [length]: Video width and height; must be positive and not greater than 640.
  const InputMessageVideoNote({
    required this.videoNote,
    this.thumbnail,
    required this.duration,
    required this.length,
  });
  
  /// Video note to be sent
  final InputFile videoNote;

  /// Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// Duration of the video, in seconds
  final int duration;

  /// Video width and height; must be positive and not greater than 640
  final int length;
  
  /// Parse from a json
  factory InputMessageVideoNote.fromJson(Map<String, dynamic> json) => InputMessageVideoNote(
    videoNote: InputFile.fromJson(json['video_note']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    duration: json['duration'],
    length: json['length'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "video_note": videoNote.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "duration": duration,
      "length": length,
		};
	}

  
  @override
  InputMessageVideoNote copyWith({
    InputFile? videoNote,
    InputThumbnail? thumbnail,
    int? duration,
    int? length,
  }) => InputMessageVideoNote(
    videoNote: videoNote ?? this.videoNote,
    thumbnail: thumbnail ?? this.thumbnail,
    duration: duration ?? this.duration,
    length: length ?? this.length,
  );

  static const String objectType = 'inputMessageVideoNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageVoiceNote** *(inputMessageVoiceNote)* - child of InputMessageContent
///
/// A voice note message.
///
/// * [voiceNote]: Voice note to be sent.
/// * [duration]: Duration of the voice note, in seconds.
/// * [waveform]: Waveform representation of the voice note in 5-bit format.
/// * [caption]: Voice note caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
final class InputMessageVoiceNote extends InputMessageContent {
  
  /// **InputMessageVoiceNote** *(inputMessageVoiceNote)* - child of InputMessageContent
  ///
  /// A voice note message.
  ///
  /// * [voiceNote]: Voice note to be sent.
  /// * [duration]: Duration of the voice note, in seconds.
  /// * [waveform]: Waveform representation of the voice note in 5-bit format.
  /// * [caption]: Voice note caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters *(optional)*.
  const InputMessageVoiceNote({
    required this.voiceNote,
    required this.duration,
    required this.waveform,
    this.caption,
  });
  
  /// Voice note to be sent
  final InputFile voiceNote;

  /// Duration of the voice note, in seconds
  final int duration;

  /// Waveform representation of the voice note in 5-bit format
  final String waveform;

  /// Voice note caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;
  
  /// Parse from a json
  factory InputMessageVoiceNote.fromJson(Map<String, dynamic> json) => InputMessageVoiceNote(
    voiceNote: InputFile.fromJson(json['voice_note']),
    duration: json['duration'],
    waveform: json['waveform'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "voice_note": voiceNote.toJson(),
      "duration": duration,
      "waveform": waveform,
      "caption": caption?.toJson(),
		};
	}

  
  @override
  InputMessageVoiceNote copyWith({
    InputFile? voiceNote,
    int? duration,
    String? waveform,
    FormattedText? caption,
  }) => InputMessageVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    duration: duration ?? this.duration,
    waveform: waveform ?? this.waveform,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'inputMessageVoiceNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageLocation** *(inputMessageLocation)* - child of InputMessageContent
///
/// A message with a location.
///
/// * [location]: Location to be sent.
/// * [livePeriod]: Period for which the location can be updated, in seconds; must be between 60 and 86400 for a live location and 0 otherwise.
/// * [heading]: For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown.
/// * [proximityAlertRadius]: For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages.
final class InputMessageLocation extends InputMessageContent {
  
  /// **InputMessageLocation** *(inputMessageLocation)* - child of InputMessageContent
  ///
  /// A message with a location.
  ///
  /// * [location]: Location to be sent.
  /// * [livePeriod]: Period for which the location can be updated, in seconds; must be between 60 and 86400 for a live location and 0 otherwise.
  /// * [heading]: For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown.
  /// * [proximityAlertRadius]: For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages.
  const InputMessageLocation({
    required this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });
  
  /// Location to be sent
  final Location location;

  /// Period for which the location can be updated, in seconds; must be between 60 and 86400 for a live location and 0 otherwise
  final int livePeriod;

  /// For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;

  /// For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  final int proximityAlertRadius;
  
  /// Parse from a json
  factory InputMessageLocation.fromJson(Map<String, dynamic> json) => InputMessageLocation(
    location: Location.fromJson(json['location']),
    livePeriod: json['live_period'],
    heading: json['heading'],
    proximityAlertRadius: json['proximity_alert_radius'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "location": location.toJson(),
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
		};
	}

  
  @override
  InputMessageLocation copyWith({
    Location? location,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) => InputMessageLocation(
    location: location ?? this.location,
    livePeriod: livePeriod ?? this.livePeriod,
    heading: heading ?? this.heading,
    proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
  );

  static const String objectType = 'inputMessageLocation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageVenue** *(inputMessageVenue)* - child of InputMessageContent
///
/// A message with information about a venue.
///
/// * [venue]: Venue to send.
final class InputMessageVenue extends InputMessageContent {
  
  /// **InputMessageVenue** *(inputMessageVenue)* - child of InputMessageContent
  ///
  /// A message with information about a venue.
  ///
  /// * [venue]: Venue to send.
  const InputMessageVenue({
    required this.venue,
  });
  
  /// Venue to send
  final Venue venue;
  
  /// Parse from a json
  factory InputMessageVenue.fromJson(Map<String, dynamic> json) => InputMessageVenue(
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
  InputMessageVenue copyWith({
    Venue? venue,
  }) => InputMessageVenue(
    venue: venue ?? this.venue,
  );

  static const String objectType = 'inputMessageVenue';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageContact** *(inputMessageContact)* - child of InputMessageContent
///
/// A message containing a user contact.
///
/// * [contact]: Contact to send.
final class InputMessageContact extends InputMessageContent {
  
  /// **InputMessageContact** *(inputMessageContact)* - child of InputMessageContent
  ///
  /// A message containing a user contact.
  ///
  /// * [contact]: Contact to send.
  const InputMessageContact({
    required this.contact,
  });
  
  /// Contact to send
  final Contact contact;
  
  /// Parse from a json
  factory InputMessageContact.fromJson(Map<String, dynamic> json) => InputMessageContact(
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
  InputMessageContact copyWith({
    Contact? contact,
  }) => InputMessageContact(
    contact: contact ?? this.contact,
  );

  static const String objectType = 'inputMessageContact';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageDice** *(inputMessageDice)* - child of InputMessageContent
///
/// A dice message.
///
/// * [emoji]: Emoji on which the dice throw animation is based.
/// * [clearDraft]: True, if the chat message draft must be deleted.
final class InputMessageDice extends InputMessageContent {
  
  /// **InputMessageDice** *(inputMessageDice)* - child of InputMessageContent
  ///
  /// A dice message.
  ///
  /// * [emoji]: Emoji on which the dice throw animation is based.
  /// * [clearDraft]: True, if the chat message draft must be deleted.
  const InputMessageDice({
    required this.emoji,
    required this.clearDraft,
  });
  
  /// Emoji on which the dice throw animation is based 
  final String emoji;

  /// True, if the chat message draft must be deleted
  final bool clearDraft;
  
  /// Parse from a json
  factory InputMessageDice.fromJson(Map<String, dynamic> json) => InputMessageDice(
    emoji: json['emoji'],
    clearDraft: json['clear_draft'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "emoji": emoji,
      "clear_draft": clearDraft,
		};
	}

  
  @override
  InputMessageDice copyWith({
    String? emoji,
    bool? clearDraft,
  }) => InputMessageDice(
    emoji: emoji ?? this.emoji,
    clearDraft: clearDraft ?? this.clearDraft,
  );

  static const String objectType = 'inputMessageDice';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageGame** *(inputMessageGame)* - child of InputMessageContent
///
/// A message with a game; not supported for channels or secret chats.
///
/// * [botUserId]: User identifier of the bot that owns the game.
/// * [gameShortName]: Short name of the game.
final class InputMessageGame extends InputMessageContent {
  
  /// **InputMessageGame** *(inputMessageGame)* - child of InputMessageContent
  ///
  /// A message with a game; not supported for channels or secret chats.
  ///
  /// * [botUserId]: User identifier of the bot that owns the game.
  /// * [gameShortName]: Short name of the game.
  const InputMessageGame({
    required this.botUserId,
    required this.gameShortName,
  });
  
  /// User identifier of the bot that owns the game 
  final int botUserId;

  /// Short name of the game
  final String gameShortName;
  
  /// Parse from a json
  factory InputMessageGame.fromJson(Map<String, dynamic> json) => InputMessageGame(
    botUserId: json['bot_user_id'],
    gameShortName: json['game_short_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "game_short_name": gameShortName,
		};
	}

  
  @override
  InputMessageGame copyWith({
    int? botUserId,
    String? gameShortName,
  }) => InputMessageGame(
    botUserId: botUserId ?? this.botUserId,
    gameShortName: gameShortName ?? this.gameShortName,
  );

  static const String objectType = 'inputMessageGame';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageInvoice** *(inputMessageInvoice)* - child of InputMessageContent
///
/// A message with an invoice; can be used only by bots.
///
/// * [invoice]: Invoice.
/// * [title]: Product title; 1-32 characters.
/// * [description]: Product description; 0-255 characters.
/// * [photoUrl]: Product photo URL; optional.
/// * [photoSize]: Product photo size.
/// * [photoWidth]: Product photo width.
/// * [photoHeight]: Product photo height.
/// * [payload]: The invoice payload.
/// * [providerToken]: Payment provider token.
/// * [providerData]: JSON-encoded data about the invoice, which will be shared with the payment provider.
/// * [startParameter]: Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message.
/// * [extendedMediaContent]: The content of extended media attached to the invoice. The content of the message to be sent. Must be one of the following types: inputMessagePhoto, inputMessageVideo.
final class InputMessageInvoice extends InputMessageContent {
  
  /// **InputMessageInvoice** *(inputMessageInvoice)* - child of InputMessageContent
  ///
  /// A message with an invoice; can be used only by bots.
  ///
  /// * [invoice]: Invoice.
  /// * [title]: Product title; 1-32 characters.
  /// * [description]: Product description; 0-255 characters.
  /// * [photoUrl]: Product photo URL; optional.
  /// * [photoSize]: Product photo size.
  /// * [photoWidth]: Product photo width.
  /// * [photoHeight]: Product photo height.
  /// * [payload]: The invoice payload.
  /// * [providerToken]: Payment provider token.
  /// * [providerData]: JSON-encoded data about the invoice, which will be shared with the payment provider.
  /// * [startParameter]: Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message.
  /// * [extendedMediaContent]: The content of extended media attached to the invoice. The content of the message to be sent. Must be one of the following types: inputMessagePhoto, inputMessageVideo.
  const InputMessageInvoice({
    required this.invoice,
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.photoSize,
    required this.photoWidth,
    required this.photoHeight,
    required this.payload,
    required this.providerToken,
    required this.providerData,
    required this.startParameter,
    required this.extendedMediaContent,
  });
  
  /// Invoice
  final Invoice invoice;

  /// Product title; 1-32 characters
  final String title;

  /// Product description; 0-255 characters
  final String description;

  /// Product photo URL; optional
  final String photoUrl;

  /// Product photo size
  final int photoSize;

  /// Product photo width
  final int photoWidth;

  /// Product photo height
  final int photoHeight;

  /// The invoice payload
  final String payload;

  /// Payment provider token
  final String providerToken;

  /// JSON-encoded data about the invoice, which will be shared with the payment provider
  final String providerData;

  /// Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message
  final String startParameter;

  /// The content of extended media attached to the invoice. The content of the message to be sent. Must be one of the following types: inputMessagePhoto, inputMessageVideo
  final InputMessageContent extendedMediaContent;
  
  /// Parse from a json
  factory InputMessageInvoice.fromJson(Map<String, dynamic> json) => InputMessageInvoice(
    invoice: Invoice.fromJson(json['invoice']),
    title: json['title'],
    description: json['description'],
    photoUrl: json['photo_url'],
    photoSize: json['photo_size'],
    photoWidth: json['photo_width'],
    photoHeight: json['photo_height'],
    payload: json['payload'],
    providerToken: json['provider_token'],
    providerData: json['provider_data'],
    startParameter: json['start_parameter'],
    extendedMediaContent: InputMessageContent.fromJson(json['extended_media_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invoice": invoice.toJson(),
      "title": title,
      "description": description,
      "photo_url": photoUrl,
      "photo_size": photoSize,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "payload": payload,
      "provider_token": providerToken,
      "provider_data": providerData,
      "start_parameter": startParameter,
      "extended_media_content": extendedMediaContent.toJson(),
		};
	}

  
  @override
  InputMessageInvoice copyWith({
    Invoice? invoice,
    String? title,
    String? description,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    String? payload,
    String? providerToken,
    String? providerData,
    String? startParameter,
    InputMessageContent? extendedMediaContent,
  }) => InputMessageInvoice(
    invoice: invoice ?? this.invoice,
    title: title ?? this.title,
    description: description ?? this.description,
    photoUrl: photoUrl ?? this.photoUrl,
    photoSize: photoSize ?? this.photoSize,
    photoWidth: photoWidth ?? this.photoWidth,
    photoHeight: photoHeight ?? this.photoHeight,
    payload: payload ?? this.payload,
    providerToken: providerToken ?? this.providerToken,
    providerData: providerData ?? this.providerData,
    startParameter: startParameter ?? this.startParameter,
    extendedMediaContent: extendedMediaContent ?? this.extendedMediaContent,
  );

  static const String objectType = 'inputMessageInvoice';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessagePoll** *(inputMessagePoll)* - child of InputMessageContent
///
/// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot.
///
/// * [question]: Poll question; 1-255 characters (up to 300 characters for bots).
/// * [options]: List of poll answer options, 2-10 strings 1-100 characters each.
/// * [isAnonymous]: True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels.
/// * [type]: Type of the poll.
/// * [openPeriod]: Amount of time the poll will be active after creation, in seconds; for bots only.
/// * [closeDate]: Point in time (Unix timestamp) when the poll will automatically be closed; for bots only.
/// * [isClosed]: True, if the poll needs to be sent already closed; for bots only.
final class InputMessagePoll extends InputMessageContent {
  
  /// **InputMessagePoll** *(inputMessagePoll)* - child of InputMessageContent
  ///
  /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot.
  ///
  /// * [question]: Poll question; 1-255 characters (up to 300 characters for bots).
  /// * [options]: List of poll answer options, 2-10 strings 1-100 characters each.
  /// * [isAnonymous]: True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels.
  /// * [type]: Type of the poll.
  /// * [openPeriod]: Amount of time the poll will be active after creation, in seconds; for bots only.
  /// * [closeDate]: Point in time (Unix timestamp) when the poll will automatically be closed; for bots only.
  /// * [isClosed]: True, if the poll needs to be sent already closed; for bots only.
  const InputMessagePoll({
    required this.question,
    required this.options,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });
  
  /// Poll question; 1-255 characters (up to 300 characters for bots)
  final String question;

  /// List of poll answer options, 2-10 strings 1-100 characters each
  final List<String> options;

  /// True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  final bool isAnonymous;

  /// Type of the poll
  final PollType type;

  /// Amount of time the poll will be active after creation, in seconds; for bots only
  final int openPeriod;

  /// Point in time (Unix timestamp) when the poll will automatically be closed; for bots only
  final int closeDate;

  /// True, if the poll needs to be sent already closed; for bots only
  final bool isClosed;
  
  /// Parse from a json
  factory InputMessagePoll.fromJson(Map<String, dynamic> json) => InputMessagePoll(
    question: json['question'],
    options: List<String>.from((json['options'] ?? []).map((item) => item).toList()),
    isAnonymous: json['is_anonymous'],
    type: PollType.fromJson(json['type']),
    openPeriod: json['open_period'],
    closeDate: json['close_date'],
    isClosed: json['is_closed'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "question": question,
      "options": options.map((i) => i).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
		};
	}

  
  @override
  InputMessagePoll copyWith({
    String? question,
    List<String>? options,
    bool? isAnonymous,
    PollType? type,
    int? openPeriod,
    int? closeDate,
    bool? isClosed,
  }) => InputMessagePoll(
    question: question ?? this.question,
    options: options ?? this.options,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    type: type ?? this.type,
    openPeriod: openPeriod ?? this.openPeriod,
    closeDate: closeDate ?? this.closeDate,
    isClosed: isClosed ?? this.isClosed,
  );

  static const String objectType = 'inputMessagePoll';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputMessageForwarded** *(inputMessageForwarded)* - child of InputMessageContent
///
/// A forwarded message.
///
/// * [fromChatId]: Identifier for the chat this forwarded message came from.
/// * [messageId]: Identifier of the message to forward.
/// * [inGameShare]: True, if a game message is being shared from a launched game; applies only to game messages.
/// * [copyOptions]: Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual *(optional)*.
final class InputMessageForwarded extends InputMessageContent {
  
  /// **InputMessageForwarded** *(inputMessageForwarded)* - child of InputMessageContent
  ///
  /// A forwarded message.
  ///
  /// * [fromChatId]: Identifier for the chat this forwarded message came from.
  /// * [messageId]: Identifier of the message to forward.
  /// * [inGameShare]: True, if a game message is being shared from a launched game; applies only to game messages.
  /// * [copyOptions]: Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual *(optional)*.
  const InputMessageForwarded({
    required this.fromChatId,
    required this.messageId,
    required this.inGameShare,
    this.copyOptions,
  });
  
  /// Identifier for the chat this forwarded message came from
  final int fromChatId;

  /// Identifier of the message to forward
  final int messageId;

  /// True, if a game message is being shared from a launched game; applies only to game messages
  final bool inGameShare;

  /// Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual
  final MessageCopyOptions? copyOptions;
  
  /// Parse from a json
  factory InputMessageForwarded.fromJson(Map<String, dynamic> json) => InputMessageForwarded(
    fromChatId: json['from_chat_id'],
    messageId: json['message_id'],
    inGameShare: json['in_game_share'],
    copyOptions: json['copy_options'] == null ? null : MessageCopyOptions.fromJson(json['copy_options']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "from_chat_id": fromChatId,
      "message_id": messageId,
      "in_game_share": inGameShare,
      "copy_options": copyOptions?.toJson(),
		};
	}

  
  @override
  InputMessageForwarded copyWith({
    int? fromChatId,
    int? messageId,
    bool? inGameShare,
    MessageCopyOptions? copyOptions,
  }) => InputMessageForwarded(
    fromChatId: fromChatId ?? this.fromChatId,
    messageId: messageId ?? this.messageId,
    inGameShare: inGameShare ?? this.inGameShare,
    copyOptions: copyOptions ?? this.copyOptions,
  );

  static const String objectType = 'inputMessageForwarded';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
