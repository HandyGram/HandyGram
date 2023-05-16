part of '../tdapi.dart';

/// **PhotoSize** *(photoSize)* - basic class
///
/// Describes an image in JPEG format.
///
/// * [type]: Image type (see https://core.telegram.org/constructor/photoSize).
/// * [photo]: Information about the image file.
/// * [width]: Image width.
/// * [height]: Image height.
/// * [progressiveSizes]: Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image; in bytes.
final class PhotoSize extends TdObject {
  
  /// **PhotoSize** *(photoSize)* - basic class
  ///
  /// Describes an image in JPEG format.
  ///
  /// * [type]: Image type (see https://core.telegram.org/constructor/photoSize).
  /// * [photo]: Information about the image file.
  /// * [width]: Image width.
  /// * [height]: Image height.
  /// * [progressiveSizes]: Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image; in bytes.
  const PhotoSize({
    required this.type,
    required this.photo,
    required this.width,
    required this.height,
    required this.progressiveSizes,
  });
  
  /// Image type (see https://core.telegram.org/constructor/photoSize)
  final String type;

  /// Information about the image file
  final File photo;

  /// Image width
  final int width;

  /// Image height
  final int height;

  /// Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image; in bytes
  final List<int> progressiveSizes;
  
  /// Parse from a json
  factory PhotoSize.fromJson(Map<String, dynamic> json) => PhotoSize(
    type: json['type'],
    photo: File.fromJson(json['photo']),
    width: json['width'],
    height: json['height'],
    progressiveSizes: List<int>.from((json['progressive_sizes'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type,
      "photo": photo.toJson(),
      "width": width,
      "height": height,
      "progressive_sizes": progressiveSizes.map((i) => i).toList(),
		};
	}

  
  PhotoSize copyWith({
    String? type,
    File? photo,
    int? width,
    int? height,
    List<int>? progressiveSizes,
  }) => PhotoSize(
    type: type ?? this.type,
    photo: photo ?? this.photo,
    width: width ?? this.width,
    height: height ?? this.height,
    progressiveSizes: progressiveSizes ?? this.progressiveSizes,
  );

  static const String objectType = 'photoSize';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
