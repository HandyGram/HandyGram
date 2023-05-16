part of '../tdapi.dart';

/// **ProcessChatJoinRequest** *(processChatJoinRequest)* - TDLib function
///
/// Handles a pending join request in a chat.
///
/// * [chatId]: Chat identifier.
/// * [userId]: Identifier of the user that sent the request.
/// * [approve]: Pass true to approve the request; pass false to decline it.
///
/// [Ok] is returned on completion.
final class ProcessChatJoinRequest extends TdFunction {
  
  /// **ProcessChatJoinRequest** *(processChatJoinRequest)* - TDLib function
  ///
  /// Handles a pending join request in a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [userId]: Identifier of the user that sent the request.
  /// * [approve]: Pass true to approve the request; pass false to decline it.
  ///
  /// [Ok] is returned on completion.
  const ProcessChatJoinRequest({
    required this.chatId,
    required this.userId,
    required this.approve,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Identifier of the user that sent the request 
  final int userId;

  /// Pass true to approve the request; pass false to decline it
  final bool approve;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "user_id": userId,
      "approve": approve,
      "@extra": extra,
		};
	}

  
  ProcessChatJoinRequest copyWith({
    int? chatId,
    int? userId,
    bool? approve,
  }) => ProcessChatJoinRequest(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
    approve: approve ?? this.approve,
  );

  static const String objectType = 'processChatJoinRequest';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
