part of '../tdapi.dart';

/// **StickerType** *(stickerType)* - parent
  ///
  /// Describes type of a sticker.
class StickerType extends TdObject {
  
  /// **StickerType** *(stickerType)* - parent
  ///
  /// Describes type of a sticker.
  const StickerType();
  
  /// a StickerType return type can be :
  /// * [StickerTypeRegular]
  /// * [StickerTypeMask]
  /// * [StickerTypeCustomEmoji]
  factory StickerType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StickerTypeRegular.constructor:
        return StickerTypeRegular.fromJson(json);
      case StickerTypeMask.constructor:
        return StickerTypeMask.fromJson(json);
      case StickerTypeCustomEmoji.constructor:
        return StickerTypeCustomEmoji.fromJson(json);
      default:
        return const StickerType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  StickerType copyWith() => const StickerType();

  static const String constructor = 'stickerType';
  
  @override
  String getConstructor() => constructor;
}


/// **StickerTypeRegular** *(stickerTypeRegular)* - child of StickerType
  ///
  /// The sticker is a regular sticker.
class StickerTypeRegular extends StickerType {
  
  /// **StickerTypeRegular** *(stickerTypeRegular)* - child of StickerType
  ///
  /// The sticker is a regular sticker.
  const StickerTypeRegular();
  
  /// Parse from a json
  factory StickerTypeRegular.fromJson(Map<String, dynamic> json) => const StickerTypeRegular();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  StickerTypeRegular copyWith() => const StickerTypeRegular();

  static const String constructor = 'stickerTypeRegular';
  
  @override
  String getConstructor() => constructor;
}


/// **StickerTypeMask** *(stickerTypeMask)* - child of StickerType
  ///
  /// The sticker is a mask in WEBP format to be placed on photos or videos.
class StickerTypeMask extends StickerType {
  
  /// **StickerTypeMask** *(stickerTypeMask)* - child of StickerType
  ///
  /// The sticker is a mask in WEBP format to be placed on photos or videos.
  const StickerTypeMask();
  
  /// Parse from a json
  factory StickerTypeMask.fromJson(Map<String, dynamic> json) => const StickerTypeMask();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  StickerTypeMask copyWith() => const StickerTypeMask();

  static const String constructor = 'stickerTypeMask';
  
  @override
  String getConstructor() => constructor;
}


/// **StickerTypeCustomEmoji** *(stickerTypeCustomEmoji)* - child of StickerType
  ///
  /// The sticker is a custom emoji to be used inside message text and caption.
class StickerTypeCustomEmoji extends StickerType {
  
  /// **StickerTypeCustomEmoji** *(stickerTypeCustomEmoji)* - child of StickerType
  ///
  /// The sticker is a custom emoji to be used inside message text and caption.
  const StickerTypeCustomEmoji();
  
  /// Parse from a json
  factory StickerTypeCustomEmoji.fromJson(Map<String, dynamic> json) => const StickerTypeCustomEmoji();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  StickerTypeCustomEmoji copyWith() => const StickerTypeCustomEmoji();

  static const String constructor = 'stickerTypeCustomEmoji';
  
  @override
  String getConstructor() => constructor;
}
