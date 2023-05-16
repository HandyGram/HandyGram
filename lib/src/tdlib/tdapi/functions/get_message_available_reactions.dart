part of '../tdapi.dart';

/// **GetMessageAvailableReactions** *(getMessageAvailableReactions)* - TDLib function
///
/// Returns reactions, which can be added to a message. The list can change after updateActiveEmojiReactions, updateChatAvailableReactions for the chat, or updateMessageInteractionInfo for the message.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [rowSize]: Number of reaction per row, 5-25.
///
/// [AvailableReactions] is returned on completion.
final class GetMessageAvailableReactions extends TdFunction {
  
  /// **GetMessageAvailableReactions** *(getMessageAvailableReactions)* - TDLib function
  ///
  /// Returns reactions, which can be added to a message. The list can change after updateActiveEmojiReactions, updateChatAvailableReactions for the chat, or updateMessageInteractionInfo for the message.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [rowSize]: Number of reaction per row, 5-25.
  ///
  /// [AvailableReactions] is returned on completion.
  const GetMessageAvailableReactions({
    required this.chatId,
    required this.messageId,
    required this.rowSize,
  });
  
  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Number of reaction per row, 5-25
  final int rowSize;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "row_size": rowSize,
      "@extra": extra,
		};
	}

  
  GetMessageAvailableReactions copyWith({
    int? chatId,
    int? messageId,
    int? rowSize,
  }) => GetMessageAvailableReactions(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    rowSize: rowSize ?? this.rowSize,
  );

  static const String objectType = 'getMessageAvailableReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
