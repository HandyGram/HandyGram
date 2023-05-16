part of '../tdapi.dart';

/// **PremiumFeature** *(premiumFeature)* - parent
///
/// Describes a feature available to Premium users.
sealed class PremiumFeature extends TdObject {
  
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
      case PremiumFeatureIncreasedLimits.objectType:
        return PremiumFeatureIncreasedLimits.fromJson(json);
      case PremiumFeatureIncreasedUploadFileSize.objectType:
        return PremiumFeatureIncreasedUploadFileSize.fromJson(json);
      case PremiumFeatureImprovedDownloadSpeed.objectType:
        return PremiumFeatureImprovedDownloadSpeed.fromJson(json);
      case PremiumFeatureVoiceRecognition.objectType:
        return PremiumFeatureVoiceRecognition.fromJson(json);
      case PremiumFeatureDisabledAds.objectType:
        return PremiumFeatureDisabledAds.fromJson(json);
      case PremiumFeatureUniqueReactions.objectType:
        return PremiumFeatureUniqueReactions.fromJson(json);
      case PremiumFeatureUniqueStickers.objectType:
        return PremiumFeatureUniqueStickers.fromJson(json);
      case PremiumFeatureCustomEmoji.objectType:
        return PremiumFeatureCustomEmoji.fromJson(json);
      case PremiumFeatureAdvancedChatManagement.objectType:
        return PremiumFeatureAdvancedChatManagement.fromJson(json);
      case PremiumFeatureProfileBadge.objectType:
        return PremiumFeatureProfileBadge.fromJson(json);
      case PremiumFeatureEmojiStatus.objectType:
        return PremiumFeatureEmojiStatus.fromJson(json);
      case PremiumFeatureAnimatedProfilePhoto.objectType:
        return PremiumFeatureAnimatedProfilePhoto.fromJson(json);
      case PremiumFeatureForumTopicIcon.objectType:
        return PremiumFeatureForumTopicIcon.fromJson(json);
      case PremiumFeatureAppIcons.objectType:
        return PremiumFeatureAppIcons.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PremiumFeature)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PremiumFeature copyWith();

  static const String objectType = 'premiumFeature';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureIncreasedLimits** *(premiumFeatureIncreasedLimits)* - child of PremiumFeature
///
/// Increased limits.
final class PremiumFeatureIncreasedLimits extends PremiumFeature {
  
  /// **PremiumFeatureIncreasedLimits** *(premiumFeatureIncreasedLimits)* - child of PremiumFeature
  ///
  /// Increased limits.
  const PremiumFeatureIncreasedLimits();
  
  /// Parse from a json
  factory PremiumFeatureIncreasedLimits.fromJson(Map<String, dynamic> json) => const PremiumFeatureIncreasedLimits();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureIncreasedLimits copyWith() => const PremiumFeatureIncreasedLimits();

  static const String objectType = 'premiumFeatureIncreasedLimits';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureIncreasedUploadFileSize** *(premiumFeatureIncreasedUploadFileSize)* - child of PremiumFeature
///
/// Increased maximum upload file size.
final class PremiumFeatureIncreasedUploadFileSize extends PremiumFeature {
  
  /// **PremiumFeatureIncreasedUploadFileSize** *(premiumFeatureIncreasedUploadFileSize)* - child of PremiumFeature
  ///
  /// Increased maximum upload file size.
  const PremiumFeatureIncreasedUploadFileSize();
  
  /// Parse from a json
  factory PremiumFeatureIncreasedUploadFileSize.fromJson(Map<String, dynamic> json) => const PremiumFeatureIncreasedUploadFileSize();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureIncreasedUploadFileSize copyWith() => const PremiumFeatureIncreasedUploadFileSize();

  static const String objectType = 'premiumFeatureIncreasedUploadFileSize';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureImprovedDownloadSpeed** *(premiumFeatureImprovedDownloadSpeed)* - child of PremiumFeature
///
/// Improved download speed.
final class PremiumFeatureImprovedDownloadSpeed extends PremiumFeature {
  
  /// **PremiumFeatureImprovedDownloadSpeed** *(premiumFeatureImprovedDownloadSpeed)* - child of PremiumFeature
  ///
  /// Improved download speed.
  const PremiumFeatureImprovedDownloadSpeed();
  
  /// Parse from a json
  factory PremiumFeatureImprovedDownloadSpeed.fromJson(Map<String, dynamic> json) => const PremiumFeatureImprovedDownloadSpeed();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureImprovedDownloadSpeed copyWith() => const PremiumFeatureImprovedDownloadSpeed();

  static const String objectType = 'premiumFeatureImprovedDownloadSpeed';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureVoiceRecognition** *(premiumFeatureVoiceRecognition)* - child of PremiumFeature
///
/// The ability to convert voice notes to text.
final class PremiumFeatureVoiceRecognition extends PremiumFeature {
  
  /// **PremiumFeatureVoiceRecognition** *(premiumFeatureVoiceRecognition)* - child of PremiumFeature
  ///
  /// The ability to convert voice notes to text.
  const PremiumFeatureVoiceRecognition();
  
  /// Parse from a json
  factory PremiumFeatureVoiceRecognition.fromJson(Map<String, dynamic> json) => const PremiumFeatureVoiceRecognition();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureVoiceRecognition copyWith() => const PremiumFeatureVoiceRecognition();

  static const String objectType = 'premiumFeatureVoiceRecognition';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureDisabledAds** *(premiumFeatureDisabledAds)* - child of PremiumFeature
///
/// Disabled ads.
final class PremiumFeatureDisabledAds extends PremiumFeature {
  
  /// **PremiumFeatureDisabledAds** *(premiumFeatureDisabledAds)* - child of PremiumFeature
  ///
  /// Disabled ads.
  const PremiumFeatureDisabledAds();
  
  /// Parse from a json
  factory PremiumFeatureDisabledAds.fromJson(Map<String, dynamic> json) => const PremiumFeatureDisabledAds();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureDisabledAds copyWith() => const PremiumFeatureDisabledAds();

  static const String objectType = 'premiumFeatureDisabledAds';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureUniqueReactions** *(premiumFeatureUniqueReactions)* - child of PremiumFeature
///
/// Allowed to use more reactions.
final class PremiumFeatureUniqueReactions extends PremiumFeature {
  
  /// **PremiumFeatureUniqueReactions** *(premiumFeatureUniqueReactions)* - child of PremiumFeature
  ///
  /// Allowed to use more reactions.
  const PremiumFeatureUniqueReactions();
  
  /// Parse from a json
  factory PremiumFeatureUniqueReactions.fromJson(Map<String, dynamic> json) => const PremiumFeatureUniqueReactions();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureUniqueReactions copyWith() => const PremiumFeatureUniqueReactions();

  static const String objectType = 'premiumFeatureUniqueReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureUniqueStickers** *(premiumFeatureUniqueStickers)* - child of PremiumFeature
///
/// Allowed to use premium stickers with unique effects.
final class PremiumFeatureUniqueStickers extends PremiumFeature {
  
  /// **PremiumFeatureUniqueStickers** *(premiumFeatureUniqueStickers)* - child of PremiumFeature
  ///
  /// Allowed to use premium stickers with unique effects.
  const PremiumFeatureUniqueStickers();
  
  /// Parse from a json
  factory PremiumFeatureUniqueStickers.fromJson(Map<String, dynamic> json) => const PremiumFeatureUniqueStickers();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureUniqueStickers copyWith() => const PremiumFeatureUniqueStickers();

  static const String objectType = 'premiumFeatureUniqueStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureCustomEmoji** *(premiumFeatureCustomEmoji)* - child of PremiumFeature
///
/// Allowed to use custom emoji stickers in message texts and captions.
final class PremiumFeatureCustomEmoji extends PremiumFeature {
  
  /// **PremiumFeatureCustomEmoji** *(premiumFeatureCustomEmoji)* - child of PremiumFeature
  ///
  /// Allowed to use custom emoji stickers in message texts and captions.
  const PremiumFeatureCustomEmoji();
  
  /// Parse from a json
  factory PremiumFeatureCustomEmoji.fromJson(Map<String, dynamic> json) => const PremiumFeatureCustomEmoji();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureCustomEmoji copyWith() => const PremiumFeatureCustomEmoji();

  static const String objectType = 'premiumFeatureCustomEmoji';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureAdvancedChatManagement** *(premiumFeatureAdvancedChatManagement)* - child of PremiumFeature
///
/// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram.
final class PremiumFeatureAdvancedChatManagement extends PremiumFeature {
  
  /// **PremiumFeatureAdvancedChatManagement** *(premiumFeatureAdvancedChatManagement)* - child of PremiumFeature
  ///
  /// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram.
  const PremiumFeatureAdvancedChatManagement();
  
  /// Parse from a json
  factory PremiumFeatureAdvancedChatManagement.fromJson(Map<String, dynamic> json) => const PremiumFeatureAdvancedChatManagement();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureAdvancedChatManagement copyWith() => const PremiumFeatureAdvancedChatManagement();

  static const String objectType = 'premiumFeatureAdvancedChatManagement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureProfileBadge** *(premiumFeatureProfileBadge)* - child of PremiumFeature
///
/// A badge in the user's profile.
final class PremiumFeatureProfileBadge extends PremiumFeature {
  
  /// **PremiumFeatureProfileBadge** *(premiumFeatureProfileBadge)* - child of PremiumFeature
  ///
  /// A badge in the user's profile.
  const PremiumFeatureProfileBadge();
  
  /// Parse from a json
  factory PremiumFeatureProfileBadge.fromJson(Map<String, dynamic> json) => const PremiumFeatureProfileBadge();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureProfileBadge copyWith() => const PremiumFeatureProfileBadge();

  static const String objectType = 'premiumFeatureProfileBadge';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureEmojiStatus** *(premiumFeatureEmojiStatus)* - child of PremiumFeature
///
/// A emoji status shown along with the user's name.
final class PremiumFeatureEmojiStatus extends PremiumFeature {
  
  /// **PremiumFeatureEmojiStatus** *(premiumFeatureEmojiStatus)* - child of PremiumFeature
  ///
  /// A emoji status shown along with the user's name.
  const PremiumFeatureEmojiStatus();
  
  /// Parse from a json
  factory PremiumFeatureEmojiStatus.fromJson(Map<String, dynamic> json) => const PremiumFeatureEmojiStatus();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureEmojiStatus copyWith() => const PremiumFeatureEmojiStatus();

  static const String objectType = 'premiumFeatureEmojiStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureAnimatedProfilePhoto** *(premiumFeatureAnimatedProfilePhoto)* - child of PremiumFeature
///
/// Profile photo animation on message and chat screens.
final class PremiumFeatureAnimatedProfilePhoto extends PremiumFeature {
  
  /// **PremiumFeatureAnimatedProfilePhoto** *(premiumFeatureAnimatedProfilePhoto)* - child of PremiumFeature
  ///
  /// Profile photo animation on message and chat screens.
  const PremiumFeatureAnimatedProfilePhoto();
  
  /// Parse from a json
  factory PremiumFeatureAnimatedProfilePhoto.fromJson(Map<String, dynamic> json) => const PremiumFeatureAnimatedProfilePhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureAnimatedProfilePhoto copyWith() => const PremiumFeatureAnimatedProfilePhoto();

  static const String objectType = 'premiumFeatureAnimatedProfilePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureForumTopicIcon** *(premiumFeatureForumTopicIcon)* - child of PremiumFeature
///
/// The ability to set a custom emoji as a forum topic icon.
final class PremiumFeatureForumTopicIcon extends PremiumFeature {
  
  /// **PremiumFeatureForumTopicIcon** *(premiumFeatureForumTopicIcon)* - child of PremiumFeature
  ///
  /// The ability to set a custom emoji as a forum topic icon.
  const PremiumFeatureForumTopicIcon();
  
  /// Parse from a json
  factory PremiumFeatureForumTopicIcon.fromJson(Map<String, dynamic> json) => const PremiumFeatureForumTopicIcon();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureForumTopicIcon copyWith() => const PremiumFeatureForumTopicIcon();

  static const String objectType = 'premiumFeatureForumTopicIcon';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumFeatureAppIcons** *(premiumFeatureAppIcons)* - child of PremiumFeature
///
/// Allowed to set a premium appllication icons.
final class PremiumFeatureAppIcons extends PremiumFeature {
  
  /// **PremiumFeatureAppIcons** *(premiumFeatureAppIcons)* - child of PremiumFeature
  ///
  /// Allowed to set a premium appllication icons.
  const PremiumFeatureAppIcons();
  
  /// Parse from a json
  factory PremiumFeatureAppIcons.fromJson(Map<String, dynamic> json) => const PremiumFeatureAppIcons();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumFeatureAppIcons copyWith() => const PremiumFeatureAppIcons();

  static const String objectType = 'premiumFeatureAppIcons';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
