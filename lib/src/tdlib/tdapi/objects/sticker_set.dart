part of '../tdapi.dart';

/// **StickerSet** *(stickerSet)* - basic class
///
/// Represents a sticker set.
///
/// * [id]: Identifier of the sticker set.
/// * [title]: Title of the sticker set.
/// * [name]: Name of the sticker set.
/// * [thumbnail]: Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed *(optional)*.
/// * [thumbnailOutline]: Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner.
/// * [isInstalled]: True, if the sticker set has been installed by the current user.
/// * [isArchived]: True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously.
/// * [isOfficial]: True, if the sticker set is official.
/// * [stickerFormat]: Format of the stickers in the set.
/// * [stickerType]: Type of the stickers in the set.
/// * [isViewed]: True for already viewed trending sticker sets.
/// * [stickers]: List of stickers in this set.
/// * [emojis]: A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object.
final class StickerSet extends TdObject {
  
  /// **StickerSet** *(stickerSet)* - basic class
  ///
  /// Represents a sticker set.
  ///
  /// * [id]: Identifier of the sticker set.
  /// * [title]: Title of the sticker set.
  /// * [name]: Name of the sticker set.
  /// * [thumbnail]: Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed *(optional)*.
  /// * [thumbnailOutline]: Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner.
  /// * [isInstalled]: True, if the sticker set has been installed by the current user.
  /// * [isArchived]: True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously.
  /// * [isOfficial]: True, if the sticker set is official.
  /// * [stickerFormat]: Format of the stickers in the set.
  /// * [stickerType]: Type of the stickers in the set.
  /// * [isViewed]: True for already viewed trending sticker sets.
  /// * [stickers]: List of stickers in this set.
  /// * [emojis]: A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object.
  const StickerSet({
    required this.id,
    required this.title,
    required this.name,
    this.thumbnail,
    required this.thumbnailOutline,
    required this.isInstalled,
    required this.isArchived,
    required this.isOfficial,
    required this.stickerFormat,
    required this.stickerType,
    required this.isViewed,
    required this.stickers,
    required this.emojis,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the sticker set
  final int id;

  /// Title of the sticker set
  final String title;

  /// Name of the sticker set
  final String name;

  /// Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed
  final Thumbnail? thumbnail;

  /// Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> thumbnailOutline;

  /// True, if the sticker set has been installed by the current user
  final bool isInstalled;

  /// True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;

  /// True, if the sticker set is official
  final bool isOfficial;

  /// Format of the stickers in the set
  final StickerFormat stickerFormat;

  /// Type of the stickers in the set
  final StickerType stickerType;

  /// True for already viewed trending sticker sets
  final bool isViewed;

  /// List of stickers in this set
  final List<Sticker> stickers;

  /// A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
  final List<Emojis> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StickerSet.fromJson(Map<String, dynamic> json) => StickerSet(
    id: int.parse(json['id']),
    title: json['title'],
    name: json['name'],
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
    thumbnailOutline: List<ClosedVectorPath>.from((json['thumbnail_outline'] ?? []).map((item) => ClosedVectorPath.fromJson(item)).toList()),
    isInstalled: json['is_installed'],
    isArchived: json['is_archived'],
    isOfficial: json['is_official'],
    stickerFormat: StickerFormat.fromJson(json['sticker_format']),
    stickerType: StickerType.fromJson(json['sticker_type']),
    isViewed: json['is_viewed'],
    stickers: List<Sticker>.from((json['stickers'] ?? []).map((item) => Sticker.fromJson(item)).toList()),
    emojis: List<Emojis>.from((json['emojis'] ?? []).map((item) => Emojis.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "title": title,
      "name": name,
      "thumbnail": thumbnail?.toJson(),
      "thumbnail_outline": thumbnailOutline.map((i) => i.toJson()).toList(),
      "is_installed": isInstalled,
      "is_archived": isArchived,
      "is_official": isOfficial,
      "sticker_format": stickerFormat.toJson(),
      "sticker_type": stickerType.toJson(),
      "is_viewed": isViewed,
      "stickers": stickers.map((i) => i.toJson()).toList(),
      "emojis": emojis.map((i) => i.toJson()).toList(),
		};
	}

  
  StickerSet copyWith({
    int? id,
    String? title,
    String? name,
    Thumbnail? thumbnail,
    List<ClosedVectorPath>? thumbnailOutline,
    bool? isInstalled,
    bool? isArchived,
    bool? isOfficial,
    StickerFormat? stickerFormat,
    StickerType? stickerType,
    bool? isViewed,
    List<Sticker>? stickers,
    List<Emojis>? emojis,
    dynamic extra,
    int? clientId,
  }) => StickerSet(
    id: id ?? this.id,
    title: title ?? this.title,
    name: name ?? this.name,
    thumbnail: thumbnail ?? this.thumbnail,
    thumbnailOutline: thumbnailOutline ?? this.thumbnailOutline,
    isInstalled: isInstalled ?? this.isInstalled,
    isArchived: isArchived ?? this.isArchived,
    isOfficial: isOfficial ?? this.isOfficial,
    stickerFormat: stickerFormat ?? this.stickerFormat,
    stickerType: stickerType ?? this.stickerType,
    isViewed: isViewed ?? this.isViewed,
    stickers: stickers ?? this.stickers,
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'stickerSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
