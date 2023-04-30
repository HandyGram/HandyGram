part of '../tdapi.dart';

/// **PremiumFeature** *(premiumFeature)* - parent
  ///
  /// Describes a feature available to Premium users.
class PremiumFeature extends TdObject {
  
  /// **PremiumFeature** *(premiumFeature)* - parent
  ///
  /// Describes a feature available to Premium users.
  const PremiumFeature();
  
  /// a PremiumFeature return type can be :
  /// * [PremiumFeatureIncreasedLimits]
  /// * [PremiumFeatureIncreasedUploadFileSize]
  /// * [PremiumFeatureImprovedDownloadSpeed]
  /// * [PremiumFeatureVoiceRecognition]
  /// * [PremiumFeatureDisabledAds]
  /// * [PremiumFeatureUniqueReactions]
  /// * [PremiumFeatureUniqueStickers]
  /// * [PremiumFeatureCustomEmoji]
  /// * [PremiumFeatureAdvancedChatManagement]
  /// * [PremiumFeatureProfileBadge]
  /// * [PremiumFeatureEmojiStatus]
  /// * [PremiumFeatureAnimatedProfilePhoto]
  /// * [PremiumFeatureForumTopicIcon]
  /// * [PremiumFeatureAppIcons]
  factory PremiumFeature.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PremiumFeatureIncreasedLimits.constructor:
        return PremiumFeatureIncreasedLimits.fromJson(json);
      case PremiumFeatureIncreasedUploadFileSize.constructor:
        return PremiumFeatureIncreasedUploadFileSize.fromJson(json);
      case PremiumFeatureImprovedDownloadSpeed.constructor:
        return PremiumFeatureImprovedDownloadSpeed.fromJson(json);
      case PremiumFeatureVoiceRecognition.constructor:
        return PremiumFeatureVoiceRecognition.fromJson(json);
      case PremiumFeatureDisabledAds.constructor:
        return PremiumFeatureDisabledAds.fromJson(json);
      case PremiumFeatureUniqueReactions.constructor:
        return PremiumFeatureUniqueReactions.fromJson(json);
      case PremiumFeatureUniqueStickers.constructor:
        return PremiumFeatureUniqueStickers.fromJson(json);
      case PremiumFeatureCustomEmoji.constructor:
        return PremiumFeatureCustomEmoji.fromJson(json);
      case PremiumFeatureAdvancedChatManagement.constructor:
        return PremiumFeatureAdvancedChatManagement.fromJson(json);
      case PremiumFeatureProfileBadge.constructor:
        return PremiumFeatureProfileBadge.fromJson(json);
      case PremiumFeatureEmojiStatus.constructor:
        return PremiumFeatureEmojiStatus.fromJson(json);
      case PremiumFeatureAnimatedProfilePhoto.constructor:
        return PremiumFeatureAnimatedProfilePhoto.fromJson(json);
      case PremiumFeatureForumTopicIcon.constructor:
        return PremiumFeatureForumTopicIcon.fromJson(json);
      case PremiumFeatureAppIcons.constructor:
        return PremiumFeatureAppIcons.fromJson(json);
      default:
        return const PremiumFeature();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PremiumFeature copyWith() => const PremiumFeature();

  static const String constructor = 'premiumFeature';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureIncreasedLimits** *(premiumFeatureIncreasedLimits)* - child of PremiumFeature
  ///
  /// Increased limits.
class PremiumFeatureIncreasedLimits extends PremiumFeature {
  
  /// **PremiumFeatureIncreasedLimits** *(premiumFeatureIncreasedLimits)* - child of PremiumFeature
  ///
  /// Increased limits.
  const PremiumFeatureIncreasedLimits();
  
  /// Parse from a json
  factory PremiumFeatureIncreasedLimits.fromJson(Map<String, dynamic> json) => const PremiumFeatureIncreasedLimits();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureIncreasedLimits copyWith() => const PremiumFeatureIncreasedLimits();

  static const String constructor = 'premiumFeatureIncreasedLimits';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureIncreasedUploadFileSize** *(premiumFeatureIncreasedUploadFileSize)* - child of PremiumFeature
  ///
  /// Increased maximum upload file size.
class PremiumFeatureIncreasedUploadFileSize extends PremiumFeature {
  
  /// **PremiumFeatureIncreasedUploadFileSize** *(premiumFeatureIncreasedUploadFileSize)* - child of PremiumFeature
  ///
  /// Increased maximum upload file size.
  const PremiumFeatureIncreasedUploadFileSize();
  
  /// Parse from a json
  factory PremiumFeatureIncreasedUploadFileSize.fromJson(Map<String, dynamic> json) => const PremiumFeatureIncreasedUploadFileSize();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureIncreasedUploadFileSize copyWith() => const PremiumFeatureIncreasedUploadFileSize();

  static const String constructor = 'premiumFeatureIncreasedUploadFileSize';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureImprovedDownloadSpeed** *(premiumFeatureImprovedDownloadSpeed)* - child of PremiumFeature
  ///
  /// Improved download speed.
class PremiumFeatureImprovedDownloadSpeed extends PremiumFeature {
  
  /// **PremiumFeatureImprovedDownloadSpeed** *(premiumFeatureImprovedDownloadSpeed)* - child of PremiumFeature
  ///
  /// Improved download speed.
  const PremiumFeatureImprovedDownloadSpeed();
  
  /// Parse from a json
  factory PremiumFeatureImprovedDownloadSpeed.fromJson(Map<String, dynamic> json) => const PremiumFeatureImprovedDownloadSpeed();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureImprovedDownloadSpeed copyWith() => const PremiumFeatureImprovedDownloadSpeed();

  static const String constructor = 'premiumFeatureImprovedDownloadSpeed';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureVoiceRecognition** *(premiumFeatureVoiceRecognition)* - child of PremiumFeature
  ///
  /// The ability to convert voice notes to text.
class PremiumFeatureVoiceRecognition extends PremiumFeature {
  
  /// **PremiumFeatureVoiceRecognition** *(premiumFeatureVoiceRecognition)* - child of PremiumFeature
  ///
  /// The ability to convert voice notes to text.
  const PremiumFeatureVoiceRecognition();
  
  /// Parse from a json
  factory PremiumFeatureVoiceRecognition.fromJson(Map<String, dynamic> json) => const PremiumFeatureVoiceRecognition();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureVoiceRecognition copyWith() => const PremiumFeatureVoiceRecognition();

  static const String constructor = 'premiumFeatureVoiceRecognition';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureDisabledAds** *(premiumFeatureDisabledAds)* - child of PremiumFeature
  ///
  /// Disabled ads.
class PremiumFeatureDisabledAds extends PremiumFeature {
  
  /// **PremiumFeatureDisabledAds** *(premiumFeatureDisabledAds)* - child of PremiumFeature
  ///
  /// Disabled ads.
  const PremiumFeatureDisabledAds();
  
  /// Parse from a json
  factory PremiumFeatureDisabledAds.fromJson(Map<String, dynamic> json) => const PremiumFeatureDisabledAds();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureDisabledAds copyWith() => const PremiumFeatureDisabledAds();

  static const String constructor = 'premiumFeatureDisabledAds';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureUniqueReactions** *(premiumFeatureUniqueReactions)* - child of PremiumFeature
  ///
  /// Allowed to use more reactions.
class PremiumFeatureUniqueReactions extends PremiumFeature {
  
  /// **PremiumFeatureUniqueReactions** *(premiumFeatureUniqueReactions)* - child of PremiumFeature
  ///
  /// Allowed to use more reactions.
  const PremiumFeatureUniqueReactions();
  
  /// Parse from a json
  factory PremiumFeatureUniqueReactions.fromJson(Map<String, dynamic> json) => const PremiumFeatureUniqueReactions();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureUniqueReactions copyWith() => const PremiumFeatureUniqueReactions();

  static const String constructor = 'premiumFeatureUniqueReactions';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureUniqueStickers** *(premiumFeatureUniqueStickers)* - child of PremiumFeature
  ///
  /// Allowed to use premium stickers with unique effects.
class PremiumFeatureUniqueStickers extends PremiumFeature {
  
  /// **PremiumFeatureUniqueStickers** *(premiumFeatureUniqueStickers)* - child of PremiumFeature
  ///
  /// Allowed to use premium stickers with unique effects.
  const PremiumFeatureUniqueStickers();
  
  /// Parse from a json
  factory PremiumFeatureUniqueStickers.fromJson(Map<String, dynamic> json) => const PremiumFeatureUniqueStickers();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureUniqueStickers copyWith() => const PremiumFeatureUniqueStickers();

  static const String constructor = 'premiumFeatureUniqueStickers';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureCustomEmoji** *(premiumFeatureCustomEmoji)* - child of PremiumFeature
  ///
  /// Allowed to use custom emoji stickers in message texts and captions.
class PremiumFeatureCustomEmoji extends PremiumFeature {
  
  /// **PremiumFeatureCustomEmoji** *(premiumFeatureCustomEmoji)* - child of PremiumFeature
  ///
  /// Allowed to use custom emoji stickers in message texts and captions.
  const PremiumFeatureCustomEmoji();
  
  /// Parse from a json
  factory PremiumFeatureCustomEmoji.fromJson(Map<String, dynamic> json) => const PremiumFeatureCustomEmoji();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureCustomEmoji copyWith() => const PremiumFeatureCustomEmoji();

  static const String constructor = 'premiumFeatureCustomEmoji';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureAdvancedChatManagement** *(premiumFeatureAdvancedChatManagement)* - child of PremiumFeature
  ///
  /// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram.
class PremiumFeatureAdvancedChatManagement extends PremiumFeature {
  
  /// **PremiumFeatureAdvancedChatManagement** *(premiumFeatureAdvancedChatManagement)* - child of PremiumFeature
  ///
  /// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram.
  const PremiumFeatureAdvancedChatManagement();
  
  /// Parse from a json
  factory PremiumFeatureAdvancedChatManagement.fromJson(Map<String, dynamic> json) => const PremiumFeatureAdvancedChatManagement();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureAdvancedChatManagement copyWith() => const PremiumFeatureAdvancedChatManagement();

  static const String constructor = 'premiumFeatureAdvancedChatManagement';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureProfileBadge** *(premiumFeatureProfileBadge)* - child of PremiumFeature
  ///
  /// A badge in the user's profile.
class PremiumFeatureProfileBadge extends PremiumFeature {
  
  /// **PremiumFeatureProfileBadge** *(premiumFeatureProfileBadge)* - child of PremiumFeature
  ///
  /// A badge in the user's profile.
  const PremiumFeatureProfileBadge();
  
  /// Parse from a json
  factory PremiumFeatureProfileBadge.fromJson(Map<String, dynamic> json) => const PremiumFeatureProfileBadge();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureProfileBadge copyWith() => const PremiumFeatureProfileBadge();

  static const String constructor = 'premiumFeatureProfileBadge';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureEmojiStatus** *(premiumFeatureEmojiStatus)* - child of PremiumFeature
  ///
  /// A emoji status shown along with the user's name.
class PremiumFeatureEmojiStatus extends PremiumFeature {
  
  /// **PremiumFeatureEmojiStatus** *(premiumFeatureEmojiStatus)* - child of PremiumFeature
  ///
  /// A emoji status shown along with the user's name.
  const PremiumFeatureEmojiStatus();
  
  /// Parse from a json
  factory PremiumFeatureEmojiStatus.fromJson(Map<String, dynamic> json) => const PremiumFeatureEmojiStatus();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureEmojiStatus copyWith() => const PremiumFeatureEmojiStatus();

  static const String constructor = 'premiumFeatureEmojiStatus';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureAnimatedProfilePhoto** *(premiumFeatureAnimatedProfilePhoto)* - child of PremiumFeature
  ///
  /// Profile photo animation on message and chat screens.
class PremiumFeatureAnimatedProfilePhoto extends PremiumFeature {
  
  /// **PremiumFeatureAnimatedProfilePhoto** *(premiumFeatureAnimatedProfilePhoto)* - child of PremiumFeature
  ///
  /// Profile photo animation on message and chat screens.
  const PremiumFeatureAnimatedProfilePhoto();
  
  /// Parse from a json
  factory PremiumFeatureAnimatedProfilePhoto.fromJson(Map<String, dynamic> json) => const PremiumFeatureAnimatedProfilePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureAnimatedProfilePhoto copyWith() => const PremiumFeatureAnimatedProfilePhoto();

  static const String constructor = 'premiumFeatureAnimatedProfilePhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureForumTopicIcon** *(premiumFeatureForumTopicIcon)* - child of PremiumFeature
  ///
  /// The ability to set a custom emoji as a forum topic icon.
class PremiumFeatureForumTopicIcon extends PremiumFeature {
  
  /// **PremiumFeatureForumTopicIcon** *(premiumFeatureForumTopicIcon)* - child of PremiumFeature
  ///
  /// The ability to set a custom emoji as a forum topic icon.
  const PremiumFeatureForumTopicIcon();
  
  /// Parse from a json
  factory PremiumFeatureForumTopicIcon.fromJson(Map<String, dynamic> json) => const PremiumFeatureForumTopicIcon();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureForumTopicIcon copyWith() => const PremiumFeatureForumTopicIcon();

  static const String constructor = 'premiumFeatureForumTopicIcon';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumFeatureAppIcons** *(premiumFeatureAppIcons)* - child of PremiumFeature
  ///
  /// Allowed to set a premium appllication icons.
class PremiumFeatureAppIcons extends PremiumFeature {
  
  /// **PremiumFeatureAppIcons** *(premiumFeatureAppIcons)* - child of PremiumFeature
  ///
  /// Allowed to set a premium appllication icons.
  const PremiumFeatureAppIcons();
  
  /// Parse from a json
  factory PremiumFeatureAppIcons.fromJson(Map<String, dynamic> json) => const PremiumFeatureAppIcons();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumFeatureAppIcons copyWith() => const PremiumFeatureAppIcons();

  static const String constructor = 'premiumFeatureAppIcons';
  
  @override
  String getConstructor() => constructor;
}
