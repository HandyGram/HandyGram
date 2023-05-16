part of '../tdapi.dart';

/// **DeleteAllRevokedChatInviteLinks** *(deleteAllRevokedChatInviteLinks)* - TDLib function
///
/// Deletes all revoked chat invite links created by a given chat administrator. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
///
/// * [chatId]: Chat identifier.
/// * [creatorUserId]: User identifier of a chat administrator, which links will be deleted. Must be an identifier of the current user for non-owner.
///
/// [Ok] is returned on completion.
final class DeleteAllRevokedChatInviteLinks extends TdFunction {
  
  /// **DeleteAllRevokedChatInviteLinks** *(deleteAllRevokedChatInviteLinks)* - TDLib function
  ///
  /// Deletes all revoked chat invite links created by a given chat administrator. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
  ///
  /// * [chatId]: Chat identifier.
  /// * [creatorUserId]: User identifier of a chat administrator, which links will be deleted. Must be an identifier of the current user for non-owner.
  ///
  /// [Ok] is returned on completion.
  const DeleteAllRevokedChatInviteLinks({
    required this.chatId,
    required this.creatorUserId,
  });
  
  /// Chat identifier
  final int chatId;

  /// User identifier of a chat administrator, which links will be deleted. Must be an identifier of the current user for non-owner
  final int creatorUserId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "creator_user_id": creatorUserId,
      "@extra": extra,
		};
	}

  
  DeleteAllRevokedChatInviteLinks copyWith({
    int? chatId,
    int? creatorUserId,
  }) => DeleteAllRevokedChatInviteLinks(
    chatId: chatId ?? this.chatId,
    creatorUserId: creatorUserId ?? this.creatorUserId,
  );

  static const String objectType = 'deleteAllRevokedChatInviteLinks';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
