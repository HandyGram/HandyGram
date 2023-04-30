part of '../tdapi.dart';

/// **UserPrivacySetting** *(userPrivacySetting)* - parent
  ///
  /// Describes available user privacy settings.
class UserPrivacySetting extends TdObject {
  
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
      case UserPrivacySettingShowStatus.constructor:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.constructor:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.constructor:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.constructor:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowChatInvites.constructor:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.constructor:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.constructor:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.constructor:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.constructor:
        return UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromJson(json);
      default:
        return const UserPrivacySetting();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  UserPrivacySetting copyWith() => const UserPrivacySetting();

  static const String constructor = 'userPrivacySetting';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingShowStatus** *(userPrivacySettingShowStatus)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's online status is visible.
class UserPrivacySettingShowStatus extends UserPrivacySetting {
  
  /// **UserPrivacySettingShowStatus** *(userPrivacySettingShowStatus)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's online status is visible.
  const UserPrivacySettingShowStatus();
  
  /// Parse from a json
  factory UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowStatus();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingShowStatus copyWith() => const UserPrivacySettingShowStatus();

  static const String constructor = 'userPrivacySettingShowStatus';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingShowProfilePhoto** *(userPrivacySettingShowProfilePhoto)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's profile photo is visible.
class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  
  /// **UserPrivacySettingShowProfilePhoto** *(userPrivacySettingShowProfilePhoto)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's profile photo is visible.
  const UserPrivacySettingShowProfilePhoto();
  
  /// Parse from a json
  factory UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowProfilePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingShowProfilePhoto copyWith() => const UserPrivacySettingShowProfilePhoto();

  static const String constructor = 'userPrivacySettingShowProfilePhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingShowLinkInForwardedMessages** *(userPrivacySettingShowLinkInForwardedMessages)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether a link to the user's account is included in forwarded messages.
class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  
  /// **UserPrivacySettingShowLinkInForwardedMessages** *(userPrivacySettingShowLinkInForwardedMessages)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether a link to the user's account is included in forwarded messages.
  const UserPrivacySettingShowLinkInForwardedMessages();
  
  /// Parse from a json
  factory UserPrivacySettingShowLinkInForwardedMessages.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowLinkInForwardedMessages();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingShowLinkInForwardedMessages copyWith() => const UserPrivacySettingShowLinkInForwardedMessages();

  static const String constructor = 'userPrivacySettingShowLinkInForwardedMessages';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingShowPhoneNumber** *(userPrivacySettingShowPhoneNumber)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's phone number is visible.
class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  
  /// **UserPrivacySettingShowPhoneNumber** *(userPrivacySettingShowPhoneNumber)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user's phone number is visible.
  const UserPrivacySettingShowPhoneNumber();
  
  /// Parse from a json
  factory UserPrivacySettingShowPhoneNumber.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowPhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingShowPhoneNumber copyWith() => const UserPrivacySettingShowPhoneNumber();

  static const String constructor = 'userPrivacySettingShowPhoneNumber';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingAllowChatInvites** *(userPrivacySettingAllowChatInvites)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be invited to chats.
class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowChatInvites** *(userPrivacySettingAllowChatInvites)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be invited to chats.
  const UserPrivacySettingAllowChatInvites();
  
  /// Parse from a json
  factory UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowChatInvites();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingAllowChatInvites copyWith() => const UserPrivacySettingAllowChatInvites();

  static const String constructor = 'userPrivacySettingAllowChatInvites';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingAllowCalls** *(userPrivacySettingAllowCalls)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be called.
class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowCalls** *(userPrivacySettingAllowCalls)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be called.
  const UserPrivacySettingAllowCalls();
  
  /// Parse from a json
  factory UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowCalls();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingAllowCalls copyWith() => const UserPrivacySettingAllowCalls();

  static const String constructor = 'userPrivacySettingAllowCalls';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingAllowPeerToPeerCalls** *(userPrivacySettingAllowPeerToPeerCalls)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether peer-to-peer connections can be used for calls.
class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowPeerToPeerCalls** *(userPrivacySettingAllowPeerToPeerCalls)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether peer-to-peer connections can be used for calls.
  const UserPrivacySettingAllowPeerToPeerCalls();
  
  /// Parse from a json
  factory UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowPeerToPeerCalls();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingAllowPeerToPeerCalls copyWith() => const UserPrivacySettingAllowPeerToPeerCalls();

  static const String constructor = 'userPrivacySettingAllowPeerToPeerCalls';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingAllowFindingByPhoneNumber** *(userPrivacySettingAllowFindingByPhoneNumber)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all".
class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowFindingByPhoneNumber** *(userPrivacySettingAllowFindingByPhoneNumber)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all".
  const UserPrivacySettingAllowFindingByPhoneNumber();
  
  /// Parse from a json
  factory UserPrivacySettingAllowFindingByPhoneNumber.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowFindingByPhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingAllowFindingByPhoneNumber copyWith() => const UserPrivacySettingAllowFindingByPhoneNumber();

  static const String constructor = 'userPrivacySettingAllowFindingByPhoneNumber';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages** *(userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can receive voice and video messages in private chats.
class UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages extends UserPrivacySetting {
  
  /// **UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages** *(userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages)* - child of UserPrivacySetting
  ///
  /// A privacy setting for managing whether the user can receive voice and video messages in private chats.
  const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
  
  /// Parse from a json
  factory UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages copyWith() => const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();

  static const String constructor = 'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages';
  
  @override
  String getConstructor() => constructor;
}
