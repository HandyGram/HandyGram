part of '../tdapi.dart';

/// **CheckChatInviteLink** *(checkChatInviteLink)* - TDLib function
///
/// Checks the validity of an invite link for a chat and returns information about the corresponding chat.
///
/// * [inviteLink]: Invite link to be checked.
///
/// [ChatInviteLinkInfo] is returned on completion.
final class CheckChatInviteLink extends TdFunction {
  
  /// **CheckChatInviteLink** *(checkChatInviteLink)* - TDLib function
  ///
  /// Checks the validity of an invite link for a chat and returns information about the corresponding chat.
  ///
  /// * [inviteLink]: Invite link to be checked.
  ///
  /// [ChatInviteLinkInfo] is returned on completion.
  const CheckChatInviteLink({
    required this.inviteLink,
  });
  
  /// Invite link to be checked
  final String inviteLink;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "invite_link": inviteLink,
      "@extra": extra,
		};
	}

  
  CheckChatInviteLink copyWith({
    String? inviteLink,
  }) => CheckChatInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const String objectType = 'checkChatInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
