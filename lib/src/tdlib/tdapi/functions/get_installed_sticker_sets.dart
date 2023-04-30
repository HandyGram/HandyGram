part of '../tdapi.dart';

/// **GetInstalledStickerSets** *(getInstalledStickerSets)* - TDLib function
  ///
  /// Returns a list of installed sticker sets.
  ///
  /// * [stickerType]: Type of the sticker sets to return.
  ///
  /// [StickerSets] is returned on completion.
class GetInstalledStickerSets extends TdFunction {
  
  /// **GetInstalledStickerSets** *(getInstalledStickerSets)* - TDLib function
  ///
  /// Returns a list of installed sticker sets.
  ///
  /// * [stickerType]: Type of the sticker sets to return.
  ///
  /// [StickerSets] is returned on completion.
  const GetInstalledStickerSets({
    required this.stickerType,
  });
  
  /// Type of the sticker sets to return
  final StickerType stickerType;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sticker_type": stickerType.toJson(),
      "@extra": extra,
    };
  }
  
  GetInstalledStickerSets copyWith({
    StickerType? stickerType,
  }) => GetInstalledStickerSets(
    stickerType: stickerType ?? this.stickerType,
  );

  static const String constructor = 'getInstalledStickerSets';
  
  @override
  String getConstructor() => constructor;
}
