part of '../tdapi.dart';

/// **StickerFormat** *(stickerFormat)* - parent
///
/// Describes format of a sticker.
sealed class StickerFormat extends TdObject {
  
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
      case StickerFormatWebp.objectType:
        return StickerFormatWebp.fromJson(json);
      case StickerFormatTgs.objectType:
        return StickerFormatTgs.fromJson(json);
      case StickerFormatWebm.objectType:
        return StickerFormatWebm.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of StickerFormat)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  StickerFormat copyWith();

  static const String objectType = 'stickerFormat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StickerFormatWebp** *(stickerFormatWebp)* - child of StickerFormat
///
/// The sticker is an image in WEBP format.
final class StickerFormatWebp extends StickerFormat {
  
  /// **StickerFormatWebp** *(stickerFormatWebp)* - child of StickerFormat
  ///
  /// The sticker is an image in WEBP format.
  const StickerFormatWebp();
  
  /// Parse from a json
  factory StickerFormatWebp.fromJson(Map<String, dynamic> json) => const StickerFormatWebp();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  StickerFormatWebp copyWith() => const StickerFormatWebp();

  static const String objectType = 'stickerFormatWebp';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StickerFormatTgs** *(stickerFormatTgs)* - child of StickerFormat
///
/// The sticker is an animation in TGS format.
final class StickerFormatTgs extends StickerFormat {
  
  /// **StickerFormatTgs** *(stickerFormatTgs)* - child of StickerFormat
  ///
  /// The sticker is an animation in TGS format.
  const StickerFormatTgs();
  
  /// Parse from a json
  factory StickerFormatTgs.fromJson(Map<String, dynamic> json) => const StickerFormatTgs();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  StickerFormatTgs copyWith() => const StickerFormatTgs();

  static const String objectType = 'stickerFormatTgs';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StickerFormatWebm** *(stickerFormatWebm)* - child of StickerFormat
///
/// The sticker is a video in WEBM format.
final class StickerFormatWebm extends StickerFormat {
  
  /// **StickerFormatWebm** *(stickerFormatWebm)* - child of StickerFormat
  ///
  /// The sticker is a video in WEBM format.
  const StickerFormatWebm();
  
  /// Parse from a json
  factory StickerFormatWebm.fromJson(Map<String, dynamic> json) => const StickerFormatWebm();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  StickerFormatWebm copyWith() => const StickerFormatWebm();

  static const String objectType = 'stickerFormatWebm';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
