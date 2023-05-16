part of '../tdapi.dart';

/// **Sticker** *(sticker)* - basic class
///
/// Describes a sticker.
///
/// * [setId]: The identifier of the sticker set to which the sticker belongs; 0 if none.
/// * [width]: Sticker width; as defined by the sender.
/// * [height]: Sticker height; as defined by the sender.
/// * [emoji]: Emoji corresponding to the sticker.
/// * [format]: Sticker format.
/// * [fullType]: Sticker's full type.
/// * [outline]: Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner.
/// * [thumbnail]: Sticker thumbnail in WEBP or JPEG format; may be null *(optional)*.
/// * [sticker]: File containing the sticker.
final class Sticker extends TdObject {
  
  /// **Sticker** *(sticker)* - basic class
  ///
  /// Describes a sticker.
  ///
  /// * [setId]: The identifier of the sticker set to which the sticker belongs; 0 if none.
  /// * [width]: Sticker width; as defined by the sender.
  /// * [height]: Sticker height; as defined by the sender.
  /// * [emoji]: Emoji corresponding to the sticker.
  /// * [format]: Sticker format.
  /// * [fullType]: Sticker's full type.
  /// * [outline]: Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner.
  /// * [thumbnail]: Sticker thumbnail in WEBP or JPEG format; may be null *(optional)*.
  /// * [sticker]: File containing the sticker.
  const Sticker({
    required this.setId,
    required this.width,
    required this.height,
    required this.emoji,
    required this.format,
    required this.fullType,
    required this.outline,
    this.thumbnail,
    required this.sticker,
    this.extra,
    this.clientId,
  });
  
  /// The identifier of the sticker set to which the sticker belongs; 0 if none
  final int setId;

  /// Sticker width; as defined by the sender
  final int width;

  /// Sticker height; as defined by the sender
  final int height;

  /// Emoji corresponding to the sticker
  final String emoji;

  /// Sticker format
  final StickerFormat format;

  /// Sticker's full type
  final StickerFullType fullType;

  /// Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> outline;

  /// Sticker thumbnail in WEBP or JPEG format; may be null
  final Thumbnail? thumbnail;

  /// File containing the sticker
  final File sticker;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Sticker.fromJson(Map<String, dynamic> json) => Sticker(
    setId: int.tryParse(json['set_id'] ?? "") ?? 0,
    width: json['width'],
    height: json['height'],
    emoji: json['emoji'],
    format: StickerFormat.fromJson(json['format']),
    fullType: StickerFullType.fromJson(json['full_type']),
    outline: List<ClosedVectorPath>.from((json['outline'] ?? []).map((item) => ClosedVectorPath.fromJson(item)).toList()),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
    sticker: File.fromJson(json['sticker']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "set_id": setId,
      "width": width,
      "height": height,
      "emoji": emoji,
      "format": format.toJson(),
      "full_type": fullType.toJson(),
      "outline": outline.map((i) => i.toJson()).toList(),
      "thumbnail": thumbnail?.toJson(),
      "sticker": sticker.toJson(),
		};
	}

  
  Sticker copyWith({
    int? setId,
    int? width,
    int? height,
    String? emoji,
    StickerFormat? format,
    StickerFullType? fullType,
    List<ClosedVectorPath>? outline,
    Thumbnail? thumbnail,
    File? sticker,
    dynamic extra,
    int? clientId,
  }) => Sticker(
    setId: setId ?? this.setId,
    width: width ?? this.width,
    height: height ?? this.height,
    emoji: emoji ?? this.emoji,
    format: format ?? this.format,
    fullType: fullType ?? this.fullType,
    outline: outline ?? this.outline,
    thumbnail: thumbnail ?? this.thumbnail,
    sticker: sticker ?? this.sticker,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'sticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
