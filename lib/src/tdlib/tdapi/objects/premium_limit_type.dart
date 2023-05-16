part of '../tdapi.dart';

/// **PremiumLimitType** *(premiumLimitType)* - parent
///
/// Describes type of a limit, increased for Premium users.
sealed class PremiumLimitType extends TdObject {
  
  /// **PremiumLimitType** *(premiumLimitType)* - parent
  ///
  /// Describes type of a limit, increased for Premium users.
  const PremiumLimitType();
  
  /// a PremiumLimitType return type can be :
  /// * [PremiumLimitTypeSupergroupCount]
  /// * [PremiumLimitTypePinnedChatCount]
  /// * [PremiumLimitTypeCreatedPublicChatCount]
  /// * [PremiumLimitTypeSavedAnimationCount]
  /// * [PremiumLimitTypeFavoriteStickerCount]
  /// * [PremiumLimitTypeChatFilterCount]
  /// * [PremiumLimitTypeChatFilterChosenChatCount]
  /// * [PremiumLimitTypePinnedArchivedChatCount]
  /// * [PremiumLimitTypeCaptionLength]
  /// * [PremiumLimitTypeBioLength]
  factory PremiumLimitType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PremiumLimitTypeSupergroupCount.objectType:
        return PremiumLimitTypeSupergroupCount.fromJson(json);
      case PremiumLimitTypePinnedChatCount.objectType:
        return PremiumLimitTypePinnedChatCount.fromJson(json);
      case PremiumLimitTypeCreatedPublicChatCount.objectType:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);
      case PremiumLimitTypeSavedAnimationCount.objectType:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);
      case PremiumLimitTypeFavoriteStickerCount.objectType:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);
      case PremiumLimitTypeChatFilterCount.objectType:
        return PremiumLimitTypeChatFilterCount.fromJson(json);
      case PremiumLimitTypeChatFilterChosenChatCount.objectType:
        return PremiumLimitTypeChatFilterChosenChatCount.fromJson(json);
      case PremiumLimitTypePinnedArchivedChatCount.objectType:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);
      case PremiumLimitTypeCaptionLength.objectType:
        return PremiumLimitTypeCaptionLength.fromJson(json);
      case PremiumLimitTypeBioLength.objectType:
        return PremiumLimitTypeBioLength.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PremiumLimitType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PremiumLimitType copyWith();

  static const String objectType = 'premiumLimitType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeSupergroupCount** *(premiumLimitTypeSupergroupCount)* - child of PremiumLimitType
///
/// The maximum number of joined supergroups and channels.
final class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeSupergroupCount** *(premiumLimitTypeSupergroupCount)* - child of PremiumLimitType
  ///
  /// The maximum number of joined supergroups and channels.
  const PremiumLimitTypeSupergroupCount();
  
  /// Parse from a json
  factory PremiumLimitTypeSupergroupCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeSupergroupCount();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypeSupergroupCount copyWith() => const PremiumLimitTypeSupergroupCount();

  static const String objectType = 'premiumLimitTypeSupergroupCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypePinnedChatCount** *(premiumLimitTypePinnedChatCount)* - child of PremiumLimitType
///
/// The maximum number of pinned chats in the main chat list.
final class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypePinnedChatCount** *(premiumLimitTypePinnedChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned chats in the main chat list.
  const PremiumLimitTypePinnedChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypePinnedChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypePinnedChatCount();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypePinnedChatCount copyWith() => const PremiumLimitTypePinnedChatCount();

  static const String objectType = 'premiumLimitTypePinnedChatCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeCreatedPublicChatCount** *(premiumLimitTypeCreatedPublicChatCount)* - child of PremiumLimitType
///
/// The maximum number of created public chats.
final class PremiumLimitTypeCreatedPublicChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeCreatedPublicChatCount** *(premiumLimitTypeCreatedPublicChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of created public chats.
  const PremiumLimitTypeCreatedPublicChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypeCreatedPublicChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeCreatedPublicChatCount();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypeCreatedPublicChatCount copyWith() => const PremiumLimitTypeCreatedPublicChatCount();

  static const String objectType = 'premiumLimitTypeCreatedPublicChatCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeSavedAnimationCount** *(premiumLimitTypeSavedAnimationCount)* - child of PremiumLimitType
///
/// The maximum number of saved animations.
final class PremiumLimitTypeSavedAnimationCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeSavedAnimationCount** *(premiumLimitTypeSavedAnimationCount)* - child of PremiumLimitType
  ///
  /// The maximum number of saved animations.
  const PremiumLimitTypeSavedAnimationCount();
  
  /// Parse from a json
  factory PremiumLimitTypeSavedAnimationCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeSavedAnimationCount();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypeSavedAnimationCount copyWith() => const PremiumLimitTypeSavedAnimationCount();

  static const String objectType = 'premiumLimitTypeSavedAnimationCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeFavoriteStickerCount** *(premiumLimitTypeFavoriteStickerCount)* - child of PremiumLimitType
///
/// The maximum number of favorite stickers.
final class PremiumLimitTypeFavoriteStickerCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeFavoriteStickerCount** *(premiumLimitTypeFavoriteStickerCount)* - child of PremiumLimitType
  ///
  /// The maximum number of favorite stickers.
  const PremiumLimitTypeFavoriteStickerCount();
  
  /// Parse from a json
  factory PremiumLimitTypeFavoriteStickerCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeFavoriteStickerCount();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypeFavoriteStickerCount copyWith() => const PremiumLimitTypeFavoriteStickerCount();

  static const String objectType = 'premiumLimitTypeFavoriteStickerCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeChatFilterCount** *(premiumLimitTypeChatFilterCount)* - child of PremiumLimitType
///
/// The maximum number of chat filters.
final class PremiumLimitTypeChatFilterCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeChatFilterCount** *(premiumLimitTypeChatFilterCount)* - child of PremiumLimitType
  ///
  /// The maximum number of chat filters.
  const PremiumLimitTypeChatFilterCount();
  
  /// Parse from a json
  factory PremiumLimitTypeChatFilterCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeChatFilterCount();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypeChatFilterCount copyWith() => const PremiumLimitTypeChatFilterCount();

  static const String objectType = 'premiumLimitTypeChatFilterCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeChatFilterChosenChatCount** *(premiumLimitTypeChatFilterChosenChatCount)* - child of PremiumLimitType
///
/// The maximum number of pinned and always included, or always excluded chats in a chat filter.
final class PremiumLimitTypeChatFilterChosenChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeChatFilterChosenChatCount** *(premiumLimitTypeChatFilterChosenChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned and always included, or always excluded chats in a chat filter.
  const PremiumLimitTypeChatFilterChosenChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypeChatFilterChosenChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeChatFilterChosenChatCount();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypeChatFilterChosenChatCount copyWith() => const PremiumLimitTypeChatFilterChosenChatCount();

  static const String objectType = 'premiumLimitTypeChatFilterChosenChatCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypePinnedArchivedChatCount** *(premiumLimitTypePinnedArchivedChatCount)* - child of PremiumLimitType
///
/// The maximum number of pinned chats in the archive chat list.
final class PremiumLimitTypePinnedArchivedChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypePinnedArchivedChatCount** *(premiumLimitTypePinnedArchivedChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned chats in the archive chat list.
  const PremiumLimitTypePinnedArchivedChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypePinnedArchivedChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypePinnedArchivedChatCount();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypePinnedArchivedChatCount copyWith() => const PremiumLimitTypePinnedArchivedChatCount();

  static const String objectType = 'premiumLimitTypePinnedArchivedChatCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeCaptionLength** *(premiumLimitTypeCaptionLength)* - child of PremiumLimitType
///
/// The maximum length of sent media caption.
final class PremiumLimitTypeCaptionLength extends PremiumLimitType {
  
  /// **PremiumLimitTypeCaptionLength** *(premiumLimitTypeCaptionLength)* - child of PremiumLimitType
  ///
  /// The maximum length of sent media caption.
  const PremiumLimitTypeCaptionLength();
  
  /// Parse from a json
  factory PremiumLimitTypeCaptionLength.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeCaptionLength();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypeCaptionLength copyWith() => const PremiumLimitTypeCaptionLength();

  static const String objectType = 'premiumLimitTypeCaptionLength';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumLimitTypeBioLength** *(premiumLimitTypeBioLength)* - child of PremiumLimitType
///
/// The maximum length of the user's bio.
final class PremiumLimitTypeBioLength extends PremiumLimitType {
  
  /// **PremiumLimitTypeBioLength** *(premiumLimitTypeBioLength)* - child of PremiumLimitType
  ///
  /// The maximum length of the user's bio.
  const PremiumLimitTypeBioLength();
  
  /// Parse from a json
  factory PremiumLimitTypeBioLength.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeBioLength();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumLimitTypeBioLength copyWith() => const PremiumLimitTypeBioLength();

  static const String objectType = 'premiumLimitTypeBioLength';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
