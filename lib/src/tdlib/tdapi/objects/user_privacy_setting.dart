part of '../tdapi.dart';

/// **UserPrivacySetting** *(userPrivacySetting)* - parent
///
/// Describes available user privacy settings.
sealed class UserPrivacySetting extends TdObject {
  
  /// **UserPrivacySetting** *(userPrivacySetting)* - parent
  ///
  /// Describes available user privacy settings.
  const UserPrivacySetting();
  
  /// a UserPrivacySetting return type can be :
  /// * [UserPrivacySettingShowStatus]
  /// * [UserPrivacySettingShowProfilePhoto]
  /// * [UserPrivacySettingShowLinkInForwardedMessages]
  /// * [UserPrivacySettingShowPhoneNumber]
  /// * [UserPrivacySettingAllowChatInvites]
  /// * [UserPrivacySettingAllowCalls]
  /// * [UserPrivacySettingAllowPeerToPeerCalls]
  /// * [UserPrivacySettingAllowFindingByPhoneNumber]
  /// * [UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages]
  factory UserPrivacySetting.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserPrivacySettingShowStatus.objectType:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.objectType:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.objectType:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.objectType:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowChatInvites.objectType:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.objectType:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.objectType:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.objectType:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.objectType:
        return UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of UserPrivacySetting)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  UserPrivacySetting copyWith();

  static const String objectType = 'userPrivacySetting';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingShowStatus** *(userPrivacySettingShowStatus)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether the user's online status is visible.
final class UserPrivacySettingShowStatus extends UserPrivacySetting {
  
  /// **UserPrivacySettingShowStatus** *(userPrivacySettingShowStatus)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's online status is visible.
  const UserPrivacySettingShowStatus();
  
  /// Parse from a json
  factory UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowStatus();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingShowStatus copyWith() => const UserPrivacySettingShowStatus();

  static const String objectType = 'userPrivacySettingShowStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingShowProfilePhoto** *(userPrivacySettingShowProfilePhoto)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether the user's profile photo is visible.
final class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  
  /// **UserPrivacySettingShowProfilePhoto** *(userPrivacySettingShowProfilePhoto)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's profile photo is visible.
  const UserPrivacySettingShowProfilePhoto();
  
  /// Parse from a json
  factory UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowProfilePhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingShowProfilePhoto copyWith() => const UserPrivacySettingShowProfilePhoto();

  static const String objectType = 'userPrivacySettingShowProfilePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingShowLinkInForwardedMessages** *(userPrivacySettingShowLinkInForwardedMessages)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether a link to the user's account is included in forwarded messages.
final class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  
  /// **UserPrivacySettingShowLinkInForwardedMessages** *(userPrivacySettingShowLinkInForwardedMessages)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether a link to the user's account is included in forwarded messages.
  const UserPrivacySettingShowLinkInForwardedMessages();
  
  /// Parse from a json
  factory UserPrivacySettingShowLinkInForwardedMessages.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowLinkInForwardedMessages();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingShowLinkInForwardedMessages copyWith() => const UserPrivacySettingShowLinkInForwardedMessages();

  static const String objectType = 'userPrivacySettingShowLinkInForwardedMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingShowPhoneNumber** *(userPrivacySettingShowPhoneNumber)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether the user's phone number is visible.
final class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  
  /// **UserPrivacySettingShowPhoneNumber** *(userPrivacySettingShowPhoneNumber)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's phone number is visible.
  const UserPrivacySettingShowPhoneNumber();
  
  /// Parse from a json
  factory UserPrivacySettingShowPhoneNumber.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowPhoneNumber();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingShowPhoneNumber copyWith() => const UserPrivacySettingShowPhoneNumber();

  static const String objectType = 'userPrivacySettingShowPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingAllowChatInvites** *(userPrivacySettingAllowChatInvites)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether the user can be invited to chats.
final class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowChatInvites** *(userPrivacySettingAllowChatInvites)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be invited to chats.
  const UserPrivacySettingAllowChatInvites();
  
  /// Parse from a json
  factory UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowChatInvites();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingAllowChatInvites copyWith() => const UserPrivacySettingAllowChatInvites();

  static const String objectType = 'userPrivacySettingAllowChatInvites';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingAllowCalls** *(userPrivacySettingAllowCalls)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether the user can be called.
final class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowCalls** *(userPrivacySettingAllowCalls)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be called.
  const UserPrivacySettingAllowCalls();
  
  /// Parse from a json
  factory UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowCalls();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingAllowCalls copyWith() => const UserPrivacySettingAllowCalls();

  static const String objectType = 'userPrivacySettingAllowCalls';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingAllowPeerToPeerCalls** *(userPrivacySettingAllowPeerToPeerCalls)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether peer-to-peer connections can be used for calls.
final class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowPeerToPeerCalls** *(userPrivacySettingAllowPeerToPeerCalls)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether peer-to-peer connections can be used for calls.
  const UserPrivacySettingAllowPeerToPeerCalls();
  
  /// Parse from a json
  factory UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowPeerToPeerCalls();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingAllowPeerToPeerCalls copyWith() => const UserPrivacySettingAllowPeerToPeerCalls();

  static const String objectType = 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingAllowFindingByPhoneNumber** *(userPrivacySettingAllowFindingByPhoneNumber)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all".
final class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowFindingByPhoneNumber** *(userPrivacySettingAllowFindingByPhoneNumber)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all".
  const UserPrivacySettingAllowFindingByPhoneNumber();
  
  /// Parse from a json
  factory UserPrivacySettingAllowFindingByPhoneNumber.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowFindingByPhoneNumber();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingAllowFindingByPhoneNumber copyWith() => const UserPrivacySettingAllowFindingByPhoneNumber();

  static const String objectType = 'userPrivacySettingAllowFindingByPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages** *(userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages)* - child of UserPrivacySetting
///
/// A privacy setting for managing whether the user can receive voice and video messages in private chats.
final class UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages** *(userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can receive voice and video messages in private chats.
  const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
  
  /// Parse from a json
  factory UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages copyWith() => const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();

  static const String objectType = 'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
