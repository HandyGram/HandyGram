part of '../tdapi.dart';

/// **SetGameScore** *(setGameScore)* - TDLib function
///
/// Updates the game score of the specified user in the game; for bots only.
///
/// * [chatId]: The chat to which the message with the game belongs.
/// * [messageId]: Identifier of the message.
/// * [editMessage]: Pass true to edit the game message to include the current scoreboard.
/// * [userId]: User identifier.
/// * [score]: The new score.
/// * [force]: Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table.
///
/// [Message] is returned on completion.
final class SetGameScore extends TdFunction {
  
  /// **SetGameScore** *(setGameScore)* - TDLib function
  ///
  /// Updates the game score of the specified user in the game; for bots only.
  ///
  /// * [chatId]: The chat to which the message with the game belongs.
  /// * [messageId]: Identifier of the message.
  /// * [editMessage]: Pass true to edit the game message to include the current scoreboard.
  /// * [userId]: User identifier.
  /// * [score]: The new score.
  /// * [force]: Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table.
  ///
  /// [Message] is returned on completion.
  const SetGameScore({
    required this.chatId,
    required this.messageId,
    required this.editMessage,
    required this.userId,
    required this.score,
    required this.force,
  });
  
  /// The chat to which the message with the game belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Pass true to edit the game message to include the current scoreboard
  final bool editMessage;

  /// User identifier
  final int userId;

  /// The new score
  final int score;

  /// Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  final bool force;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "edit_message": editMessage,
      "user_id": userId,
      "score": score,
      "force": force,
      "@extra": extra,
		};
	}

  
  SetGameScore copyWith({
    int? chatId,
    int? messageId,
    bool? editMessage,
    int? userId,
    int? score,
    bool? force,
  }) => SetGameScore(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    editMessage: editMessage ?? this.editMessage,
    userId: userId ?? this.userId,
    score: score ?? this.score,
    force: force ?? this.force,
  );

  static const String objectType = 'setGameScore';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
