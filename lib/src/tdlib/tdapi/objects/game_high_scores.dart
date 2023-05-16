part of '../tdapi.dart';

/// **GameHighScores** *(gameHighScores)* - basic class
///
/// Contains a list of game high scores.
///
/// * [scores]: A list of game high scores.
final class GameHighScores extends TdObject {
  
  /// **GameHighScores** *(gameHighScores)* - basic class
  ///
  /// Contains a list of game high scores.
  ///
  /// * [scores]: A list of game high scores.
  const GameHighScores({
    required this.scores,
    this.extra,
    this.clientId,
  });
  
  /// A list of game high scores
  final List<GameHighScore> scores;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory GameHighScores.fromJson(Map<String, dynamic> json) => GameHighScores(
    scores: List<GameHighScore>.from((json['scores'] ?? []).map((item) => GameHighScore.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "scores": scores.map((i) => i.toJson()).toList(),
		};
	}

  
  GameHighScores copyWith({
    List<GameHighScore>? scores,
    dynamic extra,
    int? clientId,
  }) => GameHighScores(
    scores: scores ?? this.scores,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'gameHighScores';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
