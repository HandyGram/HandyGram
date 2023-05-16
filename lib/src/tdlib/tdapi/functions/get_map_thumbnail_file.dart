part of '../tdapi.dart';

/// **GetMapThumbnailFile** *(getMapThumbnailFile)* - TDLib function
///
/// Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded.
///
/// * [location]: Location of the map center.
/// * [zoom]: Map zoom level; 13-20.
/// * [width]: Map width in pixels before applying scale; 16-1024.
/// * [height]: Map height in pixels before applying scale; 16-1024.
/// * [scale]: Map scale; 1-3.
/// * [chatId]: Identifier of a chat in which the thumbnail will be shown. Use 0 if unknown.
///
/// [File] is returned on completion.
final class GetMapThumbnailFile extends TdFunction {
  
  /// **GetMapThumbnailFile** *(getMapThumbnailFile)* - TDLib function
  ///
  /// Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded.
  ///
  /// * [location]: Location of the map center.
  /// * [zoom]: Map zoom level; 13-20.
  /// * [width]: Map width in pixels before applying scale; 16-1024.
  /// * [height]: Map height in pixels before applying scale; 16-1024.
  /// * [scale]: Map scale; 1-3.
  /// * [chatId]: Identifier of a chat in which the thumbnail will be shown. Use 0 if unknown.
  ///
  /// [File] is returned on completion.
  const GetMapThumbnailFile({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.scale,
    required this.chatId,
  });
  
  /// Location of the map center
  final Location location;

  /// Map zoom level; 13-20
  final int zoom;

  /// Map width in pixels before applying scale; 16-1024
  final int width;

  /// Map height in pixels before applying scale; 16-1024
  final int height;

  /// Map scale; 1-3
  final int scale;

  /// Identifier of a chat in which the thumbnail will be shown. Use 0 if unknown
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "location": location.toJson(),
      "zoom": zoom,
      "width": width,
      "height": height,
      "scale": scale,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  GetMapThumbnailFile copyWith({
    Location? location,
    int? zoom,
    int? width,
    int? height,
    int? scale,
    int? chatId,
  }) => GetMapThumbnailFile(
    location: location ?? this.location,
    zoom: zoom ?? this.zoom,
    width: width ?? this.width,
    height: height ?? this.height,
    scale: scale ?? this.scale,
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'getMapThumbnailFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
