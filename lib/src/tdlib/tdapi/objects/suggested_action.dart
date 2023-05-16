part of '../tdapi.dart';

/// **SuggestedAction** *(suggestedAction)* - parent
///
/// Describes an action suggested to the current user.
sealed class SuggestedAction extends TdObject {
  
  /// **SuggestedAction** *(suggestedAction)* - parent
  ///
  /// Describes an action suggested to the current user.
  const SuggestedAction();
  
  /// a SuggestedAction return type can be :
  /// * [SuggestedActionEnableArchiveAndMuteNewChats]
  /// * [SuggestedActionCheckPassword]
  /// * [SuggestedActionCheckPhoneNumber]
  /// * [SuggestedActionViewChecksHint]
  /// * [SuggestedActionConvertToBroadcastGroup]
  /// * [SuggestedActionSetPassword]
  factory SuggestedAction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SuggestedActionEnableArchiveAndMuteNewChats.objectType:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPassword.objectType:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.objectType:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionViewChecksHint.objectType:
        return SuggestedActionViewChecksHint.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.objectType:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionSetPassword.objectType:
        return SuggestedActionSetPassword.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of SuggestedAction)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  SuggestedAction copyWith();

  static const String objectType = 'suggestedAction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SuggestedActionEnableArchiveAndMuteNewChats** *(suggestedActionEnableArchiveAndMuteNewChats)* - child of SuggestedAction
///
/// Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option.
final class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  
  /// **SuggestedActionEnableArchiveAndMuteNewChats** *(suggestedActionEnableArchiveAndMuteNewChats)* - child of SuggestedAction
  ///
  /// Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option.
  const SuggestedActionEnableArchiveAndMuteNewChats();
  
  /// Parse from a json
  factory SuggestedActionEnableArchiveAndMuteNewChats.fromJson(Map<String, dynamic> json) => const SuggestedActionEnableArchiveAndMuteNewChats();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SuggestedActionEnableArchiveAndMuteNewChats copyWith() => const SuggestedActionEnableArchiveAndMuteNewChats();

  static const String objectType = 'suggestedActionEnableArchiveAndMuteNewChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SuggestedActionCheckPassword** *(suggestedActionCheckPassword)* - child of SuggestedAction
///
/// Suggests the user to check whether they still remember their 2-step verification password.
final class SuggestedActionCheckPassword extends SuggestedAction {
  
  /// **SuggestedActionCheckPassword** *(suggestedActionCheckPassword)* - child of SuggestedAction
  ///
  /// Suggests the user to check whether they still remember their 2-step verification password.
  const SuggestedActionCheckPassword();
  
  /// Parse from a json
  factory SuggestedActionCheckPassword.fromJson(Map<String, dynamic> json) => const SuggestedActionCheckPassword();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SuggestedActionCheckPassword copyWith() => const SuggestedActionCheckPassword();

  static const String objectType = 'suggestedActionCheckPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SuggestedActionCheckPhoneNumber** *(suggestedActionCheckPhoneNumber)* - child of SuggestedAction
///
/// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible.
final class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  
  /// **SuggestedActionCheckPhoneNumber** *(suggestedActionCheckPhoneNumber)* - child of SuggestedAction
  ///
  /// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible.
  const SuggestedActionCheckPhoneNumber();
  
  /// Parse from a json
  factory SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json) => const SuggestedActionCheckPhoneNumber();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SuggestedActionCheckPhoneNumber copyWith() => const SuggestedActionCheckPhoneNumber();

  static const String objectType = 'suggestedActionCheckPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SuggestedActionViewChecksHint** *(suggestedActionViewChecksHint)* - child of SuggestedAction
///
/// Suggests the user to view a hint about the meaning of one and two check marks on sent messages.
final class SuggestedActionViewChecksHint extends SuggestedAction {
  
  /// **SuggestedActionViewChecksHint** *(suggestedActionViewChecksHint)* - child of SuggestedAction
  ///
  /// Suggests the user to view a hint about the meaning of one and two check marks on sent messages.
  const SuggestedActionViewChecksHint();
  
  /// Parse from a json
  factory SuggestedActionViewChecksHint.fromJson(Map<String, dynamic> json) => const SuggestedActionViewChecksHint();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SuggestedActionViewChecksHint copyWith() => const SuggestedActionViewChecksHint();

  static const String objectType = 'suggestedActionViewChecksHint';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SuggestedActionConvertToBroadcastGroup** *(suggestedActionConvertToBroadcastGroup)* - child of SuggestedAction
///
/// Suggests the user to convert specified supergroup to a broadcast group.
///
/// * [supergroupId]: Supergroup identifier.
final class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  
  /// **SuggestedActionConvertToBroadcastGroup** *(suggestedActionConvertToBroadcastGroup)* - child of SuggestedAction
  ///
  /// Suggests the user to convert specified supergroup to a broadcast group.
  ///
  /// * [supergroupId]: Supergroup identifier.
  const SuggestedActionConvertToBroadcastGroup({
    required this.supergroupId,
  });
  
  /// Supergroup identifier
  final int supergroupId;
  
  /// Parse from a json
  factory SuggestedActionConvertToBroadcastGroup.fromJson(Map<String, dynamic> json) => SuggestedActionConvertToBroadcastGroup(
    supergroupId: json['supergroup_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
		};
	}

  
  @override
  SuggestedActionConvertToBroadcastGroup copyWith({
    int? supergroupId,
  }) => SuggestedActionConvertToBroadcastGroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const String objectType = 'suggestedActionConvertToBroadcastGroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SuggestedActionSetPassword** *(suggestedActionSetPassword)* - child of SuggestedAction
///
/// Suggests the user to set a 2-step verification password to be able to log in again.
///
/// * [authorizationDelay]: The number of days to pass between consecutive authorizations if the user declines to set password.
final class SuggestedActionSetPassword extends SuggestedAction {
  
  /// **SuggestedActionSetPassword** *(suggestedActionSetPassword)* - child of SuggestedAction
  ///
  /// Suggests the user to set a 2-step verification password to be able to log in again.
  ///
  /// * [authorizationDelay]: The number of days to pass between consecutive authorizations if the user declines to set password.
  const SuggestedActionSetPassword({
    required this.authorizationDelay,
  });
  
  /// The number of days to pass between consecutive authorizations if the user declines to set password
  final int authorizationDelay;
  
  /// Parse from a json
  factory SuggestedActionSetPassword.fromJson(Map<String, dynamic> json) => SuggestedActionSetPassword(
    authorizationDelay: json['authorization_delay'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "authorization_delay": authorizationDelay,
		};
	}

  
  @override
  SuggestedActionSetPassword copyWith({
    int? authorizationDelay,
  }) => SuggestedActionSetPassword(
    authorizationDelay: authorizationDelay ?? this.authorizationDelay,
  );

  static const String objectType = 'suggestedActionSetPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
