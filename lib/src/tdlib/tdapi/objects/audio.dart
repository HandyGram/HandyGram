part of '../tdapi.dart';

/// **Audio** *(audio)* - basic class
///
/// Describes an audio file. Audio is usually in MP3 or M4A format.
///
/// * [duration]: Duration of the audio, in seconds; as defined by the sender.
/// * [title]: Title of the audio; as defined by the sender.
/// * [performer]: Performer of the audio; as defined by the sender.
/// * [fileName]: Original name of the file; as defined by the sender.
/// * [mimeType]: The MIME type of the file; as defined by the sender.
/// * [albumCoverMinithumbnail]: The minithumbnail of the album cover; may be null *(optional)*.
/// * [albumCoverThumbnail]: The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail is supposed to be extracted from the downloaded audio file; may be null *(optional)*.
/// * [externalAlbumCovers]: Album cover variants to use if the downloaded audio file contains no album cover. Provided thumbnail dimensions are approximate.
/// * [audio]: File containing the audio.
final class Audio extends TdObject {
  
  /// **Audio** *(audio)* - basic class
  ///
  /// Describes an audio file. Audio is usually in MP3 or M4A format.
  ///
  /// * [duration]: Duration of the audio, in seconds; as defined by the sender.
  /// * [title]: Title of the audio; as defined by the sender.
  /// * [performer]: Performer of the audio; as defined by the sender.
  /// * [fileName]: Original name of the file; as defined by the sender.
  /// * [mimeType]: The MIME type of the file; as defined by the sender.
  /// * [albumCoverMinithumbnail]: The minithumbnail of the album cover; may be null *(optional)*.
  /// * [albumCoverThumbnail]: The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail is supposed to be extracted from the downloaded audio file; may be null *(optional)*.
  /// * [externalAlbumCovers]: Album cover variants to use if the downloaded audio file contains no album cover. Provided thumbnail dimensions are approximate.
  /// * [audio]: File containing the audio.
  const Audio({
    required this.duration,
    required this.title,
    required this.performer,
    required this.fileName,
    required this.mimeType,
    this.albumCoverMinithumbnail,
    this.albumCoverThumbnail,
    required this.externalAlbumCovers,
    required this.audio,
  });
  
  /// Duration of the audio, in seconds; as defined by the sender
  final int duration;

  /// Title of the audio; as defined by the sender
  final String title;

  /// Performer of the audio; as defined by the sender
  final String performer;

  /// Original name of the file; as defined by the sender
  final String fileName;

  /// The MIME type of the file; as defined by the sender
  final String mimeType;

  /// The minithumbnail of the album cover; may be null
  final Minithumbnail? albumCoverMinithumbnail;

  /// The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail is supposed to be extracted from the downloaded audio file; may be null
  final Thumbnail? albumCoverThumbnail;

  /// Album cover variants to use if the downloaded audio file contains no album cover. Provided thumbnail dimensions are approximate
  final List<Thumbnail> externalAlbumCovers;

  /// File containing the audio
  final File audio;
  
  /// Parse from a json
  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
    duration: json['duration'],
    title: json['title'],
    performer: json['performer'],
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    albumCoverMinithumbnail: json['album_cover_minithumbnail'] == null ? null : Minithumbnail.fromJson(json['album_cover_minithumbnail']),
    albumCoverThumbnail: json['album_cover_thumbnail'] == null ? null : Thumbnail.fromJson(json['album_cover_thumbnail']),
    externalAlbumCovers: List<Thumbnail>.from((json['external_album_covers'] ?? []).map((item) => Thumbnail.fromJson(item)).toList()),
    audio: File.fromJson(json['audio']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "duration": duration,
      "title": title,
      "performer": performer,
      "file_name": fileName,
      "mime_type": mimeType,
      "album_cover_minithumbnail": albumCoverMinithumbnail?.toJson(),
      "album_cover_thumbnail": albumCoverThumbnail?.toJson(),
      "external_album_covers": externalAlbumCovers.map((i) => i.toJson()).toList(),
      "audio": audio.toJson(),
		};
	}

  
  Audio copyWith({
    int? duration,
    String? title,
    String? performer,
    String? fileName,
    String? mimeType,
    Minithumbnail? albumCoverMinithumbnail,
    Thumbnail? albumCoverThumbnail,
    List<Thumbnail>? externalAlbumCovers,
    File? audio,
  }) => Audio(
    duration: duration ?? this.duration,
    title: title ?? this.title,
    performer: performer ?? this.performer,
    fileName: fileName ?? this.fileName,
    mimeType: mimeType ?? this.mimeType,
    albumCoverMinithumbnail: albumCoverMinithumbnail ?? this.albumCoverMinithumbnail,
    albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
    externalAlbumCovers: externalAlbumCovers ?? this.externalAlbumCovers,
    audio: audio ?? this.audio,
  );

  static const String objectType = 'audio';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
