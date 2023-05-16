part of '../tdapi.dart';

/// **WebPage** *(webPage)* - basic class
///
/// Describes a web page preview.
///
/// * [url]: Original URL of the link.
/// * [displayUrl]: URL to display.
/// * [type]: Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else.
/// * [siteName]: Short name of the site (e.g., Google Docs, App Store).
/// * [title]: Title of the content.
/// * [description]: Description of the content.
/// * [photo]: Image representing the content; may be null *(optional)*.
/// * [embedUrl]: URL to show in the embedded preview.
/// * [embedType]: MIME type of the embedded preview, (e.g., text/html or video/mp4).
/// * [embedWidth]: Width of the embedded preview.
/// * [embedHeight]: Height of the embedded preview.
/// * [duration]: Duration of the content, in seconds.
/// * [author]: Author of the content.
/// * [animation]: Preview of the content as an animation, if available; may be null *(optional)*.
/// * [audio]: Preview of the content as an audio file, if available; may be null *(optional)*.
/// * [document]: Preview of the content as a document, if available; may be null *(optional)*.
/// * [sticker]: Preview of the content as a sticker for small WEBP files, if available; may be null *(optional)*.
/// * [video]: Preview of the content as a video, if available; may be null *(optional)*.
/// * [videoNote]: Preview of the content as a video note, if available; may be null *(optional)*.
/// * [voiceNote]: Preview of the content as a voice note, if available; may be null *(optional)*.
/// * [instantViewVersion]: Version of web page instant view (currently, can be 1 or 2); 0 if none.
final class WebPage extends TdObject {
  
  /// **WebPage** *(webPage)* - basic class
  ///
  /// Describes a web page preview.
  ///
  /// * [url]: Original URL of the link.
  /// * [displayUrl]: URL to display.
  /// * [type]: Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else.
  /// * [siteName]: Short name of the site (e.g., Google Docs, App Store).
  /// * [title]: Title of the content.
  /// * [description]: Description of the content.
  /// * [photo]: Image representing the content; may be null *(optional)*.
  /// * [embedUrl]: URL to show in the embedded preview.
  /// * [embedType]: MIME type of the embedded preview, (e.g., text/html or video/mp4).
  /// * [embedWidth]: Width of the embedded preview.
  /// * [embedHeight]: Height of the embedded preview.
  /// * [duration]: Duration of the content, in seconds.
  /// * [author]: Author of the content.
  /// * [animation]: Preview of the content as an animation, if available; may be null *(optional)*.
  /// * [audio]: Preview of the content as an audio file, if available; may be null *(optional)*.
  /// * [document]: Preview of the content as a document, if available; may be null *(optional)*.
  /// * [sticker]: Preview of the content as a sticker for small WEBP files, if available; may be null *(optional)*.
  /// * [video]: Preview of the content as a video, if available; may be null *(optional)*.
  /// * [videoNote]: Preview of the content as a video note, if available; may be null *(optional)*.
  /// * [voiceNote]: Preview of the content as a voice note, if available; may be null *(optional)*.
  /// * [instantViewVersion]: Version of web page instant view (currently, can be 1 or 2); 0 if none.
  const WebPage({
    required this.url,
    required this.displayUrl,
    required this.type,
    required this.siteName,
    required this.title,
    required this.description,
    this.photo,
    required this.embedUrl,
    required this.embedType,
    required this.embedWidth,
    required this.embedHeight,
    required this.duration,
    required this.author,
    this.animation,
    this.audio,
    this.document,
    this.sticker,
    this.video,
    this.videoNote,
    this.voiceNote,
    required this.instantViewVersion,
    this.extra,
    this.clientId,
  });
  
  /// Original URL of the link
  final String url;

  /// URL to display
  final String displayUrl;

  /// Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
  final String type;

  /// Short name of the site (e.g., Google Docs, App Store)
  final String siteName;

  /// Title of the content
  final String title;

  /// Description of the content
  final FormattedText description;

  /// Image representing the content; may be null
  final Photo? photo;

  /// URL to show in the embedded preview
  final String embedUrl;

  /// MIME type of the embedded preview, (e.g., text/html or video/mp4)
  final String embedType;

  /// Width of the embedded preview
  final int embedWidth;

  /// Height of the embedded preview
  final int embedHeight;

  /// Duration of the content, in seconds
  final int duration;

  /// Author of the content
  final String author;

  /// Preview of the content as an animation, if available; may be null
  final Animation? animation;

  /// Preview of the content as an audio file, if available; may be null
  final Audio? audio;

  /// Preview of the content as a document, if available; may be null
  final Document? document;

  /// Preview of the content as a sticker for small WEBP files, if available; may be null
  final Sticker? sticker;

  /// Preview of the content as a video, if available; may be null
  final Video? video;

  /// Preview of the content as a video note, if available; may be null
  final VideoNote? videoNote;

  /// Preview of the content as a voice note, if available; may be null
  final VoiceNote? voiceNote;

  /// Version of web page instant view (currently, can be 1 or 2); 0 if none
  final int instantViewVersion;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory WebPage.fromJson(Map<String, dynamic> json) => WebPage(
    url: json['url'],
    displayUrl: json['display_url'],
    type: json['type'],
    siteName: json['site_name'],
    title: json['title'],
    description: FormattedText.fromJson(json['description']),
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    embedUrl: json['embed_url'],
    embedType: json['embed_type'],
    embedWidth: json['embed_width'],
    embedHeight: json['embed_height'],
    duration: json['duration'],
    author: json['author'],
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
    audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
    document: json['document'] == null ? null : Document.fromJson(json['document']),
    sticker: json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
    video: json['video'] == null ? null : Video.fromJson(json['video']),
    videoNote: json['video_note'] == null ? null : VideoNote.fromJson(json['video_note']),
    voiceNote: json['voice_note'] == null ? null : VoiceNote.fromJson(json['voice_note']),
    instantViewVersion: json['instant_view_version'] ?? 0,
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "display_url": displayUrl,
      "type": type,
      "site_name": siteName,
      "title": title,
      "description": description.toJson(),
      "photo": photo?.toJson(),
      "embed_url": embedUrl,
      "embed_type": embedType,
      "embed_width": embedWidth,
      "embed_height": embedHeight,
      "duration": duration,
      "author": author,
      "animation": animation?.toJson(),
      "audio": audio?.toJson(),
      "document": document?.toJson(),
      "sticker": sticker?.toJson(),
      "video": video?.toJson(),
      "video_note": videoNote?.toJson(),
      "voice_note": voiceNote?.toJson(),
      "instant_view_version": instantViewVersion,
		};
	}

  
  WebPage copyWith({
    String? url,
    String? displayUrl,
    String? type,
    String? siteName,
    String? title,
    FormattedText? description,
    Photo? photo,
    String? embedUrl,
    String? embedType,
    int? embedWidth,
    int? embedHeight,
    int? duration,
    String? author,
    Animation? animation,
    Audio? audio,
    Document? document,
    Sticker? sticker,
    Video? video,
    VideoNote? videoNote,
    VoiceNote? voiceNote,
    int? instantViewVersion,
    dynamic extra,
    int? clientId,
  }) => WebPage(
    url: url ?? this.url,
    displayUrl: displayUrl ?? this.displayUrl,
    type: type ?? this.type,
    siteName: siteName ?? this.siteName,
    title: title ?? this.title,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    embedUrl: embedUrl ?? this.embedUrl,
    embedType: embedType ?? this.embedType,
    embedWidth: embedWidth ?? this.embedWidth,
    embedHeight: embedHeight ?? this.embedHeight,
    duration: duration ?? this.duration,
    author: author ?? this.author,
    animation: animation ?? this.animation,
    audio: audio ?? this.audio,
    document: document ?? this.document,
    sticker: sticker ?? this.sticker,
    video: video ?? this.video,
    videoNote: videoNote ?? this.videoNote,
    voiceNote: voiceNote ?? this.voiceNote,
    instantViewVersion: instantViewVersion ?? this.instantViewVersion,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'webPage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
