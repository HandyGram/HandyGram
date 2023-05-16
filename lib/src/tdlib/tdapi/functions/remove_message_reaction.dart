part of '../tdapi.dart';

/// **RemoveMessageReaction** *(removeMessageReaction)* - TDLib function
///
/// Removes a reaction from a message. A chosen reaction can always be removed.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [reactionType]: Type of the reaction to remove.
///
/// [Ok] is returned on completion.
final class RemoveMessageReaction extends TdFunction {
  
  /// **RemoveMessageReaction** *(removeMessageReaction)* - TDLib function
  ///
  /// Removes a reaction from a message. A chosen reaction can always be removed.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [reactionType]: Type of the reaction to remove.
  ///
  /// [Ok] is returned on completion.
  const RemoveMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.reactionType,
  });
  
  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Type of the reaction to remove
  final ReactionType reactionType;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "reaction_type": reactionType.toJson(),
      "@extra": extra,
		};
	}

  
  RemoveMessageReaction copyWith({
    int? chatId,
    int? messageId,
    ReactionType? reactionType,
  }) => RemoveMessageReaction(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    reactionType: reactionType ?? this.reactionType,
  );

  static const String objectType = 'removeMessageReaction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
