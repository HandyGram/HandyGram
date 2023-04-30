part of '../tdapi.dart';

/// **InputSticker** *(inputSticker)* - basic class
  ///
  /// A sticker to be added to a sticker set.
  ///
  /// * [sticker]: File with the sticker; must fit in a 512x512 square. For WEBP stickers and masks the file must be in PNG format, which will be converted to WEBP server-side.. Otherwise, the file must be local or uploaded within a week. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements.
  /// * [emojis]: Emojis corresponding to the sticker.
  /// * [format]: Sticker format.
  /// * [maskPosition]: Position where the mask is placed; pass null if not specified *(optional)*.
class InputSticker extends TdObject {
  
  /// **InputSticker** *(inputSticker)* - basic class
  ///
  /// A sticker to be added to a sticker set.
  ///
  /// * [sticker]: File with the sticker; must fit in a 512x512 square. For WEBP stickers and masks the file must be in PNG format, which will be converted to WEBP server-side.. Otherwise, the file must be local or uploaded within a week. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements.
  /// * [emojis]: Emojis corresponding to the sticker.
  /// * [format]: Sticker format.
  /// * [maskPosition]: Position where the mask is placed; pass null if not specified *(optional)*.
  const InputSticker({
    required this.sticker,
    required this.emojis,
    required this.format,
    this.maskPosition,
  });
  
  /// File with the sticker; must fit in a 512x512 square. For WEBP stickers and masks the file must be in PNG format, which will be converted to WEBP server-side.. Otherwise, the file must be local or uploaded within a week. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
  final InputFile sticker;

  /// Emojis corresponding to the sticker
  final String emojis;

  /// Sticker format
  final StickerFormat format;

  /// Position where the mask is placed; pass null if not specified
  final MaskPosition? maskPosition;
  
  /// Parse from a json
  factory InputSticker.fromJson(Map<String, dynamic> json) => InputSticker(
    sticker: InputFile.fromJson(json['sticker']),
    emojis: json['emojis'],
    format: StickerFormat.fromJson(json['format']),
    maskPosition: json['mask_position'] == null ? null : MaskPosition.fromJson(json['mask_position']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sticker": sticker.toJson(),
      "emojis": emojis,
      "format": format.toJson(),
      "mask_position": maskPosition?.toJson(),
    };
  }
  
  InputSticker copyWith({
    InputFile? sticker,
    String? emojis,
    StickerFormat? format,
    MaskPosition? maskPosition,
  }) => InputSticker(
    sticker: sticker ?? this.sticker,
    emojis: emojis ?? this.emojis,
    format: format ?? this.format,
    maskPosition: maskPosition ?? this.maskPosition,
  );

  static const String constructor = 'inputSticker';
  
  @override
  String getConstructor() => constructor;
}
