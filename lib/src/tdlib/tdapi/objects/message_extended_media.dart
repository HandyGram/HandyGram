part of '../tdapi.dart';

/// **MessageExtendedMedia** *(messageExtendedMedia)* - parent
///
/// Describes a media, which is attached to an invoice.
sealed class MessageExtendedMedia extends TdObject {
  
  /// **MessageExtendedMedia** *(messageExtendedMedia)* - parent
  ///
  /// Describes a media, which is attached to an invoice.
  const MessageExtendedMedia();
  
  /// a MessageExtendedMedia return type can be :
  /// * [MessageExtendedMediaPreview]
  /// * [MessageExtendedMediaPhoto]
  /// * [MessageExtendedMediaVideo]
  /// * [MessageExtendedMediaUnsupported]
  factory MessageExtendedMedia.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageExtendedMediaPreview.objectType:
        return MessageExtendedMediaPreview.fromJson(json);
      case MessageExtendedMediaPhoto.objectType:
        return MessageExtendedMediaPhoto.fromJson(json);
      case MessageExtendedMediaVideo.objectType:
        return MessageExtendedMediaVideo.fromJson(json);
      case MessageExtendedMediaUnsupported.objectType:
        return MessageExtendedMediaUnsupported.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageExtendedMedia)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  MessageExtendedMedia copyWith();

  static const String objectType = 'messageExtendedMedia';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageExtendedMediaPreview** *(messageExtendedMediaPreview)* - child of MessageExtendedMedia
///
/// The media is hidden until the invoice is paid.
///
/// * [width]: Media width; 0 if unknown.
/// * [height]: Media height; 0 if unknown.
/// * [duration]: Media duration; 0 if unknown.
/// * [minithumbnail]: Media minithumbnail; may be null *(optional)*.
/// * [caption]: Media caption.
final class MessageExtendedMediaPreview extends MessageExtendedMedia {
  
  /// **MessageExtendedMediaPreview** *(messageExtendedMediaPreview)* - child of MessageExtendedMedia
  ///
  /// The media is hidden until the invoice is paid.
  ///
  /// * [width]: Media width; 0 if unknown.
  /// * [height]: Media height; 0 if unknown.
  /// * [duration]: Media duration; 0 if unknown.
  /// * [minithumbnail]: Media minithumbnail; may be null *(optional)*.
  /// * [caption]: Media caption.
  const MessageExtendedMediaPreview({
    required this.width,
    required this.height,
    required this.duration,
    this.minithumbnail,
    required this.caption,
  });
  
  /// Media width; 0 if unknown
  final int width;

  /// Media height; 0 if unknown
  final int height;

  /// Media duration; 0 if unknown
  final int duration;

  /// Media minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// Media caption
  final FormattedText caption;
  
  /// Parse from a json
  factory MessageExtendedMediaPreview.fromJson(Map<String, dynamic> json) => MessageExtendedMediaPreview(
    width: json['width'],
    height: json['height'],
    duration: json['duration'],
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
    caption: FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "width": width,
      "height": height,
      "duration": duration,
      "minithumbnail": minithumbnail?.toJson(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  MessageExtendedMediaPreview copyWith({
    int? width,
    int? height,
    int? duration,
    Minithumbnail? minithumbnail,
    FormattedText? caption,
  }) => MessageExtendedMediaPreview(
    width: width ?? this.width,
    height: height ?? this.height,
    duration: duration ?? this.duration,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'messageExtendedMediaPreview';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageExtendedMediaPhoto** *(messageExtendedMediaPhoto)* - child of MessageExtendedMedia
///
/// The media is a photo.
///
/// * [photo]: The photo.
/// * [caption]: Photo caption.
final class MessageExtendedMediaPhoto extends MessageExtendedMedia {
  
  /// **MessageExtendedMediaPhoto** *(messageExtendedMediaPhoto)* - child of MessageExtendedMedia
  ///
  /// The media is a photo.
  ///
  /// * [photo]: The photo.
  /// * [caption]: Photo caption.
  const MessageExtendedMediaPhoto({
    required this.photo,
    required this.caption,
  });
  
  /// The photo 
  final Photo photo;

  /// Photo caption
  final FormattedText caption;
  
  /// Parse from a json
  factory MessageExtendedMediaPhoto.fromJson(Map<String, dynamic> json) => MessageExtendedMediaPhoto(
    photo: Photo.fromJson(json['photo']),
    caption: FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "photo": photo.toJson(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  MessageExtendedMediaPhoto copyWith({
    Photo? photo,
    FormattedText? caption,
  }) => MessageExtendedMediaPhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'messageExtendedMediaPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageExtendedMediaVideo** *(messageExtendedMediaVideo)* - child of MessageExtendedMedia
///
/// The media is a video.
///
/// * [video]: The video.
/// * [caption]: Photo caption.
final class MessageExtendedMediaVideo extends MessageExtendedMedia {
  
  /// **MessageExtendedMediaVideo** *(messageExtendedMediaVideo)* - child of MessageExtendedMedia
  ///
  /// The media is a video.
  ///
  /// * [video]: The video.
  /// * [caption]: Photo caption.
  const MessageExtendedMediaVideo({
    required this.video,
    required this.caption,
  });
  
  /// The video 
  final Video video;

  /// Photo caption
  final FormattedText caption;
  
  /// Parse from a json
  factory MessageExtendedMediaVideo.fromJson(Map<String, dynamic> json) => MessageExtendedMediaVideo(
    video: Video.fromJson(json['video']),
    caption: FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "video": video.toJson(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  MessageExtendedMediaVideo copyWith({
    Video? video,
    FormattedText? caption,
  }) => MessageExtendedMediaVideo(
    video: video ?? this.video,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'messageExtendedMediaVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageExtendedMediaUnsupported** *(messageExtendedMediaUnsupported)* - child of MessageExtendedMedia
///
/// The media is unuspported.
///
/// * [caption]: Media caption.
final class MessageExtendedMediaUnsupported extends MessageExtendedMedia {
  
  /// **MessageExtendedMediaUnsupported** *(messageExtendedMediaUnsupported)* - child of MessageExtendedMedia
  ///
  /// The media is unuspported.
  ///
  /// * [caption]: Media caption.
  const MessageExtendedMediaUnsupported({
    required this.caption,
  });
  
  /// Media caption
  final FormattedText caption;
  
  /// Parse from a json
  factory MessageExtendedMediaUnsupported.fromJson(Map<String, dynamic> json) => MessageExtendedMediaUnsupported(
    caption: FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "caption": caption.toJson(),
		};
	}

  
  @override
  MessageExtendedMediaUnsupported copyWith({
    FormattedText? caption,
  }) => MessageExtendedMediaUnsupported(
    caption: caption ?? this.caption,
  );

  static const String objectType = 'messageExtendedMediaUnsupported';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
