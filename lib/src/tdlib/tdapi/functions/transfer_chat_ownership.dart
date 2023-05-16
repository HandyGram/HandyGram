part of '../tdapi.dart';

/// **TransferChatOwnership** *(transferChatOwnership)* - TDLib function
///
/// Changes the owner of a chat. The current user must be a current owner of the chat. Use the method canTransferOwnership to check whether the ownership can be transferred from the current session. Available only for supergroups and channel chats.
///
/// * [chatId]: Chat identifier.
/// * [userId]: Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user.
/// * [password]: The 2-step verification password of the current user.
///
/// [Ok] is returned on completion.
final class TransferChatOwnership extends TdFunction {
  
  /// **TransferChatOwnership** *(transferChatOwnership)* - TDLib function
  ///
  /// Changes the owner of a chat. The current user must be a current owner of the chat. Use the method canTransferOwnership to check whether the ownership can be transferred from the current session. Available only for supergroups and channel chats.
  ///
  /// * [chatId]: Chat identifier.
  /// * [userId]: Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user.
  /// * [password]: The 2-step verification password of the current user.
  ///
  /// [Ok] is returned on completion.
  const TransferChatOwnership({
    required this.chatId,
    required this.userId,
    required this.password,
  });
  
  /// Chat identifier
  final int chatId;

  /// Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user
  final int userId;

  /// The 2-step verification password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "user_id": userId,
      "password": password,
      "@extra": extra,
		};
	}

  
  TransferChatOwnership copyWith({
    int? chatId,
    int? userId,
    String? password,
  }) => TransferChatOwnership(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
    password: password ?? this.password,
  );

  static const String objectType = 'transferChatOwnership';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
