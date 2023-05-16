part of '../tdapi.dart';

/// **GetChatInviteLinkCounts** *(getChatInviteLinkCounts)* - TDLib function
///
/// Returns list of chat administrators with number of their invite links. Requires owner privileges in the chat.
///
/// * [chatId]: Chat identifier.
///
/// [ChatInviteLinkCounts] is returned on completion.
final class GetChatInviteLinkCounts extends TdFunction {
  
  /// **GetChatInviteLinkCounts** *(getChatInviteLinkCounts)* - TDLib function
  ///
  /// Returns list of chat administrators with number of their invite links. Requires owner privileges in the chat.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [ChatInviteLinkCounts] is returned on completion.
  const GetChatInviteLinkCounts({
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

  
  GetChatInviteLinkCounts copyWith({
    int? chatId,
  }) => GetChatInviteLinkCounts(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'getChatInviteLinkCounts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
