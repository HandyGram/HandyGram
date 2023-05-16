part of '../tdapi.dart';

/// **AddMessageReaction** *(addMessageReaction)* - TDLib function
///
/// Adds a reaction to a message. Use getMessageAvailableReactions to receive the list of available reactions for the message.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [reactionType]: Type of the reaction to add.
/// * [isBig]: Pass true if the reaction is added with a big animation.
/// * [updateRecentReactions]: Pass true if the reaction needs to be added to recent reactions.
///
/// [Ok] is returned on completion.
final class AddMessageReaction extends TdFunction {
  
  /// **AddMessageReaction** *(addMessageReaction)* - TDLib function
  ///
  /// Adds a reaction to a message. Use getMessageAvailableReactions to receive the list of available reactions for the message.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [reactionType]: Type of the reaction to add.
  /// * [isBig]: Pass true if the reaction is added with a big animation.
  /// * [updateRecentReactions]: Pass true if the reaction needs to be added to recent reactions.
  ///
  /// [Ok] is returned on completion.
  const AddMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.reactionType,
    required this.isBig,
    required this.updateRecentReactions,
  });
  
  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Type of the reaction to add
  final ReactionType reactionType;

  /// Pass true if the reaction is added with a big animation
  final bool isBig;

  /// Pass true if the reaction needs to be added to recent reactions
  final bool updateRecentReactions;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "reaction_type": reactionType.toJson(),
      "is_big": isBig,
      "update_recent_reactions": updateRecentReactions,
      "@extra": extra,
		};
	}

  
  AddMessageReaction copyWith({
    int? chatId,
    int? messageId,
    ReactionType? reactionType,
    bool? isBig,
    bool? updateRecentReactions,
  }) => AddMessageReaction(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    reactionType: reactionType ?? this.reactionType,
    isBig: isBig ?? this.isBig,
    updateRecentReactions: updateRecentReactions ?? this.updateRecentReactions,
  );

  static const String objectType = 'addMessageReaction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
