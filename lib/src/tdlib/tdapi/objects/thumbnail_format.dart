part of '../tdapi.dart';

/// **ThumbnailFormat** *(thumbnailFormat)* - parent
///
/// Describes format of a thumbnail.
sealed class ThumbnailFormat extends TdObject {
  
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
      case ThumbnailFormatJpeg.objectType:
        return ThumbnailFormatJpeg.fromJson(json);
      case ThumbnailFormatGif.objectType:
        return ThumbnailFormatGif.fromJson(json);
      case ThumbnailFormatMpeg4.objectType:
        return ThumbnailFormatMpeg4.fromJson(json);
      case ThumbnailFormatPng.objectType:
        return ThumbnailFormatPng.fromJson(json);
      case ThumbnailFormatTgs.objectType:
        return ThumbnailFormatTgs.fromJson(json);
      case ThumbnailFormatWebm.objectType:
        return ThumbnailFormatWebm.fromJson(json);
      case ThumbnailFormatWebp.objectType:
        return ThumbnailFormatWebp.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ThumbnailFormat)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ThumbnailFormat copyWith();

  static const String objectType = 'thumbnailFormat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ThumbnailFormatJpeg** *(thumbnailFormatJpeg)* - child of ThumbnailFormat
///
/// The thumbnail is in JPEG format.
final class ThumbnailFormatJpeg extends ThumbnailFormat {
  
  /// **ThumbnailFormatJpeg** *(thumbnailFormatJpeg)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in JPEG format.
  const ThumbnailFormatJpeg();
  
  /// Parse from a json
  factory ThumbnailFormatJpeg.fromJson(Map<String, dynamic> json) => const ThumbnailFormatJpeg();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ThumbnailFormatJpeg copyWith() => const ThumbnailFormatJpeg();

  static const String objectType = 'thumbnailFormatJpeg';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ThumbnailFormatGif** *(thumbnailFormatGif)* - child of ThumbnailFormat
///
/// The thumbnail is in static GIF format. It will be used only for some bot inline results.
final class ThumbnailFormatGif extends ThumbnailFormat {
  
  /// **ThumbnailFormatGif** *(thumbnailFormatGif)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in static GIF format. It will be used only for some bot inline results.
  const ThumbnailFormatGif();
  
  /// Parse from a json
  factory ThumbnailFormatGif.fromJson(Map<String, dynamic> json) => const ThumbnailFormatGif();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ThumbnailFormatGif copyWith() => const ThumbnailFormatGif();

  static const String objectType = 'thumbnailFormatGif';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ThumbnailFormatMpeg4** *(thumbnailFormatMpeg4)* - child of ThumbnailFormat
///
/// The thumbnail is in MPEG4 format. It will be used only for some animations and videos.
final class ThumbnailFormatMpeg4 extends ThumbnailFormat {
  
  /// **ThumbnailFormatMpeg4** *(thumbnailFormatMpeg4)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos.
  const ThumbnailFormatMpeg4();
  
  /// Parse from a json
  factory ThumbnailFormatMpeg4.fromJson(Map<String, dynamic> json) => const ThumbnailFormatMpeg4();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ThumbnailFormatMpeg4 copyWith() => const ThumbnailFormatMpeg4();

  static const String objectType = 'thumbnailFormatMpeg4';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ThumbnailFormatPng** *(thumbnailFormatPng)* - child of ThumbnailFormat
///
/// The thumbnail is in PNG format. It will be used only for background patterns.
final class ThumbnailFormatPng extends ThumbnailFormat {
  
  /// **ThumbnailFormatPng** *(thumbnailFormatPng)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in PNG format. It will be used only for background patterns.
  const ThumbnailFormatPng();
  
  /// Parse from a json
  factory ThumbnailFormatPng.fromJson(Map<String, dynamic> json) => const ThumbnailFormatPng();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ThumbnailFormatPng copyWith() => const ThumbnailFormatPng();

  static const String objectType = 'thumbnailFormatPng';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ThumbnailFormatTgs** *(thumbnailFormatTgs)* - child of ThumbnailFormat
///
/// The thumbnail is in TGS format. It will be used only for TGS sticker sets.
final class ThumbnailFormatTgs extends ThumbnailFormat {
  
  /// **ThumbnailFormatTgs** *(thumbnailFormatTgs)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in TGS format. It will be used only for TGS sticker sets.
  const ThumbnailFormatTgs();
  
  /// Parse from a json
  factory ThumbnailFormatTgs.fromJson(Map<String, dynamic> json) => const ThumbnailFormatTgs();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ThumbnailFormatTgs copyWith() => const ThumbnailFormatTgs();

  static const String objectType = 'thumbnailFormatTgs';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ThumbnailFormatWebm** *(thumbnailFormatWebm)* - child of ThumbnailFormat
///
/// The thumbnail is in WEBM format. It will be used only for WEBM sticker sets.
final class ThumbnailFormatWebm extends ThumbnailFormat {
  
  /// **ThumbnailFormatWebm** *(thumbnailFormatWebm)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in WEBM format. It will be used only for WEBM sticker sets.
  const ThumbnailFormatWebm();
  
  /// Parse from a json
  factory ThumbnailFormatWebm.fromJson(Map<String, dynamic> json) => const ThumbnailFormatWebm();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ThumbnailFormatWebm copyWith() => const ThumbnailFormatWebm();

  static const String objectType = 'thumbnailFormatWebm';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ThumbnailFormatWebp** *(thumbnailFormatWebp)* - child of ThumbnailFormat
///
/// The thumbnail is in WEBP format. It will be used only for some stickers.
final class ThumbnailFormatWebp extends ThumbnailFormat {
  
  /// **ThumbnailFormatWebp** *(thumbnailFormatWebp)* - child of ThumbnailFormat
  ///
  /// The thumbnail is in WEBP format. It will be used only for some stickers.
  const ThumbnailFormatWebp();
  
  /// Parse from a json
  factory ThumbnailFormatWebp.fromJson(Map<String, dynamic> json) => const ThumbnailFormatWebp();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ThumbnailFormatWebp copyWith() => const ThumbnailFormatWebp();

  static const String objectType = 'thumbnailFormatWebp';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
