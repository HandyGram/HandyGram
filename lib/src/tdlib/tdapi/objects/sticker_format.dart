part of '../tdapi.dart';

/// **StickerFormat** *(stickerFormat)* - parent
  ///
  /// Describes format of a sticker.
class StickerFormat extends TdObject {
  
  /// **StickerFormat** *(stickerFormat)* - parent
  ///
  /// Describes format of a sticker.
  const StickerFormat();
  
  /// a StickerFormat return type can be :
  /// * [StickerFormatWebp]
  /// * [StickerFormatTgs]
  /// * [StickerFormatWebm]
  factory StickerFormat.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StickerFormatWebp.constructor:
        return StickerFormatWebp.fromJson(json);
      case StickerFormatTgs.constructor:
        return StickerFormatTgs.fromJson(json);
      case StickerFormatWebm.constructor:
        return StickerFormatWebm.fromJson(json);
      default:
        return const StickerFormat();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  StickerFormat copyWith() => const StickerFormat();

  static const String constructor = 'stickerFormat';
  
  @override
  String getConstructor() => constructor;
}


/// **StickerFormatWebp** *(stickerFormatWebp)* - child of StickerFormat
  ///
  /// The sticker is an image in WEBP format.
class StickerFormatWebp extends StickerFormat {
  
  /// **StickerFormatWebp** *(stickerFormatWebp)* - child of StickerFormat
  ///
  /// The sticker is an image in WEBP format.
  const StickerFormatWebp();
  
  /// Parse from a json
  factory StickerFormatWebp.fromJson(Map<String, dynamic> json) => const StickerFormatWebp();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  StickerFormatWebp copyWith() => const StickerFormatWebp();

  static const String constructor = 'stickerFormatWebp';
  
  @override
  String getConstructor() => constructor;
}


/// **StickerFormatTgs** *(stickerFormatTgs)* - child of StickerFormat
  ///
  /// The sticker is an animation in TGS format.
class StickerFormatTgs extends StickerFormat {
  
  /// **StickerFormatTgs** *(stickerFormatTgs)* - child of StickerFormat
  ///
  /// The sticker is an animation in TGS format.
  const StickerFormatTgs();
  
  /// Parse from a json
  factory StickerFormatTgs.fromJson(Map<String, dynamic> json) => const StickerFormatTgs();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  StickerFormatTgs copyWith() => const StickerFormatTgs();

  static const String constructor = 'stickerFormatTgs';
  
  @override
  String getConstructor() => constructor;
}


/// **StickerFormatWebm** *(stickerFormatWebm)* - child of StickerFormat
  ///
  /// The sticker is a video in WEBM format.
class StickerFormatWebm extends StickerFormat {
  
  /// **StickerFormatWebm** *(stickerFormatWebm)* - child of StickerFormat
  ///
  /// The sticker is a video in WEBM format.
  const StickerFormatWebm();
  
  /// Parse from a json
  factory StickerFormatWebm.fromJson(Map<String, dynamic> json) => const StickerFormatWebm();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  StickerFormatWebm copyWith() => const StickerFormatWebm();

  static const String constructor = 'stickerFormatWebm';
  
  @override
  String getConstructor() => constructor;
}
