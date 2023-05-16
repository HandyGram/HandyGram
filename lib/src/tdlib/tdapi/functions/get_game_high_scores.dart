part of '../tdapi.dart';

/// **GetGameHighScores** *(getGameHighScores)* - TDLib function
///
/// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only.
///
/// * [chatId]: The chat that contains the message with the game.
/// * [messageId]: Identifier of the message.
/// * [userId]: User identifier.
///
/// [GameHighScores] is returned on completion.
final class GetGameHighScores extends TdFunction {
  
  /// **GetGameHighScores** *(getGameHighScores)* - TDLib function
  ///
  /// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only.
  ///
  /// * [chatId]: The chat that contains the message with the game.
  /// * [messageId]: Identifier of the message.
  /// * [userId]: User identifier.
  ///
  /// [GameHighScores] is returned on completion.
  const GetGameHighScores({
    required this.chatId,
    required this.messageId,
    required this.userId,
  });
  
  /// The chat that contains the message with the game 
  final int chatId;

  /// Identifier of the message 
  final int messageId;

  /// User identifier
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "user_id": userId,
      "@extra": extra,
		};
	}

  
  GetGameHighScores copyWith({
    int? chatId,
    int? messageId,
    int? userId,
  }) => GetGameHighScores(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    userId: userId ?? this.userId,
  );

  static const String objectType = 'getGameHighScores';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
