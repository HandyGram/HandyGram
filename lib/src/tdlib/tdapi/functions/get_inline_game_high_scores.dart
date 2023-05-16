part of '../tdapi.dart';

/// **GetInlineGameHighScores** *(getInlineGameHighScores)* - TDLib function
///
/// Returns game high scores and some part of the high score table in the range of the specified user; for bots only.
///
/// * [inlineMessageId]: Inline message identifier.
/// * [userId]: User identifier.
///
/// [GameHighScores] is returned on completion.
final class GetInlineGameHighScores extends TdFunction {
  
  /// **GetInlineGameHighScores** *(getInlineGameHighScores)* - TDLib function
  ///
  /// Returns game high scores and some part of the high score table in the range of the specified user; for bots only.
  ///
  /// * [inlineMessageId]: Inline message identifier.
  /// * [userId]: User identifier.
  ///
  /// [GameHighScores] is returned on completion.
  const GetInlineGameHighScores({
    required this.inlineMessageId,
    required this.userId,
  });
  
  /// Inline message identifier 
  final String inlineMessageId;

  /// User identifier
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "inline_message_id": inlineMessageId,
      "user_id": userId,
      "@extra": extra,
		};
	}

  
  GetInlineGameHighScores copyWith({
    String? inlineMessageId,
    int? userId,
  }) => GetInlineGameHighScores(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    userId: userId ?? this.userId,
  );

  static const String objectType = 'getInlineGameHighScores';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
