part of '../tdapi.dart';

/// **SetStickerSetThumbnail** *(setStickerSetThumbnail)* - TDLib function
  ///
  /// Sets a sticker set thumbnail; for bots only. Returns the sticker set.
  ///
  /// * [userId]: Sticker set owner.
  /// * [name]: Sticker set name.
  /// * [thumbnail]: Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set *(optional)*.
  ///
  /// [StickerSet] is returned on completion.
class SetStickerSetThumbnail extends TdFunction {
  
  /// **SetStickerSetThumbnail** *(setStickerSetThumbnail)* - TDLib function
  ///
  /// Sets a sticker set thumbnail; for bots only. Returns the sticker set.
  ///
  /// * [userId]: Sticker set owner.
  /// * [name]: Sticker set name.
  /// * [thumbnail]: Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set *(optional)*.
  ///
  /// [StickerSet] is returned on completion.
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
  });
  
  /// Sticker set owner
  final int userId;

  /// Sticker set name
  final String name;

  /// Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set
  final InputFile? thumbnail;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
      "name": name,
      "thumbnail": thumbnail?.toJson(),
      "@extra": extra,
    };
  }
  
  SetStickerSetThumbnail copyWith({
    int? userId,
    String? name,
    InputFile? thumbnail,
  }) => SetStickerSetThumbnail(
    userId: userId ?? this.userId,
    name: name ?? this.name,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const String constructor = 'setStickerSetThumbnail';
  
  @override
  String getConstructor() => constructor;
}
