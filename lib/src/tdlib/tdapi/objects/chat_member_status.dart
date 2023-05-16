part of '../tdapi.dart';

/// **ChatMemberStatus** *(chatMemberStatus)* - parent
///
/// Provides information about the status of a member in a chat.
sealed class ChatMemberStatus extends TdObject {
  
  /// **ChatMemberStatus** *(chatMemberStatus)* - parent
  ///
  /// Provides information about the status of a member in a chat.
  const ChatMemberStatus();
  
  /// a ChatMemberStatus return type can be :
  /// * [ChatMemberStatusCreator]
  /// * [ChatMemberStatusAdministrator]
  /// * [ChatMemberStatusMember]
  /// * [ChatMemberStatusRestricted]
  /// * [ChatMemberStatusLeft]
  /// * [ChatMemberStatusBanned]
  factory ChatMemberStatus.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatMemberStatusCreator.objectType:
        return ChatMemberStatusCreator.fromJson(json);
      case ChatMemberStatusAdministrator.objectType:
        return ChatMemberStatusAdministrator.fromJson(json);
      case ChatMemberStatusMember.objectType:
        return ChatMemberStatusMember.fromJson(json);
      case ChatMemberStatusRestricted.objectType:
        return ChatMemberStatusRestricted.fromJson(json);
      case ChatMemberStatusLeft.objectType:
        return ChatMemberStatusLeft.fromJson(json);
      case ChatMemberStatusBanned.objectType:
        return ChatMemberStatusBanned.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatMemberStatus)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatMemberStatus copyWith();

  static const String objectType = 'chatMemberStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMemberStatusCreator** *(chatMemberStatusCreator)* - child of ChatMemberStatus
///
/// The user is the owner of the chat and has all the administrator privileges.
///
/// * [customTitle]: A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only.
/// * [isAnonymous]: True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only.
/// * [isMember]: True, if the user is a member of the chat.
final class ChatMemberStatusCreator extends ChatMemberStatus {
  
  /// **ChatMemberStatusCreator** *(chatMemberStatusCreator)* - child of ChatMemberStatus
  ///
  /// The user is the owner of the chat and has all the administrator privileges.
  ///
  /// * [customTitle]: A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only.
  /// * [isAnonymous]: True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only.
  /// * [isMember]: True, if the user is a member of the chat.
  const ChatMemberStatusCreator({
    required this.customTitle,
    required this.isAnonymous,
    required this.isMember,
  });
  
  /// A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only
  final String customTitle;

  /// True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  /// True, if the user is a member of the chat
  final bool isMember;
  
  /// Parse from a json
  factory ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) => ChatMemberStatusCreator(
    customTitle: json['custom_title'],
    isAnonymous: json['is_anonymous'],
    isMember: json['is_member'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "custom_title": customTitle,
      "is_anonymous": isAnonymous,
      "is_member": isMember,
		};
	}

  
  @override
  ChatMemberStatusCreator copyWith({
    String? customTitle,
    bool? isAnonymous,
    bool? isMember,
  }) => ChatMemberStatusCreator(
    customTitle: customTitle ?? this.customTitle,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    isMember: isMember ?? this.isMember,
  );

  static const String objectType = 'chatMemberStatusCreator';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMemberStatusAdministrator** *(chatMemberStatusAdministrator)* - child of ChatMemberStatus
///
/// The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats.. In supergroups and channels, there are more detailed options for administrator privileges.
///
/// * [customTitle]: A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only.
/// * [canBeEdited]: True, if the current user can edit the administrator privileges for the called user.
/// * [rights]: Rights of the administrator.
final class ChatMemberStatusAdministrator extends ChatMemberStatus {
  
  /// **ChatMemberStatusAdministrator** *(chatMemberStatusAdministrator)* - child of ChatMemberStatus
  ///
  /// The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats.. In supergroups and channels, there are more detailed options for administrator privileges.
  ///
  /// * [customTitle]: A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only.
  /// * [canBeEdited]: True, if the current user can edit the administrator privileges for the called user.
  /// * [rights]: Rights of the administrator.
  const ChatMemberStatusAdministrator({
    required this.customTitle,
    required this.canBeEdited,
    required this.rights,
  });
  
  /// A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only
  final String customTitle;

  /// True, if the current user can edit the administrator privileges for the called user
  final bool canBeEdited;

  /// Rights of the administrator
  final ChatAdministratorRights rights;
  
  /// Parse from a json
  factory ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) => ChatMemberStatusAdministrator(
    customTitle: json['custom_title'],
    canBeEdited: json['can_be_edited'],
    rights: ChatAdministratorRights.fromJson(json['rights']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "custom_title": customTitle,
      "can_be_edited": canBeEdited,
      "rights": rights.toJson(),
		};
	}

  
  @override
  ChatMemberStatusAdministrator copyWith({
    String? customTitle,
    bool? canBeEdited,
    ChatAdministratorRights? rights,
  }) => ChatMemberStatusAdministrator(
    customTitle: customTitle ?? this.customTitle,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    rights: rights ?? this.rights,
  );

  static const String objectType = 'chatMemberStatusAdministrator';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMemberStatusMember** *(chatMemberStatusMember)* - child of ChatMemberStatus
///
/// The user is a member of the chat, without any additional privileges or restrictions.
final class ChatMemberStatusMember extends ChatMemberStatus {
  
  /// **ChatMemberStatusMember** *(chatMemberStatusMember)* - child of ChatMemberStatus
  ///
  /// The user is a member of the chat, without any additional privileges or restrictions.
  const ChatMemberStatusMember();
  
  /// Parse from a json
  factory ChatMemberStatusMember.fromJson(Map<String, dynamic> json) => const ChatMemberStatusMember();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatMemberStatusMember copyWith() => const ChatMemberStatusMember();

  static const String objectType = 'chatMemberStatusMember';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMemberStatusRestricted** *(chatMemberStatusRestricted)* - child of ChatMemberStatus
///
/// The user is under certain restrictions in the chat. Not supported in basic groups and channels.
///
/// * [isMember]: True, if the user is a member of the chat.
/// * [restrictedUntilDate]: Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever.
/// * [permissions]: User permissions in the chat.
final class ChatMemberStatusRestricted extends ChatMemberStatus {
  
  /// **ChatMemberStatusRestricted** *(chatMemberStatusRestricted)* - child of ChatMemberStatus
  ///
  /// The user is under certain restrictions in the chat. Not supported in basic groups and channels.
  ///
  /// * [isMember]: True, if the user is a member of the chat.
  /// * [restrictedUntilDate]: Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever.
  /// * [permissions]: User permissions in the chat.
  const ChatMemberStatusRestricted({
    required this.isMember,
    required this.restrictedUntilDate,
    required this.permissions,
  });
  
  /// True, if the user is a member of the chat
  final bool isMember;

  /// Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
  final int restrictedUntilDate;

  /// User permissions in the chat
  final ChatPermissions permissions;
  
  /// Parse from a json
  factory ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) => ChatMemberStatusRestricted(
    isMember: json['is_member'],
    restrictedUntilDate: json['restricted_until_date'],
    permissions: ChatPermissions.fromJson(json['permissions']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_member": isMember,
      "restricted_until_date": restrictedUntilDate,
      "permissions": permissions.toJson(),
		};
	}

  
  @override
  ChatMemberStatusRestricted copyWith({
    bool? isMember,
    int? restrictedUntilDate,
    ChatPermissions? permissions,
  }) => ChatMemberStatusRestricted(
    isMember: isMember ?? this.isMember,
    restrictedUntilDate: restrictedUntilDate ?? this.restrictedUntilDate,
    permissions: permissions ?? this.permissions,
  );

  static const String objectType = 'chatMemberStatusRestricted';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMemberStatusLeft** *(chatMemberStatusLeft)* - child of ChatMemberStatus
///
/// The user or the chat is not a chat member.
final class ChatMemberStatusLeft extends ChatMemberStatus {
  
  /// **ChatMemberStatusLeft** *(chatMemberStatusLeft)* - child of ChatMemberStatus
  ///
  /// The user or the chat is not a chat member.
  const ChatMemberStatusLeft();
  
  /// Parse from a json
  factory ChatMemberStatusLeft.fromJson(Map<String, dynamic> json) => const ChatMemberStatusLeft();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatMemberStatusLeft copyWith() => const ChatMemberStatusLeft();

  static const String objectType = 'chatMemberStatusLeft';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMemberStatusBanned** *(chatMemberStatusBanned)* - child of ChatMemberStatus
///
/// The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat.
///
/// * [bannedUntilDate]: Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups.
final class ChatMemberStatusBanned extends ChatMemberStatus {
  
  /// **ChatMemberStatusBanned** *(chatMemberStatusBanned)* - child of ChatMemberStatus
  ///
  /// The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat.
  ///
  /// * [bannedUntilDate]: Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups.
  const ChatMemberStatusBanned({
    required this.bannedUntilDate,
  });
  
  /// Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups
  final int bannedUntilDate;
  
  /// Parse from a json
  factory ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) => ChatMemberStatusBanned(
    bannedUntilDate: json['banned_until_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "banned_until_date": bannedUntilDate,
		};
	}

  
  @override
  ChatMemberStatusBanned copyWith({
    int? bannedUntilDate,
  }) => ChatMemberStatusBanned(
    bannedUntilDate: bannedUntilDate ?? this.bannedUntilDate,
  );

  static const String objectType = 'chatMemberStatusBanned';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
