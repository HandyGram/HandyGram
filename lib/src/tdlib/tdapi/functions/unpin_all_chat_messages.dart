part of '../tdapi.dart';

/// **UnpinAllChatMessages** *(unpinAllChatMessages)* - TDLib function
///
/// Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel.
///
/// * [chatId]: Identifier of the chat.
///
/// [Ok] is returned on completion.
final class UnpinAllChatMessages extends TdFunction {
  
  /// **UnpinAllChatMessages** *(unpinAllChatMessages)* - TDLib function
  ///
  /// Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel.
  ///
  /// * [chatId]: Identifier of the chat.
  ///
  /// [Ok] is returned on completion.
  const UnpinAllChatMessages({
    required this.chatId,
  });
  
  /// Identifier of the chat
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  UnpinAllChatMessages copyWith({
    int? chatId,
  }) => UnpinAllChatMessages(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'unpinAllChatMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
