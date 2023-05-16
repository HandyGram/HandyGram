part of '../tdapi.dart';

/// **StickerType** *(stickerType)* - parent
///
/// Describes type of a sticker.
sealed class StickerType extends TdObject {
  
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
      case StickerTypeRegular.objectType:
        return StickerTypeRegular.fromJson(json);
      case StickerTypeMask.objectType:
        return StickerTypeMask.fromJson(json);
      case StickerTypeCustomEmoji.objectType:
        return StickerTypeCustomEmoji.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of StickerType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  StickerType copyWith();

  static const String objectType = 'stickerType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StickerTypeRegular** *(stickerTypeRegular)* - child of StickerType
///
/// The sticker is a regular sticker.
final class StickerTypeRegular extends StickerType {
  
  /// **StickerTypeRegular** *(stickerTypeRegular)* - child of StickerType
  ///
  /// The sticker is a regular sticker.
  const StickerTypeRegular();
  
  /// Parse from a json
  factory StickerTypeRegular.fromJson(Map<String, dynamic> json) => const StickerTypeRegular();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  StickerTypeRegular copyWith() => const StickerTypeRegular();

  static const String objectType = 'stickerTypeRegular';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StickerTypeMask** *(stickerTypeMask)* - child of StickerType
///
/// The sticker is a mask in WEBP format to be placed on photos or videos.
final class StickerTypeMask extends StickerType {
  
  /// **StickerTypeMask** *(stickerTypeMask)* - child of StickerType
  ///
  /// The sticker is a mask in WEBP format to be placed on photos or videos.
  const StickerTypeMask();
  
  /// Parse from a json
  factory StickerTypeMask.fromJson(Map<String, dynamic> json) => const StickerTypeMask();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  StickerTypeMask copyWith() => const StickerTypeMask();

  static const String objectType = 'stickerTypeMask';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StickerTypeCustomEmoji** *(stickerTypeCustomEmoji)* - child of StickerType
///
/// The sticker is a custom emoji to be used inside message text and caption.
final class StickerTypeCustomEmoji extends StickerType {
  
  /// **StickerTypeCustomEmoji** *(stickerTypeCustomEmoji)* - child of StickerType
  ///
  /// The sticker is a custom emoji to be used inside message text and caption.
  const StickerTypeCustomEmoji();
  
  /// Parse from a json
  factory StickerTypeCustomEmoji.fromJson(Map<String, dynamic> json) => const StickerTypeCustomEmoji();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  StickerTypeCustomEmoji copyWith() => const StickerTypeCustomEmoji();

  static const String objectType = 'stickerTypeCustomEmoji';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
