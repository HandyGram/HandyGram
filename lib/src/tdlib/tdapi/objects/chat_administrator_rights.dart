part of '../tdapi.dart';

/// **ChatAdministratorRights** *(chatAdministratorRights)* - basic class
///
/// Describes rights of the administrator.
///
/// * [canManageChat]: True, if the administrator can get chat event log, get chat statistics, get message statistics in channels, get channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only.
/// * [canChangeInfo]: True, if the administrator can change the chat title, photo, and other settings.
/// * [canPostMessages]: True, if the administrator can create channel posts; applicable to channels only.
/// * [canEditMessages]: True, if the administrator can edit messages of other users and pin messages; applicable to channels only.
/// * [canDeleteMessages]: True, if the administrator can delete messages of other users.
/// * [canInviteUsers]: True, if the administrator can invite new users to the chat.
/// * [canRestrictMembers]: True, if the administrator can restrict, ban, or unban chat members; always true for channels.
/// * [canPinMessages]: True, if the administrator can pin messages; applicable to basic groups and supergroups only.
/// * [canManageTopics]: True, if the administrator can manage topics; applicable to forum supergroups only.
/// * [canPromoteMembers]: True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them.
/// * [canManageVideoChats]: True, if the administrator can manage video chats.
/// * [isAnonymous]: True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only.
final class ChatAdministratorRights extends TdObject {
  
  /// **ChatAdministratorRights** *(chatAdministratorRights)* - basic class
  ///
  /// Describes rights of the administrator.
  ///
  /// * [canManageChat]: True, if the administrator can get chat event log, get chat statistics, get message statistics in channels, get channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only.
  /// * [canChangeInfo]: True, if the administrator can change the chat title, photo, and other settings.
  /// * [canPostMessages]: True, if the administrator can create channel posts; applicable to channels only.
  /// * [canEditMessages]: True, if the administrator can edit messages of other users and pin messages; applicable to channels only.
  /// * [canDeleteMessages]: True, if the administrator can delete messages of other users.
  /// * [canInviteUsers]: True, if the administrator can invite new users to the chat.
  /// * [canRestrictMembers]: True, if the administrator can restrict, ban, or unban chat members; always true for channels.
  /// * [canPinMessages]: True, if the administrator can pin messages; applicable to basic groups and supergroups only.
  /// * [canManageTopics]: True, if the administrator can manage topics; applicable to forum supergroups only.
  /// * [canPromoteMembers]: True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them.
  /// * [canManageVideoChats]: True, if the administrator can manage video chats.
  /// * [isAnonymous]: True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only.
  const ChatAdministratorRights({
    required this.canManageChat,
    required this.canChangeInfo,
    required this.canPostMessages,
    required this.canEditMessages,
    required this.canDeleteMessages,
    required this.canInviteUsers,
    required this.canRestrictMembers,
    required this.canPinMessages,
    required this.canManageTopics,
    required this.canPromoteMembers,
    required this.canManageVideoChats,
    required this.isAnonymous,
  });
  
  /// True, if the administrator can get chat event log, get chat statistics, get message statistics in channels, get channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only
  final bool canManageChat;

  /// True, if the administrator can change the chat title, photo, and other settings
  final bool canChangeInfo;

  /// True, if the administrator can create channel posts; applicable to channels only
  final bool canPostMessages;

  /// True, if the administrator can edit messages of other users and pin messages; applicable to channels only
  final bool canEditMessages;

  /// True, if the administrator can delete messages of other users
  final bool canDeleteMessages;

  /// True, if the administrator can invite new users to the chat
  final bool canInviteUsers;

  /// True, if the administrator can restrict, ban, or unban chat members; always true for channels
  final bool canRestrictMembers;

  /// True, if the administrator can pin messages; applicable to basic groups and supergroups only
  final bool canPinMessages;

  /// True, if the administrator can manage topics; applicable to forum supergroups only
  final bool canManageTopics;

  /// True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
  final bool canPromoteMembers;

  /// True, if the administrator can manage video chats
  final bool canManageVideoChats;

  /// True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;
  
  /// Parse from a json
  factory ChatAdministratorRights.fromJson(Map<String, dynamic> json) => ChatAdministratorRights(
    canManageChat: json['can_manage_chat'],
    canChangeInfo: json['can_change_info'],
    canPostMessages: json['can_post_messages'],
    canEditMessages: json['can_edit_messages'],
    canDeleteMessages: json['can_delete_messages'],
    canInviteUsers: json['can_invite_users'],
    canRestrictMembers: json['can_restrict_members'],
    canPinMessages: json['can_pin_messages'],
    canManageTopics: json['can_manage_topics'],
    canPromoteMembers: json['can_promote_members'],
    canManageVideoChats: json['can_manage_video_chats'],
    isAnonymous: json['is_anonymous'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "can_manage_chat": canManageChat,
      "can_change_info": canChangeInfo,
      "can_post_messages": canPostMessages,
      "can_edit_messages": canEditMessages,
      "can_delete_messages": canDeleteMessages,
      "can_invite_users": canInviteUsers,
      "can_restrict_members": canRestrictMembers,
      "can_pin_messages": canPinMessages,
      "can_manage_topics": canManageTopics,
      "can_promote_members": canPromoteMembers,
      "can_manage_video_chats": canManageVideoChats,
      "is_anonymous": isAnonymous,
		};
	}

  
  ChatAdministratorRights copyWith({
    bool? canManageChat,
    bool? canChangeInfo,
    bool? canPostMessages,
    bool? canEditMessages,
    bool? canDeleteMessages,
    bool? canInviteUsers,
    bool? canRestrictMembers,
    bool? canPinMessages,
    bool? canManageTopics,
    bool? canPromoteMembers,
    bool? canManageVideoChats,
    bool? isAnonymous,
  }) => ChatAdministratorRights(
    canManageChat: canManageChat ?? this.canManageChat,
    canChangeInfo: canChangeInfo ?? this.canChangeInfo,
    canPostMessages: canPostMessages ?? this.canPostMessages,
    canEditMessages: canEditMessages ?? this.canEditMessages,
    canDeleteMessages: canDeleteMessages ?? this.canDeleteMessages,
    canInviteUsers: canInviteUsers ?? this.canInviteUsers,
    canRestrictMembers: canRestrictMembers ?? this.canRestrictMembers,
    canPinMessages: canPinMessages ?? this.canPinMessages,
    canManageTopics: canManageTopics ?? this.canManageTopics,
    canPromoteMembers: canPromoteMembers ?? this.canPromoteMembers,
    canManageVideoChats: canManageVideoChats ?? this.canManageVideoChats,
    isAnonymous: isAnonymous ?? this.isAnonymous,
  );

  static const String objectType = 'chatAdministratorRights';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
