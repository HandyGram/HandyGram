part of '../tdapi.dart';

/// **ReactionType** *(reactionType)* - parent
///
/// Describes type of message reaction.
sealed class ReactionType extends TdObject {
  
  /// **ReactionType** *(reactionType)* - parent
  ///
  /// Describes type of message reaction.
  const ReactionType();
  
  /// a ReactionType return type can be :
  /// * [ReactionTypeEmoji]
  /// * [ReactionTypeCustomEmoji]
  factory ReactionType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReactionTypeEmoji.objectType:
        return ReactionTypeEmoji.fromJson(json);
      case ReactionTypeCustomEmoji.objectType:
        return ReactionTypeCustomEmoji.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ReactionType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ReactionType copyWith();

  static const String objectType = 'reactionType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ReactionTypeEmoji** *(reactionTypeEmoji)* - child of ReactionType
///
/// A reaction with an emoji.
///
/// * [emoji]: Text representation of the reaction.
final class ReactionTypeEmoji extends ReactionType {
  
  /// **ReactionTypeEmoji** *(reactionTypeEmoji)* - child of ReactionType
  ///
  /// A reaction with an emoji.
  ///
  /// * [emoji]: Text representation of the reaction.
  const ReactionTypeEmoji({
    required this.emoji,
  });
  
  /// Text representation of the reaction
  final String emoji;
  
  /// Parse from a json
  factory ReactionTypeEmoji.fromJson(Map<String, dynamic> json) => ReactionTypeEmoji(
    emoji: json['emoji'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "emoji": emoji,
		};
	}

  
  @override
  ReactionTypeEmoji copyWith({
    String? emoji,
  }) => ReactionTypeEmoji(
    emoji: emoji ?? this.emoji,
  );

  static const String objectType = 'reactionTypeEmoji';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ReactionTypeCustomEmoji** *(reactionTypeCustomEmoji)* - child of ReactionType
///
/// A reaction with a custom emoji.
///
/// * [customEmojiId]: Unique identifier of the custom emoji.
final class ReactionTypeCustomEmoji extends ReactionType {
  
  /// **ReactionTypeCustomEmoji** *(reactionTypeCustomEmoji)* - child of ReactionType
  ///
  /// A reaction with a custom emoji.
  ///
  /// * [customEmojiId]: Unique identifier of the custom emoji.
  const ReactionTypeCustomEmoji({
    required this.customEmojiId,
  });
  
  /// Unique identifier of the custom emoji
  final int customEmojiId;
  
  /// Parse from a json
  factory ReactionTypeCustomEmoji.fromJson(Map<String, dynamic> json) => ReactionTypeCustomEmoji(
    customEmojiId: int.parse(json['custom_emoji_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "custom_emoji_id": customEmojiId,
		};
	}

  
  @override
  ReactionTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) => ReactionTypeCustomEmoji(
    customEmojiId: customEmojiId ?? this.customEmojiId,
  );

  static const String objectType = 'reactionTypeCustomEmoji';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
