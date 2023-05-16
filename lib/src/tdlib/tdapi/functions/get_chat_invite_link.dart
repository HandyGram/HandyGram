part of '../tdapi.dart';

/// **GetChatInviteLink** *(getChatInviteLink)* - TDLib function
///
/// Returns information about an invite link. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links.
///
/// * [chatId]: Chat identifier.
/// * [inviteLink]: Invite link to get.
///
/// [ChatInviteLink] is returned on completion.
final class GetChatInviteLink extends TdFunction {
  
  /// **GetChatInviteLink** *(getChatInviteLink)* - TDLib function
  ///
  /// Returns information about an invite link. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links.
  ///
  /// * [chatId]: Chat identifier.
  /// * [inviteLink]: Invite link to get.
  ///
  /// [ChatInviteLink] is returned on completion.
  const GetChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });
  
  /// Chat identifier
  final int chatId;

  /// Invite link to get
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

  
  GetChatInviteLink copyWith({
    int? chatId,
    String? inviteLink,
  }) => GetChatInviteLink(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const String objectType = 'getChatInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
