part of '../tdapi.dart';

/// **DeleteRevokedChatInviteLink** *(deleteRevokedChatInviteLink)* - TDLib function
///
/// Deletes revoked chat invite links. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
///
/// * [chatId]: Chat identifier.
/// * [inviteLink]: Invite link to revoke.
///
/// [Ok] is returned on completion.
final class DeleteRevokedChatInviteLink extends TdFunction {
  
  /// **DeleteRevokedChatInviteLink** *(deleteRevokedChatInviteLink)* - TDLib function
  ///
  /// Deletes revoked chat invite links. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
  ///
  /// * [chatId]: Chat identifier.
  /// * [inviteLink]: Invite link to revoke.
  ///
  /// [Ok] is returned on completion.
  const DeleteRevokedChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Invite link to revoke
  final String inviteLink;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "@extra": extra,
		};
	}

  
  DeleteRevokedChatInviteLink copyWith({
    int? chatId,
    String? inviteLink,
  }) => DeleteRevokedChatInviteLink(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const String objectType = 'deleteRevokedChatInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
