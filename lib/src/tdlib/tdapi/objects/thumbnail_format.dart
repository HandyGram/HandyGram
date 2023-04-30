part of '../tdapi.dart';

/// **ThumbnailFormat** *(thumbnailFormat)* - parent
  ///
  /// Describes format of a thumbnail.
class ThumbnailFormat extends TdObject {
  
  /// **ThumbnailFormat** *(thumbnailFormat)* - parent
  ///
  /// Describes format of a thumbnail.
  const ThumbnailFormat();
  
  /// a ThumbnailFormat return type can be :
  /// * [ThumbnailFormatJpeg]
  /// * [ThumbnailFormatGif]
  /// * [ThumbnailFormatMpeg4]
  /// * [ThumbnailFormatPng]
  /// * [ThumbnailFormatTgs]
  /// * [ThumbnailFormatWebm]
  /// * [ThumbnailFormatWebp]
  factory ThumbnailFormat.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ThumbnailFormatJpeg.constructor:
        return ThumbnailFormatJpeg.fromJson(json);
      case ThumbnailFormatGif.constructor:
        return ThumbnailFormatGif.fromJson(json);
      case ThumbnailFormatMpeg4.constructor:
        return ThumbnailFormatMpeg4.fromJson(json);
      case ThumbnailFormatPng.constructor:
        return ThumbnailFormatPng.fromJson(json);
      case ThumbnailFormatTgs.constructor:
        return ThumbnailFormatTgs.fromJson(json);
      case ThumbnailFormatWebm.constructor:
        return ThumbnailFormatWebm.fromJson(json);
      case ThumbnailFormatWebp.constructor:
        return ThumbnailFormatWebp.fromJson(json);
      default:
        return const ThumbnailFormat();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ThumbnailFormat copyWith() => const ThumbnailFormat();

  static const String constructor = 'thumbnailFormat';
  
  @override
  String getConstructor() => constructor;
}


/// **ThumbnailFormatJpeg** *(thumbnailFormatJpeg)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in JPEG format.
class ThumbnailFormatJpeg extends ThumbnailFormat {
  
  /// **ThumbnailFormatJpeg** *(thumbnailFormatJpeg)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in JPEG format.
  const ThumbnailFormatJpeg();
  
  /// Parse from a json
  factory ThumbnailFormatJpeg.fromJson(Map<String, dynamic> json) => const ThumbnailFormatJpeg();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ThumbnailFormatJpeg copyWith() => const ThumbnailFormatJpeg();

  static const String constructor = 'thumbnailFormatJpeg';
  
  @override
  String getConstructor() => constructor;
}


/// **ThumbnailFormatGif** *(thumbnailFormatGif)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in static GIF format. It will be used only for some bot inline results.
class ThumbnailFormatGif extends ThumbnailFormat {
  
  /// **ThumbnailFormatGif** *(thumbnailFormatGif)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in static GIF format. It will be used only for some bot inline results.
  const ThumbnailFormatGif();
  
  /// Parse from a json
  factory ThumbnailFormatGif.fromJson(Map<String, dynamic> json) => const ThumbnailFormatGif();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ThumbnailFormatGif copyWith() => const ThumbnailFormatGif();

  static const String constructor = 'thumbnailFormatGif';
  
  @override
  String getConstructor() => constructor;
}


/// **ThumbnailFormatMpeg4** *(thumbnailFormatMpeg4)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos.
class ThumbnailFormatMpeg4 extends ThumbnailFormat {
  
  /// **ThumbnailFormatMpeg4** *(thumbnailFormatMpeg4)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos.
  const ThumbnailFormatMpeg4();
  
  /// Parse from a json
  factory ThumbnailFormatMpeg4.fromJson(Map<String, dynamic> json) => const ThumbnailFormatMpeg4();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ThumbnailFormatMpeg4 copyWith() => const ThumbnailFormatMpeg4();

  static const String constructor = 'thumbnailFormatMpeg4';
  
  @override
  String getConstructor() => constructor;
}


/// **ThumbnailFormatPng** *(thumbnailFormatPng)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in PNG format. It will be used only for background patterns.
class ThumbnailFormatPng extends ThumbnailFormat {
  
  /// **ThumbnailFormatPng** *(thumbnailFormatPng)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in PNG format. It will be used only for background patterns.
  const ThumbnailFormatPng();
  
  /// Parse from a json
  factory ThumbnailFormatPng.fromJson(Map<String, dynamic> json) => const ThumbnailFormatPng();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ThumbnailFormatPng copyWith() => const ThumbnailFormatPng();

  static const String constructor = 'thumbnailFormatPng';
  
  @override
  String getConstructor() => constructor;
}


/// **ThumbnailFormatTgs** *(thumbnailFormatTgs)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in TGS format. It will be used only for TGS sticker sets.
class ThumbnailFormatTgs extends ThumbnailFormat {
  
  /// **ThumbnailFormatTgs** *(thumbnailFormatTgs)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in TGS format. It will be used only for TGS sticker sets.
  const ThumbnailFormatTgs();
  
  /// Parse from a json
  factory ThumbnailFormatTgs.fromJson(Map<String, dynamic> json) => const ThumbnailFormatTgs();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ThumbnailFormatTgs copyWith() => const ThumbnailFormatTgs();

  static const String constructor = 'thumbnailFormatTgs';
  
  @override
  String getConstructor() => constructor;
}


/// **ThumbnailFormatWebm** *(thumbnailFormatWebm)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in WEBM format. It will be used only for WEBM sticker sets.
class ThumbnailFormatWebm extends ThumbnailFormat {
  
  /// **ThumbnailFormatWebm** *(thumbnailFormatWebm)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in WEBM format. It will be used only for WEBM sticker sets.
  const ThumbnailFormatWebm();
  
  /// Parse from a json
  factory ThumbnailFormatWebm.fromJson(Map<String, dynamic> json) => const ThumbnailFormatWebm();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ThumbnailFormatWebm copyWith() => const ThumbnailFormatWebm();

  static const String constructor = 'thumbnailFormatWebm';
  
  @override
  String getConstructor() => constructor;
}


/// **ThumbnailFormatWebp** *(thumbnailFormatWebp)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in WEBP format. It will be used only for some stickers.
class ThumbnailFormatWebp extends ThumbnailFormat {
  
  /// **ThumbnailFormatWebp** *(thumbnailFormatWebp)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in WEBP format. It will be used only for some stickers.
  const ThumbnailFormatWebp();
  
  /// Parse from a json
  factory ThumbnailFormatWebp.fromJson(Map<String, dynamic> json) => const ThumbnailFormatWebp();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ThumbnailFormatWebp copyWith() => const ThumbnailFormatWebp();

  static const String constructor = 'thumbnailFormatWebp';
  
  @override
  String getConstructor() => constructor;
}
