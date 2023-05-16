part of '../tdapi.dart';

/// **ProcessChatJoinRequests** *(processChatJoinRequests)* - TDLib function
///
/// Handles all pending join requests for a given link in a chat.
///
/// * [chatId]: Chat identifier.
/// * [inviteLink]: Invite link for which to process join requests. If empty, all join requests will be processed. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
/// * [approve]: Pass true to approve all requests; pass false to decline them.
///
/// [Ok] is returned on completion.
final class ProcessChatJoinRequests extends TdFunction {
  
  /// **ProcessChatJoinRequests** *(processChatJoinRequests)* - TDLib function
  ///
  /// Handles all pending join requests for a given link in a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [inviteLink]: Invite link for which to process join requests. If empty, all join requests will be processed. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
  /// * [approve]: Pass true to approve all requests; pass false to decline them.
  ///
  /// [Ok] is returned on completion.
  const ProcessChatJoinRequests({
    required this.chatId,
    required this.inviteLink,
    required this.approve,
  });
  
  /// Chat identifier
  final int chatId;

  /// Invite link for which to process join requests. If empty, all join requests will be processed. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  final String inviteLink;

  /// Pass true to approve all requests; pass false to decline them
  final bool approve;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "approve": approve,
      "@extra": extra,
		};
	}

  
  ProcessChatJoinRequests copyWith({
    int? chatId,
    String? inviteLink,
    bool? approve,
  }) => ProcessChatJoinRequests(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
    approve: approve ?? this.approve,
  );

  static const String objectType = 'processChatJoinRequests';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
