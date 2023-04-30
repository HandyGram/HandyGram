part of '../tdapi.dart';

/// **PremiumLimitType** *(premiumLimitType)* - parent
  ///
  /// Describes type of a limit, increased for Premium users.
class PremiumLimitType extends TdObject {
  
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
      case PremiumLimitTypeSupergroupCount.constructor:
        return PremiumLimitTypeSupergroupCount.fromJson(json);
      case PremiumLimitTypePinnedChatCount.constructor:
        return PremiumLimitTypePinnedChatCount.fromJson(json);
      case PremiumLimitTypeCreatedPublicChatCount.constructor:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);
      case PremiumLimitTypeSavedAnimationCount.constructor:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);
      case PremiumLimitTypeFavoriteStickerCount.constructor:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);
      case PremiumLimitTypeChatFilterCount.constructor:
        return PremiumLimitTypeChatFilterCount.fromJson(json);
      case PremiumLimitTypeChatFilterChosenChatCount.constructor:
        return PremiumLimitTypeChatFilterChosenChatCount.fromJson(json);
      case PremiumLimitTypePinnedArchivedChatCount.constructor:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);
      case PremiumLimitTypeCaptionLength.constructor:
        return PremiumLimitTypeCaptionLength.fromJson(json);
      case PremiumLimitTypeBioLength.constructor:
        return PremiumLimitTypeBioLength.fromJson(json);
      default:
        return const PremiumLimitType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PremiumLimitType copyWith() => const PremiumLimitType();

  static const String constructor = 'premiumLimitType';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypeSupergroupCount** *(premiumLimitTypeSupergroupCount)* - child of PremiumLimitType
  ///
  /// The maximum number of joined supergroups and channels.
class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeSupergroupCount** *(premiumLimitTypeSupergroupCount)* - child of PremiumLimitType
  ///
  /// The maximum number of joined supergroups and channels.
  const PremiumLimitTypeSupergroupCount();
  
  /// Parse from a json
  factory PremiumLimitTypeSupergroupCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeSupergroupCount();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypeSupergroupCount copyWith() => const PremiumLimitTypeSupergroupCount();

  static const String constructor = 'premiumLimitTypeSupergroupCount';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypePinnedChatCount** *(premiumLimitTypePinnedChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned chats in the main chat list.
class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypePinnedChatCount** *(premiumLimitTypePinnedChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned chats in the main chat list.
  const PremiumLimitTypePinnedChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypePinnedChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypePinnedChatCount();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypePinnedChatCount copyWith() => const PremiumLimitTypePinnedChatCount();

  static const String constructor = 'premiumLimitTypePinnedChatCount';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypeCreatedPublicChatCount** *(premiumLimitTypeCreatedPublicChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of created public chats.
class PremiumLimitTypeCreatedPublicChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeCreatedPublicChatCount** *(premiumLimitTypeCreatedPublicChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of created public chats.
  const PremiumLimitTypeCreatedPublicChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypeCreatedPublicChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeCreatedPublicChatCount();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypeCreatedPublicChatCount copyWith() => const PremiumLimitTypeCreatedPublicChatCount();

  static const String constructor = 'premiumLimitTypeCreatedPublicChatCount';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypeSavedAnimationCount** *(premiumLimitTypeSavedAnimationCount)* - child of PremiumLimitType
  ///
  /// The maximum number of saved animations.
class PremiumLimitTypeSavedAnimationCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeSavedAnimationCount** *(premiumLimitTypeSavedAnimationCount)* - child of PremiumLimitType
  ///
  /// The maximum number of saved animations.
  const PremiumLimitTypeSavedAnimationCount();
  
  /// Parse from a json
  factory PremiumLimitTypeSavedAnimationCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeSavedAnimationCount();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypeSavedAnimationCount copyWith() => const PremiumLimitTypeSavedAnimationCount();

  static const String constructor = 'premiumLimitTypeSavedAnimationCount';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypeFavoriteStickerCount** *(premiumLimitTypeFavoriteStickerCount)* - child of PremiumLimitType
  ///
  /// The maximum number of favorite stickers.
class PremiumLimitTypeFavoriteStickerCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeFavoriteStickerCount** *(premiumLimitTypeFavoriteStickerCount)* - child of PremiumLimitType
  ///
  /// The maximum number of favorite stickers.
  const PremiumLimitTypeFavoriteStickerCount();
  
  /// Parse from a json
  factory PremiumLimitTypeFavoriteStickerCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeFavoriteStickerCount();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypeFavoriteStickerCount copyWith() => const PremiumLimitTypeFavoriteStickerCount();

  static const String constructor = 'premiumLimitTypeFavoriteStickerCount';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypeChatFilterCount** *(premiumLimitTypeChatFilterCount)* - child of PremiumLimitType
  ///
  /// The maximum number of chat filters.
class PremiumLimitTypeChatFilterCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeChatFilterCount** *(premiumLimitTypeChatFilterCount)* - child of PremiumLimitType
  ///
  /// The maximum number of chat filters.
  const PremiumLimitTypeChatFilterCount();
  
  /// Parse from a json
  factory PremiumLimitTypeChatFilterCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeChatFilterCount();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypeChatFilterCount copyWith() => const PremiumLimitTypeChatFilterCount();

  static const String constructor = 'premiumLimitTypeChatFilterCount';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypeChatFilterChosenChatCount** *(premiumLimitTypeChatFilterChosenChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned and always included, or always excluded chats in a chat filter.
class PremiumLimitTypeChatFilterChosenChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypeChatFilterChosenChatCount** *(premiumLimitTypeChatFilterChosenChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned and always included, or always excluded chats in a chat filter.
  const PremiumLimitTypeChatFilterChosenChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypeChatFilterChosenChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeChatFilterChosenChatCount();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypeChatFilterChosenChatCount copyWith() => const PremiumLimitTypeChatFilterChosenChatCount();

  static const String constructor = 'premiumLimitTypeChatFilterChosenChatCount';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypePinnedArchivedChatCount** *(premiumLimitTypePinnedArchivedChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned chats in the archive chat list.
class PremiumLimitTypePinnedArchivedChatCount extends PremiumLimitType {
  
  /// **PremiumLimitTypePinnedArchivedChatCount** *(premiumLimitTypePinnedArchivedChatCount)* - child of PremiumLimitType
  ///
  /// The maximum number of pinned chats in the archive chat list.
  const PremiumLimitTypePinnedArchivedChatCount();
  
  /// Parse from a json
  factory PremiumLimitTypePinnedArchivedChatCount.fromJson(Map<String, dynamic> json) => const PremiumLimitTypePinnedArchivedChatCount();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypePinnedArchivedChatCount copyWith() => const PremiumLimitTypePinnedArchivedChatCount();

  static const String constructor = 'premiumLimitTypePinnedArchivedChatCount';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypeCaptionLength** *(premiumLimitTypeCaptionLength)* - child of PremiumLimitType
  ///
  /// The maximum length of sent media caption.
class PremiumLimitTypeCaptionLength extends PremiumLimitType {
  
  /// **PremiumLimitTypeCaptionLength** *(premiumLimitTypeCaptionLength)* - child of PremiumLimitType
  ///
  /// The maximum length of sent media caption.
  const PremiumLimitTypeCaptionLength();
  
  /// Parse from a json
  factory PremiumLimitTypeCaptionLength.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeCaptionLength();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypeCaptionLength copyWith() => const PremiumLimitTypeCaptionLength();

  static const String constructor = 'premiumLimitTypeCaptionLength';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumLimitTypeBioLength** *(premiumLimitTypeBioLength)* - child of PremiumLimitType
  ///
  /// The maximum length of the user's bio.
class PremiumLimitTypeBioLength extends PremiumLimitType {
  
  /// **PremiumLimitTypeBioLength** *(premiumLimitTypeBioLength)* - child of PremiumLimitType
  ///
  /// The maximum length of the user's bio.
  const PremiumLimitTypeBioLength();
  
  /// Parse from a json
  factory PremiumLimitTypeBioLength.fromJson(Map<String, dynamic> json) => const PremiumLimitTypeBioLength();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumLimitTypeBioLength copyWith() => const PremiumLimitTypeBioLength();

  static const String constructor = 'premiumLimitTypeBioLength';
  
  @override
  String getConstructor() => constructor;
}
