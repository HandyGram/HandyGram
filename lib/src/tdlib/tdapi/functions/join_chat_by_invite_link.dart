part of '../tdapi.dart';

/// **JoinChatByInviteLink** *(joinChatByInviteLink)* - TDLib function
///
/// Uses an invite link to add the current user to the chat if possible. May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created.
///
/// * [inviteLink]: Invite link to use.
///
/// [Chat] is returned on completion.
final class JoinChatByInviteLink extends TdFunction {
  
  /// **JoinChatByInviteLink** *(joinChatByInviteLink)* - TDLib function
  ///
  /// Uses an invite link to add the current user to the chat if possible. May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created.
  ///
  /// * [inviteLink]: Invite link to use.
  ///
  /// [Chat] is returned on completion.
  const JoinChatByInviteLink({
    required this.inviteLink,
  });
  
  /// Invite link to use
  final String inviteLink;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "invite_link": inviteLink,
      "@extra": extra,
		};
	}

  
  JoinChatByInviteLink copyWith({
    String? inviteLink,
  }) => JoinChatByInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const String objectType = 'joinChatByInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
