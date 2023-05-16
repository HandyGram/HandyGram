part of '../tdapi.dart';

/// **Game** *(game)* - basic class
///
/// Describes a game.
///
/// * [id]: Unique game identifier.
/// * [shortName]: Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name}.
/// * [title]: Game title.
/// * [text]: Game text, usually containing scoreboards for a game.
/// * [description]: Game description.
/// * [photo]: Game photo.
/// * [animation]: Game animation; may be null *(optional)*.
final class Game extends TdObject {
  
  /// **Game** *(game)* - basic class
  ///
  /// Describes a game.
  ///
  /// * [id]: Unique game identifier.
  /// * [shortName]: Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name}.
  /// * [title]: Game title.
  /// * [text]: Game text, usually containing scoreboards for a game.
  /// * [description]: Game description.
  /// * [photo]: Game photo.
  /// * [animation]: Game animation; may be null *(optional)*.
  const Game({
    required this.id,
    required this.shortName,
    required this.title,
    required this.text,
    required this.description,
    required this.photo,
    this.animation,
  });
  
  /// Unique game identifier
  final int id;

  /// Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name}
  final String shortName;

  /// Game title
  final String title;

  /// Game text, usually containing scoreboards for a game
  final FormattedText text;

  /// Game description
  final String description;

  /// Game photo
  final Photo photo;

  /// Game animation; may be null
  final Animation? animation;
  
  /// Parse from a json
  factory Game.fromJson(Map<String, dynamic> json) => Game(
    id: int.parse(json['id']),
    shortName: json['short_name'],
    title: json['title'],
    text: FormattedText.fromJson(json['text']),
    description: json['description'],
    photo: Photo.fromJson(json['photo']),
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "short_name": shortName,
      "title": title,
      "text": text.toJson(),
      "description": description,
      "photo": photo.toJson(),
      "animation": animation?.toJson(),
		};
	}

  
  Game copyWith({
    int? id,
    String? shortName,
    String? title,
    FormattedText? text,
    String? description,
    Photo? photo,
    Animation? animation,
  }) => Game(
    id: id ?? this.id,
    shortName: shortName ?? this.shortName,
    title: title ?? this.title,
    text: text ?? this.text,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    animation: animation ?? this.animation,
  );

  static const String objectType = 'game';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
