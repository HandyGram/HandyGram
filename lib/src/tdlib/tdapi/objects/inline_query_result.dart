part of '../tdapi.dart';

/// **InlineQueryResult** *(inlineQueryResult)* - parent
  ///
  /// Represents a single result of an inline query.
class InlineQueryResult extends TdObject {
  
  /// **InlineQueryResult** *(inlineQueryResult)* - parent
  ///
  /// Represents a single result of an inline query.
  const InlineQueryResult();
  
  /// a InlineQueryResult return type can be :
  /// * [InlineQueryResultArticle]
  /// * [InlineQueryResultContact]
  /// * [InlineQueryResultLocation]
  /// * [InlineQueryResultVenue]
  /// * [InlineQueryResultGame]
  /// * [InlineQueryResultAnimation]
  /// * [InlineQueryResultAudio]
  /// * [InlineQueryResultDocument]
  /// * [InlineQueryResultPhoto]
  /// * [InlineQueryResultSticker]
  /// * [InlineQueryResultVideo]
  /// * [InlineQueryResultVoiceNote]
  factory InlineQueryResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InlineQueryResultArticle.constructor:
        return InlineQueryResultArticle.fromJson(json);
      case InlineQueryResultContact.constructor:
        return InlineQueryResultContact.fromJson(json);
      case InlineQueryResultLocation.constructor:
        return InlineQueryResultLocation.fromJson(json);
      case InlineQueryResultVenue.constructor:
        return InlineQueryResultVenue.fromJson(json);
      case InlineQueryResultGame.constructor:
        return InlineQueryResultGame.fromJson(json);
      case InlineQueryResultAnimation.constructor:
        return InlineQueryResultAnimation.fromJson(json);
      case InlineQueryResultAudio.constructor:
        return InlineQueryResultAudio.fromJson(json);
      case InlineQueryResultDocument.constructor:
        return InlineQueryResultDocument.fromJson(json);
      case InlineQueryResultPhoto.constructor:
        return InlineQueryResultPhoto.fromJson(json);
      case InlineQueryResultSticker.constructor:
        return InlineQueryResultSticker.fromJson(json);
      case InlineQueryResultVideo.constructor:
        return InlineQueryResultVideo.fromJson(json);
      case InlineQueryResultVoiceNote.constructor:
        return InlineQueryResultVoiceNote.fromJson(json);
      default:
        return const InlineQueryResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InlineQueryResult copyWith() => const InlineQueryResult();

  static const String constructor = 'inlineQueryResult';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultArticle** *(inlineQueryResultArticle)* - child of InlineQueryResult
  ///
  /// Represents a link to an article or web page.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [url]: URL of the result, if it exists.
  /// * [hideUrl]: True, if the URL must be not shown.
  /// * [title]: Title of the result.
  /// * [description]: A short description of the result.
  /// * [thumbnail]: Result thumbnail in JPEG format; may be null *(optional)*.
class InlineQueryResultArticle extends InlineQueryResult {
  
  /// **InlineQueryResultArticle** *(inlineQueryResultArticle)* - child of InlineQueryResult
  ///
  /// Represents a link to an article or web page.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [url]: URL of the result, if it exists.
  /// * [hideUrl]: True, if the URL must be not shown.
  /// * [title]: Title of the result.
  /// * [description]: A short description of the result.
  /// * [thumbnail]: Result thumbnail in JPEG format; may be null *(optional)*.
  const InlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.hideUrl,
    required this.title,
    required this.description,
    this.thumbnail,
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

  /// Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;
  
  /// Parse from a json
  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) => InlineQueryResultArticle(
    id: json['id'],
    url: json['url'],
    hideUrl: json['hide_url'],
    title: json['title'],
    description: json['description'],
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
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
      "thumbnail": thumbnail?.toJson(),
    };
  }
  
  @override
  InlineQueryResultArticle copyWith({
    String? id,
    String? url,
    bool? hideUrl,
    String? title,
    String? description,
    Thumbnail? thumbnail,
  }) => InlineQueryResultArticle(
    id: id ?? this.id,
    url: url ?? this.url,
    hideUrl: hideUrl ?? this.hideUrl,
    title: title ?? this.title,
    description: description ?? this.description,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const String constructor = 'inlineQueryResultArticle';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultContact** *(inlineQueryResultContact)* - child of InlineQueryResult
  ///
  /// Represents a user contact.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [contact]: A user contact.
  /// * [thumbnail]: Result thumbnail in JPEG format; may be null *(optional)*.
class InlineQueryResultContact extends InlineQueryResult {
  
  /// **InlineQueryResultContact** *(inlineQueryResultContact)* - child of InlineQueryResult
  ///
  /// Represents a user contact.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [contact]: A user contact.
  /// * [thumbnail]: Result thumbnail in JPEG format; may be null *(optional)*.
  const InlineQueryResultContact({
    required this.id,
    required this.contact,
    this.thumbnail,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// A user contact
  final Contact contact;

  /// Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;
  
  /// Parse from a json
  factory InlineQueryResultContact.fromJson(Map<String, dynamic> json) => InlineQueryResultContact(
    id: json['id'],
    contact: Contact.fromJson(json['contact']),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "contact": contact.toJson(),
      "thumbnail": thumbnail?.toJson(),
    };
  }
  
  @override
  InlineQueryResultContact copyWith({
    String? id,
    Contact? contact,
    Thumbnail? thumbnail,
  }) => InlineQueryResultContact(
    id: id ?? this.id,
    contact: contact ?? this.contact,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const String constructor = 'inlineQueryResultContact';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultLocation** *(inlineQueryResultLocation)* - child of InlineQueryResult
  ///
  /// Represents a point on the map.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [location]: Location result.
  /// * [title]: Title of the result.
  /// * [thumbnail]: Result thumbnail in JPEG format; may be null *(optional)*.
class InlineQueryResultLocation extends InlineQueryResult {
  
  /// **InlineQueryResultLocation** *(inlineQueryResultLocation)* - child of InlineQueryResult
  ///
  /// Represents a point on the map.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [location]: Location result.
  /// * [title]: Title of the result.
  /// * [thumbnail]: Result thumbnail in JPEG format; may be null *(optional)*.
  const InlineQueryResultLocation({
    required this.id,
    required this.location,
    required this.title,
    this.thumbnail,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Location result
  final Location location;

  /// Title of the result
  final String title;

  /// Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;
  
  /// Parse from a json
  factory InlineQueryResultLocation.fromJson(Map<String, dynamic> json) => InlineQueryResultLocation(
    id: json['id'],
    location: Location.fromJson(json['location']),
    title: json['title'],
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "location": location.toJson(),
      "title": title,
      "thumbnail": thumbnail?.toJson(),
    };
  }
  
  @override
  InlineQueryResultLocation copyWith({
    String? id,
    Location? location,
    String? title,
    Thumbnail? thumbnail,
  }) => InlineQueryResultLocation(
    id: id ?? this.id,
    location: location ?? this.location,
    title: title ?? this.title,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const String constructor = 'inlineQueryResultLocation';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultVenue** *(inlineQueryResultVenue)* - child of InlineQueryResult
  ///
  /// Represents information about a venue.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [venue]: Venue result.
  /// * [thumbnail]: Result thumbnail in JPEG format; may be null *(optional)*.
class InlineQueryResultVenue extends InlineQueryResult {
  
  /// **InlineQueryResultVenue** *(inlineQueryResultVenue)* - child of InlineQueryResult
  ///
  /// Represents information about a venue.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [venue]: Venue result.
  /// * [thumbnail]: Result thumbnail in JPEG format; may be null *(optional)*.
  const InlineQueryResultVenue({
    required this.id,
    required this.venue,
    this.thumbnail,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Venue result
  final Venue venue;

  /// Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;
  
  /// Parse from a json
  factory InlineQueryResultVenue.fromJson(Map<String, dynamic> json) => InlineQueryResultVenue(
    id: json['id'],
    venue: Venue.fromJson(json['venue']),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "venue": venue.toJson(),
      "thumbnail": thumbnail?.toJson(),
    };
  }
  
  @override
  InlineQueryResultVenue copyWith({
    String? id,
    Venue? venue,
    Thumbnail? thumbnail,
  }) => InlineQueryResultVenue(
    id: id ?? this.id,
    venue: venue ?? this.venue,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const String constructor = 'inlineQueryResultVenue';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultGame** *(inlineQueryResultGame)* - child of InlineQueryResult
  ///
  /// Represents information about a game.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [game]: Game result.
class InlineQueryResultGame extends InlineQueryResult {
  
  /// **InlineQueryResultGame** *(inlineQueryResultGame)* - child of InlineQueryResult
  ///
  /// Represents information about a game.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [game]: Game result.
  const InlineQueryResultGame({
    required this.id,
    required this.game,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Game result
  final Game game;
  
  /// Parse from a json
  factory InlineQueryResultGame.fromJson(Map<String, dynamic> json) => InlineQueryResultGame(
    id: json['id'],
    game: Game.fromJson(json['game']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "game": game.toJson(),
    };
  }
  
  @override
  InlineQueryResultGame copyWith({
    String? id,
    Game? game,
  }) => InlineQueryResultGame(
    id: id ?? this.id,
    game: game ?? this.game,
  );

  static const String constructor = 'inlineQueryResultGame';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultAnimation** *(inlineQueryResultAnimation)* - child of InlineQueryResult
  ///
  /// Represents an animation file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [animation]: Animation file.
  /// * [title]: Animation title.
class InlineQueryResultAnimation extends InlineQueryResult {
  
  /// **InlineQueryResultAnimation** *(inlineQueryResultAnimation)* - child of InlineQueryResult
  ///
  /// Represents an animation file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [animation]: Animation file.
  /// * [title]: Animation title.
  const InlineQueryResultAnimation({
    required this.id,
    required this.animation,
    required this.title,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Animation file
  final Animation animation;

  /// Animation title
  final String title;
  
  /// Parse from a json
  factory InlineQueryResultAnimation.fromJson(Map<String, dynamic> json) => InlineQueryResultAnimation(
    id: json['id'],
    animation: Animation.fromJson(json['animation']),
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "animation": animation.toJson(),
      "title": title,
    };
  }
  
  @override
  InlineQueryResultAnimation copyWith({
    String? id,
    Animation? animation,
    String? title,
  }) => InlineQueryResultAnimation(
    id: id ?? this.id,
    animation: animation ?? this.animation,
    title: title ?? this.title,
  );

  static const String constructor = 'inlineQueryResultAnimation';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultAudio** *(inlineQueryResultAudio)* - child of InlineQueryResult
  ///
  /// Represents an audio file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [audio]: Audio file.
class InlineQueryResultAudio extends InlineQueryResult {
  
  /// **InlineQueryResultAudio** *(inlineQueryResultAudio)* - child of InlineQueryResult
  ///
  /// Represents an audio file.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [audio]: Audio file.
  const InlineQueryResultAudio({
    required this.id,
    required this.audio,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Audio file
  final Audio audio;
  
  /// Parse from a json
  factory InlineQueryResultAudio.fromJson(Map<String, dynamic> json) => InlineQueryResultAudio(
    id: json['id'],
    audio: Audio.fromJson(json['audio']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "audio": audio.toJson(),
    };
  }
  
  @override
  InlineQueryResultAudio copyWith({
    String? id,
    Audio? audio,
  }) => InlineQueryResultAudio(
    id: id ?? this.id,
    audio: audio ?? this.audio,
  );

  static const String constructor = 'inlineQueryResultAudio';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultDocument** *(inlineQueryResultDocument)* - child of InlineQueryResult
  ///
  /// Represents a document.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [document]: Document.
  /// * [title]: Document title.
  /// * [description]: Document description.
class InlineQueryResultDocument extends InlineQueryResult {
  
  /// **InlineQueryResultDocument** *(inlineQueryResultDocument)* - child of InlineQueryResult
  ///
  /// Represents a document.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [document]: Document.
  /// * [title]: Document title.
  /// * [description]: Document description.
  const InlineQueryResultDocument({
    required this.id,
    required this.document,
    required this.title,
    required this.description,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Document
  final Document document;

  /// Document title
  final String title;

  /// Document description
  final String description;
  
  /// Parse from a json
  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) => InlineQueryResultDocument(
    id: json['id'],
    document: Document.fromJson(json['document']),
    title: json['title'],
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "document": document.toJson(),
      "title": title,
      "description": description,
    };
  }
  
  @override
  InlineQueryResultDocument copyWith({
    String? id,
    Document? document,
    String? title,
    String? description,
  }) => InlineQueryResultDocument(
    id: id ?? this.id,
    document: document ?? this.document,
    title: title ?? this.title,
    description: description ?? this.description,
  );

  static const String constructor = 'inlineQueryResultDocument';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultPhoto** *(inlineQueryResultPhoto)* - child of InlineQueryResult
  ///
  /// Represents a photo.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [photo]: Photo.
  /// * [title]: Title of the result, if known.
  /// * [description]: A short description of the result, if known.
class InlineQueryResultPhoto extends InlineQueryResult {
  
  /// **InlineQueryResultPhoto** *(inlineQueryResultPhoto)* - child of InlineQueryResult
  ///
  /// Represents a photo.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [photo]: Photo.
  /// * [title]: Title of the result, if known.
  /// * [description]: A short description of the result, if known.
  const InlineQueryResultPhoto({
    required this.id,
    required this.photo,
    required this.title,
    required this.description,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Photo
  final Photo photo;

  /// Title of the result, if known
  final String title;

  /// A short description of the result, if known
  final String description;
  
  /// Parse from a json
  factory InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) => InlineQueryResultPhoto(
    id: json['id'],
    photo: Photo.fromJson(json['photo']),
    title: json['title'],
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "photo": photo.toJson(),
      "title": title,
      "description": description,
    };
  }
  
  @override
  InlineQueryResultPhoto copyWith({
    String? id,
    Photo? photo,
    String? title,
    String? description,
  }) => InlineQueryResultPhoto(
    id: id ?? this.id,
    photo: photo ?? this.photo,
    title: title ?? this.title,
    description: description ?? this.description,
  );

  static const String constructor = 'inlineQueryResultPhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultSticker** *(inlineQueryResultSticker)* - child of InlineQueryResult
  ///
  /// Represents a sticker.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [sticker]: Sticker.
class InlineQueryResultSticker extends InlineQueryResult {
  
  /// **InlineQueryResultSticker** *(inlineQueryResultSticker)* - child of InlineQueryResult
  ///
  /// Represents a sticker.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [sticker]: Sticker.
  const InlineQueryResultSticker({
    required this.id,
    required this.sticker,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Sticker
  final Sticker sticker;
  
  /// Parse from a json
  factory InlineQueryResultSticker.fromJson(Map<String, dynamic> json) => InlineQueryResultSticker(
    id: json['id'],
    sticker: Sticker.fromJson(json['sticker']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "sticker": sticker.toJson(),
    };
  }
  
  @override
  InlineQueryResultSticker copyWith({
    String? id,
    Sticker? sticker,
  }) => InlineQueryResultSticker(
    id: id ?? this.id,
    sticker: sticker ?? this.sticker,
  );

  static const String constructor = 'inlineQueryResultSticker';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultVideo** *(inlineQueryResultVideo)* - child of InlineQueryResult
  ///
  /// Represents a video.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [video]: Video.
  /// * [title]: Title of the video.
  /// * [description]: Description of the video.
class InlineQueryResultVideo extends InlineQueryResult {
  
  /// **InlineQueryResultVideo** *(inlineQueryResultVideo)* - child of InlineQueryResult
  ///
  /// Represents a video.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [video]: Video.
  /// * [title]: Title of the video.
  /// * [description]: Description of the video.
  const InlineQueryResultVideo({
    required this.id,
    required this.video,
    required this.title,
    required this.description,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Video
  final Video video;

  /// Title of the video
  final String title;

  /// Description of the video
  final String description;
  
  /// Parse from a json
  factory InlineQueryResultVideo.fromJson(Map<String, dynamic> json) => InlineQueryResultVideo(
    id: json['id'],
    video: Video.fromJson(json['video']),
    title: json['title'],
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "video": video.toJson(),
      "title": title,
      "description": description,
    };
  }
  
  @override
  InlineQueryResultVideo copyWith({
    String? id,
    Video? video,
    String? title,
    String? description,
  }) => InlineQueryResultVideo(
    id: id ?? this.id,
    video: video ?? this.video,
    title: title ?? this.title,
    description: description ?? this.description,
  );

  static const String constructor = 'inlineQueryResultVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineQueryResultVoiceNote** *(inlineQueryResultVoiceNote)* - child of InlineQueryResult
  ///
  /// Represents a voice note.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [voiceNote]: Voice note.
  /// * [title]: Title of the voice note.
class InlineQueryResultVoiceNote extends InlineQueryResult {
  
  /// **InlineQueryResultVoiceNote** *(inlineQueryResultVoiceNote)* - child of InlineQueryResult
  ///
  /// Represents a voice note.
  ///
  /// * [id]: Unique identifier of the query result.
  /// * [voiceNote]: Voice note.
  /// * [title]: Title of the voice note.
  const InlineQueryResultVoiceNote({
    required this.id,
    required this.voiceNote,
    required this.title,
  });
  
  /// Unique identifier of the query result
  final String id;

  /// Voice note
  final VoiceNote voiceNote;

  /// Title of the voice note
  final String title;
  
  /// Parse from a json
  factory InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) => InlineQueryResultVoiceNote(
    id: json['id'],
    voiceNote: VoiceNote.fromJson(json['voice_note']),
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "voice_note": voiceNote.toJson(),
      "title": title,
    };
  }
  
  @override
  InlineQueryResultVoiceNote copyWith({
    String? id,
    VoiceNote? voiceNote,
    String? title,
  }) => InlineQueryResultVoiceNote(
    id: id ?? this.id,
    voiceNote: voiceNote ?? this.voiceNote,
    title: title ?? this.title,
  );

  static const String constructor = 'inlineQueryResultVoiceNote';
  
  @override
  String getConstructor() => constructor;
}
