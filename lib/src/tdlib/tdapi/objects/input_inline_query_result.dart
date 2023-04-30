part of '../tdapi.dart';

/// **InputInlineQueryResult** *(inputInlineQueryResult)* - parent
  ///
  /// Represents a single result of an inline query; for bots only.
class InputInlineQueryResult extends TdObject {
  
  /// **InputInlineQueryResult** *(inputInlineQueryResult)* - parent
  ///
  /// Represents a single result of an inline query; for bots only.
  const InputInlineQueryResult();
  
  /// a InputInlineQueryResult return type can be :
  /// * [InputInlineQueryResultAnimation]
  /// * [InputInlineQueryResultArticle]
  /// * [InputInlineQueryResultAudio]
  /// * [InputInlineQueryResultContact]
  /// * [InputInlineQueryResultDocument]
  /// * [InputInlineQueryResultGame]
  /// * [InputInlineQueryResultLocation]
  /// * [InputInlineQueryResultPhoto]
  /// * [InputInlineQueryResultSticker]
  /// * [InputInlineQueryResultVenue]
  /// * [InputInlineQueryResultVideo]
  /// * [InputInlineQueryResultVoiceNote]
  factory InputInlineQueryResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputInlineQueryResultAnimation.constructor:
        return InputInlineQueryResultAnimation.fromJson(json);
      case InputInlineQueryResultArticle.constructor:
        return InputInlineQueryResultArticle.fromJson(json);
      case InputInlineQueryResultAudio.constructor:
        return InputInlineQueryResultAudio.fromJson(json);
      case InputInlineQueryResultContact.constructor:
        return InputInlineQueryResultContact.fromJson(json);
      case InputInlineQueryResultDocument.constructor:
        return InputInlineQueryResultDocument.fromJson(json);
      case InputInlineQueryResultGame.constructor:
        return InputInlineQueryResultGame.fromJson(json);
      case InputInlineQueryResultLocation.constructor:
        return InputInlineQueryResultLocation.fromJson(json);
      case InputInlineQueryResultPhoto.constructor:
        return InputInlineQueryResultPhoto.fromJson(json);
      case InputInlineQueryResultSticker.constructor:
        return InputInlineQueryResultSticker.fromJson(json);
      case InputInlineQueryResultVenue.constructor:
        return InputInlineQueryResultVenue.fromJson(json);
      case InputInlineQueryResultVideo.constructor:
        return InputInlineQueryResultVideo.fromJson(json);
      case InputInlineQueryResultVoiceNote.constructor:
        return InputInlineQueryResultVoiceNote.fromJson(json);
      default:
        return const InputInlineQueryResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputInlineQueryResult copyWith() => const InputInlineQueryResult();

  static const String constructor = 'inputInlineQueryResult';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultAnimation** *(inputInlineQueryResultAnimation)* - child of InputInlineQueryResult
  ///
  /// Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the query result.
  /// * [thumbnailUrl]: URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists.
  /// * [thumbnailMimeType]: MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4".
  /// * [videoUrl]: The URL of the video file (file size must not exceed 1MB).
  /// * [videoMimeType]: MIME type of the video file. Must be one of "image/gif" and "video/mp4".
  /// * [videoDuration]: Duration of the video, in seconds.
  /// * [videoWidth]: Width of the video.
  /// * [videoHeight]: Height of the video.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultAnimation** *(inputInlineQueryResultAnimation)* - child of InputInlineQueryResult
  ///
  /// Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the query result.
  /// * [thumbnailUrl]: URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists.
  /// * [thumbnailMimeType]: MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4".
  /// * [videoUrl]: The URL of the video file (file size must not exceed 1MB).
  /// * [videoMimeType]: MIME type of the video file. Must be one of "image/gif" and "video/mp4".
  /// * [videoDuration]: Duration of the video, in seconds.
  /// * [videoWidth]: Width of the video.
  /// * [videoHeight]: Height of the video.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultAnimation({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailMimeType,
    required this.videoUrl,
    required this.videoMimeType,
    required this.videoDuration,
    required this.videoWidth,
    required this.videoHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Title of the query result
  final String title;

  /// URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists
  final String thumbnailUrl;

  /// MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4"
  final String thumbnailMimeType;

  /// The URL of the video file (file size must not exceed 1MB)
  final String videoUrl;

  /// MIME type of the video file. Must be one of "image/gif" and "video/mp4"
  final String videoMimeType;

  /// Duration of the video, in seconds
  final int videoDuration;

  /// Width of the video
  final int videoWidth;

  /// Height of the video
  final int videoHeight;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultAnimation.fromJson(Map<String, dynamic> json) => InputInlineQueryResultAnimation(
    id: json['id'],
    title: json['title'],
    thumbnailUrl: json['thumbnail_url'],
    thumbnailMimeType: json['thumbnail_mime_type'],
    videoUrl: json['video_url'],
    videoMimeType: json['video_mime_type'],
    videoDuration: json['video_duration'],
    videoWidth: json['video_width'],
    videoHeight: json['video_height'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "title": title,
      "thumbnail_url": thumbnailUrl,
      "thumbnail_mime_type": thumbnailMimeType,
      "video_url": videoUrl,
      "video_mime_type": videoMimeType,
      "video_duration": videoDuration,
      "video_width": videoWidth,
      "video_height": videoHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultAnimation copyWith({
    String? id,
    String? title,
    String? thumbnailUrl,
    String? thumbnailMimeType,
    String? videoUrl,
    String? videoMimeType,
    int? videoDuration,
    int? videoWidth,
    int? videoHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultAnimation(
    id: id ?? this.id,
    title: title ?? this.title,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    thumbnailMimeType: thumbnailMimeType ?? this.thumbnailMimeType,
    videoUrl: videoUrl ?? this.videoUrl,
    videoMimeType: videoMimeType ?? this.videoMimeType,
    videoDuration: videoDuration ?? this.videoDuration,
    videoWidth: videoWidth ?? this.videoWidth,
    videoHeight: videoHeight ?? this.videoHeight,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultAnimation';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultArticle** *(inputInlineQueryResultArticle)* - child of InputInlineQueryResult
  ///
  /// Represents a link to an article or web page.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [url]: URL of the result, if it exists.
  /// * [hideUrl]: True, if the URL must be not shown.
  /// * [title]: Title of the result.
  /// * [description]: A short description of the result.
  /// * [thumbnailUrl]: URL of the result thumbnail, if it exists.
  /// * [thumbnailWidth]: Thumbnail width, if known.
  /// * [thumbnailHeight]: Thumbnail height, if known.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultArticle extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultArticle** *(inputInlineQueryResultArticle)* - child of InputInlineQueryResult
  ///
  /// Represents a link to an article or web page.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [url]: URL of the result, if it exists.
  /// * [hideUrl]: True, if the URL must be not shown.
  /// * [title]: Title of the result.
  /// * [description]: A short description of the result.
  /// * [thumbnailUrl]: URL of the result thumbnail, if it exists.
  /// * [thumbnailWidth]: Thumbnail width, if known.
  /// * [thumbnailHeight]: Thumbnail height, if known.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.hideUrl,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// URL of the result, if it exists
  final String url;

  /// True, if the URL must be not shown
  final bool hideUrl;

  /// Title of the result
  final String title;

  /// A short description of the result
  final String description;

  /// URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// Thumbnail width, if known
  final int thumbnailWidth;

  /// Thumbnail height, if known
  final int thumbnailHeight;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultArticle.fromJson(Map<String, dynamic> json) => InputInlineQueryResultArticle(
    id: json['id'],
    url: json['url'],
    hideUrl: json['hide_url'],
    title: json['title'],
    description: json['description'],
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "url": url,
      "hide_url": hideUrl,
      "title": title,
      "description": description,
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultArticle copyWith({
    String? id,
    String? url,
    bool? hideUrl,
    String? title,
    String? description,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultArticle(
    id: id ?? this.id,
    url: url ?? this.url,
    hideUrl: hideUrl ?? this.hideUrl,
    title: title ?? this.title,
    description: description ?? this.description,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
    thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultArticle';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultAudio** *(inputInlineQueryResultAudio)* - child of InputInlineQueryResult
  ///
  /// Represents a link to an MP3 audio file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the audio file.
  /// * [performer]: Performer of the audio file.
  /// * [audioUrl]: The URL of the audio file.
  /// * [audioDuration]: Audio file duration, in seconds.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAudio, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultAudio extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultAudio** *(inputInlineQueryResultAudio)* - child of InputInlineQueryResult
  ///
  /// Represents a link to an MP3 audio file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the audio file.
  /// * [performer]: Performer of the audio file.
  /// * [audioUrl]: The URL of the audio file.
  /// * [audioDuration]: Audio file duration, in seconds.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAudio, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultAudio({
    required this.id,
    required this.title,
    required this.performer,
    required this.audioUrl,
    required this.audioDuration,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Title of the audio file
  final String title;

  /// Performer of the audio file
  final String performer;

  /// The URL of the audio file
  final String audioUrl;

  /// Audio file duration, in seconds
  final int audioDuration;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAudio, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultAudio.fromJson(Map<String, dynamic> json) => InputInlineQueryResultAudio(
    id: json['id'],
    title: json['title'],
    performer: json['performer'],
    audioUrl: json['audio_url'],
    audioDuration: json['audio_duration'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "title": title,
      "performer": performer,
      "audio_url": audioUrl,
      "audio_duration": audioDuration,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultAudio copyWith({
    String? id,
    String? title,
    String? performer,
    String? audioUrl,
    int? audioDuration,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultAudio(
    id: id ?? this.id,
    title: title ?? this.title,
    performer: performer ?? this.performer,
    audioUrl: audioUrl ?? this.audioUrl,
    audioDuration: audioDuration ?? this.audioDuration,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultAudio';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultContact** *(inputInlineQueryResultContact)* - child of InputInlineQueryResult
  ///
  /// Represents a user contact.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [contact]: User contact.
  /// * [thumbnailUrl]: URL of the result thumbnail, if it exists.
  /// * [thumbnailWidth]: Thumbnail width, if known.
  /// * [thumbnailHeight]: Thumbnail height, if known.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultContact extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultContact** *(inputInlineQueryResultContact)* - child of InputInlineQueryResult
  ///
  /// Represents a user contact.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [contact]: User contact.
  /// * [thumbnailUrl]: URL of the result thumbnail, if it exists.
  /// * [thumbnailWidth]: Thumbnail width, if known.
  /// * [thumbnailHeight]: Thumbnail height, if known.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultContact({
    required this.id,
    required this.contact,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// User contact
  final Contact contact;

  /// URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// Thumbnail width, if known
  final int thumbnailWidth;

  /// Thumbnail height, if known
  final int thumbnailHeight;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultContact.fromJson(Map<String, dynamic> json) => InputInlineQueryResultContact(
    id: json['id'],
    contact: Contact.fromJson(json['contact']),
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "contact": contact.toJson(),
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultContact copyWith({
    String? id,
    Contact? contact,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultContact(
    id: id ?? this.id,
    contact: contact ?? this.contact,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
    thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultContact';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultDocument** *(inputInlineQueryResultDocument)* - child of InputInlineQueryResult
  ///
  /// Represents a link to a file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the resulting file.
  /// * [description]: Short description of the result, if known.
  /// * [documentUrl]: URL of the file.
  /// * [mimeType]: MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed.
  /// * [thumbnailUrl]: The URL of the file thumbnail, if it exists.
  /// * [thumbnailWidth]: Width of the thumbnail.
  /// * [thumbnailHeight]: Height of the thumbnail.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageDocument, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultDocument extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultDocument** *(inputInlineQueryResultDocument)* - child of InputInlineQueryResult
  ///
  /// Represents a link to a file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the resulting file.
  /// * [description]: Short description of the result, if known.
  /// * [documentUrl]: URL of the file.
  /// * [mimeType]: MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed.
  /// * [thumbnailUrl]: The URL of the file thumbnail, if it exists.
  /// * [thumbnailWidth]: Width of the thumbnail.
  /// * [thumbnailHeight]: Height of the thumbnail.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageDocument, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultDocument({
    required this.id,
    required this.title,
    required this.description,
    required this.documentUrl,
    required this.mimeType,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Title of the resulting file
  final String title;

  /// Short description of the result, if known
  final String description;

  /// URL of the file
  final String documentUrl;

  /// MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed
  final String mimeType;

  /// The URL of the file thumbnail, if it exists
  final String thumbnailUrl;

  /// Width of the thumbnail
  final int thumbnailWidth;

  /// Height of the thumbnail
  final int thumbnailHeight;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageDocument, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultDocument.fromJson(Map<String, dynamic> json) => InputInlineQueryResultDocument(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    documentUrl: json['document_url'],
    mimeType: json['mime_type'],
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "title": title,
      "description": description,
      "document_url": documentUrl,
      "mime_type": mimeType,
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultDocument copyWith({
    String? id,
    String? title,
    String? description,
    String? documentUrl,
    String? mimeType,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultDocument(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    documentUrl: documentUrl ?? this.documentUrl,
    mimeType: mimeType ?? this.mimeType,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
    thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultDocument';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultGame** *(inputInlineQueryResultGame)* - child of InputInlineQueryResult
  ///
  /// Represents a game.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [gameShortName]: Short name of the game.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
class InputInlineQueryResultGame extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultGame** *(inputInlineQueryResultGame)* - child of InputInlineQueryResult
  ///
  /// Represents a game.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [gameShortName]: Short name of the game.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  const InputInlineQueryResultGame({
    required this.id,
    required this.gameShortName,
    this.replyMarkup,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Short name of the game
  final String gameShortName;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;
  
  /// Parse from a json
  factory InputInlineQueryResultGame.fromJson(Map<String, dynamic> json) => InputInlineQueryResultGame(
    id: json['id'],
    gameShortName: json['game_short_name'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "game_short_name": gameShortName,
      "reply_markup": replyMarkup?.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultGame copyWith({
    String? id,
    String? gameShortName,
    ReplyMarkup? replyMarkup,
  }) => InputInlineQueryResultGame(
    id: id ?? this.id,
    gameShortName: gameShortName ?? this.gameShortName,
    replyMarkup: replyMarkup ?? this.replyMarkup,
  );

  static const String constructor = 'inputInlineQueryResultGame';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultLocation** *(inputInlineQueryResultLocation)* - child of InputInlineQueryResult
  ///
  /// Represents a point on the map.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [location]: Location result.
  /// * [livePeriod]: Amount of time relative to the message sent time until the location can be updated, in seconds.
  /// * [title]: Title of the result.
  /// * [thumbnailUrl]: URL of the result thumbnail, if it exists.
  /// * [thumbnailWidth]: Thumbnail width, if known.
  /// * [thumbnailHeight]: Thumbnail height, if known.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultLocation extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultLocation** *(inputInlineQueryResultLocation)* - child of InputInlineQueryResult
  ///
  /// Represents a point on the map.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [location]: Location result.
  /// * [livePeriod]: Amount of time relative to the message sent time until the location can be updated, in seconds.
  /// * [title]: Title of the result.
  /// * [thumbnailUrl]: URL of the result thumbnail, if it exists.
  /// * [thumbnailWidth]: Thumbnail width, if known.
  /// * [thumbnailHeight]: Thumbnail height, if known.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultLocation({
    required this.id,
    required this.location,
    required this.livePeriod,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Location result
  final Location location;

  /// Amount of time relative to the message sent time until the location can be updated, in seconds
  final int livePeriod;

  /// Title of the result
  final String title;

  /// URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// Thumbnail width, if known
  final int thumbnailWidth;

  /// Thumbnail height, if known
  final int thumbnailHeight;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultLocation.fromJson(Map<String, dynamic> json) => InputInlineQueryResultLocation(
    id: json['id'],
    location: Location.fromJson(json['location']),
    livePeriod: json['live_period'],
    title: json['title'],
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "location": location.toJson(),
      "live_period": livePeriod,
      "title": title,
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultLocation copyWith({
    String? id,
    Location? location,
    int? livePeriod,
    String? title,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultLocation(
    id: id ?? this.id,
    location: location ?? this.location,
    livePeriod: livePeriod ?? this.livePeriod,
    title: title ?? this.title,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
    thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultLocation';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultPhoto** *(inputInlineQueryResultPhoto)* - child of InputInlineQueryResult
  ///
  /// Represents link to a JPEG image.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the result, if known.
  /// * [description]: A short description of the result, if known.
  /// * [thumbnailUrl]: URL of the photo thumbnail, if it exists.
  /// * [photoUrl]: The URL of the JPEG photo (photo size must not exceed 5MB).
  /// * [photoWidth]: Width of the photo.
  /// * [photoHeight]: Height of the photo.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessagePhoto, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultPhoto** *(inputInlineQueryResultPhoto)* - child of InputInlineQueryResult
  ///
  /// Represents link to a JPEG image.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the result, if known.
  /// * [description]: A short description of the result, if known.
  /// * [thumbnailUrl]: URL of the photo thumbnail, if it exists.
  /// * [photoUrl]: The URL of the JPEG photo (photo size must not exceed 5MB).
  /// * [photoWidth]: Width of the photo.
  /// * [photoHeight]: Height of the photo.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessagePhoto, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultPhoto({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.photoUrl,
    required this.photoWidth,
    required this.photoHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Title of the result, if known
  final String title;

  /// A short description of the result, if known
  final String description;

  /// URL of the photo thumbnail, if it exists
  final String thumbnailUrl;

  /// The URL of the JPEG photo (photo size must not exceed 5MB)
  final String photoUrl;

  /// Width of the photo
  final int photoWidth;

  /// Height of the photo
  final int photoHeight;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessagePhoto, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultPhoto.fromJson(Map<String, dynamic> json) => InputInlineQueryResultPhoto(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    thumbnailUrl: json['thumbnail_url'],
    photoUrl: json['photo_url'],
    photoWidth: json['photo_width'],
    photoHeight: json['photo_height'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "title": title,
      "description": description,
      "thumbnail_url": thumbnailUrl,
      "photo_url": photoUrl,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultPhoto copyWith({
    String? id,
    String? title,
    String? description,
    String? thumbnailUrl,
    String? photoUrl,
    int? photoWidth,
    int? photoHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultPhoto(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    photoUrl: photoUrl ?? this.photoUrl,
    photoWidth: photoWidth ?? this.photoWidth,
    photoHeight: photoHeight ?? this.photoHeight,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultPhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultSticker** *(inputInlineQueryResultSticker)* - child of InputInlineQueryResult
  ///
  /// Represents a link to a WEBP, TGS, or WEBM sticker.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [thumbnailUrl]: URL of the sticker thumbnail, if it exists.
  /// * [stickerUrl]: The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not exceed 5MB).
  /// * [stickerWidth]: Width of the sticker.
  /// * [stickerHeight]: Height of the sticker.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageSticker, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultSticker extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultSticker** *(inputInlineQueryResultSticker)* - child of InputInlineQueryResult
  ///
  /// Represents a link to a WEBP, TGS, or WEBM sticker.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [thumbnailUrl]: URL of the sticker thumbnail, if it exists.
  /// * [stickerUrl]: The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not exceed 5MB).
  /// * [stickerWidth]: Width of the sticker.
  /// * [stickerHeight]: Height of the sticker.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageSticker, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultSticker({
    required this.id,
    required this.thumbnailUrl,
    required this.stickerUrl,
    required this.stickerWidth,
    required this.stickerHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// URL of the sticker thumbnail, if it exists
  final String thumbnailUrl;

  /// The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not exceed 5MB)
  final String stickerUrl;

  /// Width of the sticker
  final int stickerWidth;

  /// Height of the sticker
  final int stickerHeight;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageSticker, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultSticker.fromJson(Map<String, dynamic> json) => InputInlineQueryResultSticker(
    id: json['id'],
    thumbnailUrl: json['thumbnail_url'],
    stickerUrl: json['sticker_url'],
    stickerWidth: json['sticker_width'],
    stickerHeight: json['sticker_height'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "thumbnail_url": thumbnailUrl,
      "sticker_url": stickerUrl,
      "sticker_width": stickerWidth,
      "sticker_height": stickerHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultSticker copyWith({
    String? id,
    String? thumbnailUrl,
    String? stickerUrl,
    int? stickerWidth,
    int? stickerHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultSticker(
    id: id ?? this.id,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    stickerUrl: stickerUrl ?? this.stickerUrl,
    stickerWidth: stickerWidth ?? this.stickerWidth,
    stickerHeight: stickerHeight ?? this.stickerHeight,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultSticker';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultVenue** *(inputInlineQueryResultVenue)* - child of InputInlineQueryResult
  ///
  /// Represents information about a venue.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [venue]: Venue result.
  /// * [thumbnailUrl]: URL of the result thumbnail, if it exists.
  /// * [thumbnailWidth]: Thumbnail width, if known.
  /// * [thumbnailHeight]: Thumbnail height, if known.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultVenue extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultVenue** *(inputInlineQueryResultVenue)* - child of InputInlineQueryResult
  ///
  /// Represents information about a venue.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [venue]: Venue result.
  /// * [thumbnailUrl]: URL of the result thumbnail, if it exists.
  /// * [thumbnailWidth]: Thumbnail width, if known.
  /// * [thumbnailHeight]: Thumbnail height, if known.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultVenue({
    required this.id,
    required this.venue,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Venue result
  final Venue venue;

  /// URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// Thumbnail width, if known
  final int thumbnailWidth;

  /// Thumbnail height, if known
  final int thumbnailHeight;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultVenue.fromJson(Map<String, dynamic> json) => InputInlineQueryResultVenue(
    id: json['id'],
    venue: Venue.fromJson(json['venue']),
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "venue": venue.toJson(),
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultVenue copyWith({
    String? id,
    Venue? venue,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultVenue(
    id: id ?? this.id,
    venue: venue ?? this.venue,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
    thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultVenue';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultVideo** *(inputInlineQueryResultVideo)* - child of InputInlineQueryResult
  ///
  /// Represents a link to a page containing an embedded video player or a video file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the result.
  /// * [description]: A short description of the result, if known.
  /// * [thumbnailUrl]: The URL of the video thumbnail (JPEG), if it exists.
  /// * [videoUrl]: URL of the embedded video player or video file.
  /// * [mimeType]: MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported.
  /// * [videoWidth]: Width of the video.
  /// * [videoHeight]: Height of the video.
  /// * [videoDuration]: Video duration, in seconds.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVideo, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultVideo extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultVideo** *(inputInlineQueryResultVideo)* - child of InputInlineQueryResult
  ///
  /// Represents a link to a page containing an embedded video player or a video file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the result.
  /// * [description]: A short description of the result, if known.
  /// * [thumbnailUrl]: The URL of the video thumbnail (JPEG), if it exists.
  /// * [videoUrl]: URL of the embedded video player or video file.
  /// * [mimeType]: MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported.
  /// * [videoWidth]: Width of the video.
  /// * [videoHeight]: Height of the video.
  /// * [videoDuration]: Video duration, in seconds.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVideo, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultVideo({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.mimeType,
    required this.videoWidth,
    required this.videoHeight,
    required this.videoDuration,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Title of the result
  final String title;

  /// A short description of the result, if known
  final String description;

  /// The URL of the video thumbnail (JPEG), if it exists
  final String thumbnailUrl;

  /// URL of the embedded video player or video file
  final String videoUrl;

  /// MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported
  final String mimeType;

  /// Width of the video
  final int videoWidth;

  /// Height of the video
  final int videoHeight;

  /// Video duration, in seconds
  final int videoDuration;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVideo, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultVideo.fromJson(Map<String, dynamic> json) => InputInlineQueryResultVideo(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    thumbnailUrl: json['thumbnail_url'],
    videoUrl: json['video_url'],
    mimeType: json['mime_type'],
    videoWidth: json['video_width'],
    videoHeight: json['video_height'],
    videoDuration: json['video_duration'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "title": title,
      "description": description,
      "thumbnail_url": thumbnailUrl,
      "video_url": videoUrl,
      "mime_type": mimeType,
      "video_width": videoWidth,
      "video_height": videoHeight,
      "video_duration": videoDuration,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultVideo copyWith({
    String? id,
    String? title,
    String? description,
    String? thumbnailUrl,
    String? videoUrl,
    String? mimeType,
    int? videoWidth,
    int? videoHeight,
    int? videoDuration,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultVideo(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    videoUrl: videoUrl ?? this.videoUrl,
    mimeType: mimeType ?? this.mimeType,
    videoWidth: videoWidth ?? this.videoWidth,
    videoHeight: videoHeight ?? this.videoHeight,
    videoDuration: videoDuration ?? this.videoDuration,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInlineQueryResultVoiceNote** *(inputInlineQueryResultVoiceNote)* - child of InputInlineQueryResult
  ///
  /// Represents a link to an opus-encoded audio file within an OGG container, single channel audio.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the voice note.
  /// * [voiceNoteUrl]: The URL of the voice note file.
  /// * [voiceNoteDuration]: Duration of the voice note, in seconds.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  
  /// **InputInlineQueryResultVoiceNote** *(inputInlineQueryResultVoiceNote)* - child of InputInlineQueryResult
  ///
  /// Represents a link to an opus-encoded audio file within an OGG container, single channel audio.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [title]: Title of the voice note.
  /// * [voiceNoteUrl]: The URL of the voice note file.
  /// * [voiceNoteDuration]: Duration of the voice note, in seconds.
  /// * [replyMarkup]: The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null *(optional)*.
  /// * [inputMessageContent]: The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact.
  const InputInlineQueryResultVoiceNote({
    required this.id,
    required this.title,
    required this.voiceNoteUrl,
    required this.voiceNoteDuration,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Title of the voice note
  final String title;

  /// The URL of the voice note file
  final String voiceNoteUrl;

  /// Duration of the voice note, in seconds
  final int voiceNoteDuration;

  /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;
  
  /// Parse from a json
  factory InputInlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) => InputInlineQueryResultVoiceNote(
    id: json['id'],
    title: json['title'],
    voiceNoteUrl: json['voice_note_url'],
    voiceNoteDuration: json['voice_note_duration'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    inputMessageContent: InputMessageContent.fromJson(json['input_message_content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "title": title,
      "voice_note_url": voiceNoteUrl,
      "voice_note_duration": voiceNoteDuration,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }
  
  @override
  InputInlineQueryResultVoiceNote copyWith({
    String? id,
    String? title,
    String? voiceNoteUrl,
    int? voiceNoteDuration,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => InputInlineQueryResultVoiceNote(
    id: id ?? this.id,
    title: title ?? this.title,
    voiceNoteUrl: voiceNoteUrl ?? this.voiceNoteUrl,
    voiceNoteDuration: voiceNoteDuration ?? this.voiceNoteDuration,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String constructor = 'inputInlineQueryResultVoiceNote';
  
  @override
  String getConstructor() => constructor;
}
