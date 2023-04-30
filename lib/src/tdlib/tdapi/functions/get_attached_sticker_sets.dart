part of '../tdapi.dart';

/// **GetAttachedStickerSets** *(getAttachedStickerSets)* - TDLib function
  ///
  /// Returns a list of sticker sets attached to a file, including regular, mask, and emoji sticker sets. Currently, only animations, photos, and videos can have attached sticker sets.
  ///
  /// * [fileId]: File identifier.
  ///
  /// [StickerSets] is returned on completion.
class GetAttachedStickerSets extends TdFunction {
  
  /// **GetAttachedStickerSets** *(getAttachedStickerSets)* - TDLib function
  ///
  /// Returns a list of sticker sets attached to a file, including regular, mask, and emoji sticker sets. Currently, only animations, photos, and videos can have attached sticker sets.
  ///
  /// * [fileId]: File identifier.
  ///
  /// [StickerSets] is returned on completion.
  const GetAttachedStickerSets({
    required this.fileId,
  });
  
  /// File identifier
  final int fileId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_id": fileId,
      "@extra": extra,
    };
  }
  
  GetAttachedStickerSets copyWith({
    int? fileId,
  }) => GetAttachedStickerSets(
    fileId: fileId ?? this.fileId,
  );

  static const String constructor = 'getAttachedStickerSets';
  
  @override
  String getConstructor() => constructor;
}
