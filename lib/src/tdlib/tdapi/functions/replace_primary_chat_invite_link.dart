part of '../tdapi.dart';

/// **ReplacePrimaryChatInviteLink** *(replacePrimaryChatInviteLink)* - TDLib function
///
/// Replaces current primary invite link for a chat with a new primary invite link. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right.
///
/// * [chatId]: Chat identifier.
///
/// [ChatInviteLink] is returned on completion.
final class ReplacePrimaryChatInviteLink extends TdFunction {
  
  /// **ReplacePrimaryChatInviteLink** *(replacePrimaryChatInviteLink)* - TDLib function
  ///
  /// Replaces current primary invite link for a chat with a new primary invite link. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [ChatInviteLink] is returned on completion.
  const ReplacePrimaryChatInviteLink({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  ReplacePrimaryChatInviteLink copyWith({
    int? chatId,
  }) => ReplacePrimaryChatInviteLink(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'replacePrimaryChatInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
