part of '../tdapi.dart';

/// **GetStickerSet** *(getStickerSet)* - TDLib function
  ///
  /// Returns information about a sticker set by its identifier.
  ///
  /// * [setId]: Identifier of the sticker set.
  ///
  /// [StickerSet] is returned on completion.
class GetStickerSet extends TdFunction {
  
  /// **GetStickerSet** *(getStickerSet)* - TDLib function
  ///
  /// Returns information about a sticker set by its identifier.
  ///
  /// * [setId]: Identifier of the sticker set.
  ///
  /// [StickerSet] is returned on completion.
  const GetStickerSet({
    required this.setId,
  });
  
  /// Identifier of the sticker set
  final int setId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "set_id": setId,
      "@extra": extra,
    };
  }
  
  GetStickerSet copyWith({
    int? setId,
  }) => GetStickerSet(
    setId: setId ?? this.setId,
  );

  static const String constructor = 'getStickerSet';
  
  @override
  String getConstructor() => constructor;
}
