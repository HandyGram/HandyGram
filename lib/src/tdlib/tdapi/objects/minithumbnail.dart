part of '../tdapi.dart';

/// **Minithumbnail** *(minithumbnail)* - basic class
///
/// Thumbnail image of a very poor quality and low resolution.
///
/// * [width]: Thumbnail width, usually doesn't exceed 40.
/// * [height]: Thumbnail height, usually doesn't exceed 40.
/// * [data]: The thumbnail in JPEG format.
final class Minithumbnail extends TdObject {
  
  /// **Minithumbnail** *(minithumbnail)* - basic class
  ///
  /// Thumbnail image of a very poor quality and low resolution.
  ///
  /// * [width]: Thumbnail width, usually doesn't exceed 40.
  /// * [height]: Thumbnail height, usually doesn't exceed 40.
  /// * [data]: The thumbnail in JPEG format.
  const Minithumbnail({
    required this.width,
    required this.height,
    required this.data,
  });
  
  /// Thumbnail width, usually doesn't exceed 40 
  final int width;

  /// Thumbnail height, usually doesn't exceed 40 
  final int height;

  /// The thumbnail in JPEG format
  final String data;
  
  /// Parse from a json
  factory Minithumbnail.fromJson(Map<String, dynamic> json) => Minithumbnail(
    width: json['width'],
    height: json['height'],
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "width": width,
      "height": height,
      "data": data,
		};
	}

  
  Minithumbnail copyWith({
    int? width,
    int? height,
    String? data,
  }) => Minithumbnail(
    width: width ?? this.width,
    height: height ?? this.height,
    data: data ?? this.data,
  );

  static const String objectType = 'minithumbnail';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
