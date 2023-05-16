part of '../tdapi.dart';

/// **InputThumbnail** *(inputThumbnail)* - basic class
///
/// A thumbnail to be sent along with a file; must be in JPEG or WEBP format for stickers, and less than 200 KB in size.
///
/// * [thumbnail]: Thumbnail file to send. Sending thumbnails by file_id is currently not supported.
/// * [width]: Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown.
/// * [height]: Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown.
final class InputThumbnail extends TdObject {
  
  /// **InputThumbnail** *(inputThumbnail)* - basic class
  ///
  /// A thumbnail to be sent along with a file; must be in JPEG or WEBP format for stickers, and less than 200 KB in size.
  ///
  /// * [thumbnail]: Thumbnail file to send. Sending thumbnails by file_id is currently not supported.
  /// * [width]: Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown.
  /// * [height]: Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown.
  const InputThumbnail({
    required this.thumbnail,
    required this.width,
    required this.height,
  });
  
  /// Thumbnail file to send. Sending thumbnails by file_id is currently not supported
  final InputFile thumbnail;

  /// Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown
  final int width;

  /// Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown
  final int height;
  
  /// Parse from a json
  factory InputThumbnail.fromJson(Map<String, dynamic> json) => InputThumbnail(
    thumbnail: InputFile.fromJson(json['thumbnail']),
    width: json['width'],
    height: json['height'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "thumbnail": thumbnail.toJson(),
      "width": width,
      "height": height,
		};
	}

  
  InputThumbnail copyWith({
    InputFile? thumbnail,
    int? width,
    int? height,
  }) => InputThumbnail(
    thumbnail: thumbnail ?? this.thumbnail,
    width: width ?? this.width,
    height: height ?? this.height,
  );

  static const String objectType = 'inputThumbnail';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
