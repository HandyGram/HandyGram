part of '../tdapi.dart';

/// **SetInlineGameScore** *(setInlineGameScore)* - TDLib function
///
/// Updates the game score of the specified user in a game; for bots only.
///
/// * [inlineMessageId]: Inline message identifier.
/// * [editMessage]: Pass true to edit the game message to include the current scoreboard.
/// * [userId]: User identifier.
/// * [score]: The new score.
/// * [force]: Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table.
///
/// [Ok] is returned on completion.
final class SetInlineGameScore extends TdFunction {
  
  /// **SetInlineGameScore** *(setInlineGameScore)* - TDLib function
  ///
  /// Updates the game score of the specified user in a game; for bots only.
  ///
  /// * [inlineMessageId]: Inline message identifier.
  /// * [editMessage]: Pass true to edit the game message to include the current scoreboard.
  /// * [userId]: User identifier.
  /// * [score]: The new score.
  /// * [force]: Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table.
  ///
  /// [Ok] is returned on completion.
  const SetInlineGameScore({
    required this.inlineMessageId,
    required this.editMessage,
    required this.userId,
    required this.score,
    required this.force,
  });
  
  /// Inline message identifier
  final String inlineMessageId;

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
      "inline_message_id": inlineMessageId,
      "edit_message": editMessage,
      "user_id": userId,
      "score": score,
      "force": force,
      "@extra": extra,
		};
	}

  
  SetInlineGameScore copyWith({
    String? inlineMessageId,
    bool? editMessage,
    int? userId,
    int? score,
    bool? force,
  }) => SetInlineGameScore(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    editMessage: editMessage ?? this.editMessage,
    userId: userId ?? this.userId,
    score: score ?? this.score,
    force: force ?? this.force,
  );

  static const String objectType = 'setInlineGameScore';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
