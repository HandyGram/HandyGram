part of '../tdapi.dart';

/// **GetChatInviteLinkMembers** *(getChatInviteLinkMembers)* - TDLib function
///
/// Returns chat members joined a chat via an invite link. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
///
/// * [chatId]: Chat identifier.
/// * [inviteLink]: Invite link for which to return chat members.
/// * [offsetMember]: A chat member from which to return next chat members; pass null to get results from the beginning *(optional)*.
/// * [limit]: The maximum number of chat members to return; up to 100.
///
/// [ChatInviteLinkMembers] is returned on completion.
final class GetChatInviteLinkMembers extends TdFunction {
  
  /// **GetChatInviteLinkMembers** *(getChatInviteLinkMembers)* - TDLib function
  ///
  /// Returns chat members joined a chat via an invite link. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
  ///
  /// * [chatId]: Chat identifier.
  /// * [inviteLink]: Invite link for which to return chat members.
  /// * [offsetMember]: A chat member from which to return next chat members; pass null to get results from the beginning *(optional)*.
  /// * [limit]: The maximum number of chat members to return; up to 100.
  ///
  /// [ChatInviteLinkMembers] is returned on completion.
  const GetChatInviteLinkMembers({
    required this.chatId,
    required this.inviteLink,
    this.offsetMember,
    required this.limit,
  });
  
  /// Chat identifier
  final int chatId;

  /// Invite link for which to return chat members
  final String inviteLink;

  /// A chat member from which to return next chat members; pass null to get results from the beginning
  final ChatInviteLinkMember? offsetMember;

  /// The maximum number of chat members to return; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "offset_member": offsetMember?.toJson(),
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetChatInviteLinkMembers copyWith({
    int? chatId,
    String? inviteLink,
    ChatInviteLinkMember? offsetMember,
    int? limit,
  }) => GetChatInviteLinkMembers(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
    offsetMember: offsetMember ?? this.offsetMember,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getChatInviteLinkMembers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
