part of '../tdapi.dart';

/// **RemoveStickerFromSet** *(removeStickerFromSet)* - TDLib function
  ///
  /// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot.
  ///
  /// * [sticker]: Sticker.
  ///
  /// [Ok] is returned on completion.
class RemoveStickerFromSet extends TdFunction {
  
  /// **RemoveStickerFromSet** *(removeStickerFromSet)* - TDLib function
  ///
  /// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot.
  ///
  /// * [sticker]: Sticker.
  ///
  /// [Ok] is returned on completion.
  const RemoveStickerFromSet({
    required this.sticker,
  });
  
  /// Sticker
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  RemoveStickerFromSet copyWith({
    InputFile? sticker,
  }) => RemoveStickerFromSet(
    sticker: sticker ?? this.sticker,
  );

  static const String constructor = 'removeStickerFromSet';
  
  @override
  String getConstructor() => constructor;
}
