part of '../tdapi.dart';

/// **ReactionType** *(reactionType)* - parent
  ///
  /// Describes type of message reaction.
class ReactionType extends TdObject {
  
  /// **ReactionType** *(reactionType)* - parent
  ///
  /// Describes type of message reaction.
  const ReactionType();
  
  /// a ReactionType return type can be :
  /// * [ReactionTypeEmoji]
  /// * [ReactionTypeCustomEmoji]
  factory ReactionType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReactionTypeEmoji.constructor:
        return ReactionTypeEmoji.fromJson(json);
      case ReactionTypeCustomEmoji.constructor:
        return ReactionTypeCustomEmoji.fromJson(json);
      default:
        return const ReactionType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ReactionType copyWith() => const ReactionType();

  static const String constructor = 'reactionType';
  
  @override
  String getConstructor() => constructor;
}


/// **ReactionTypeEmoji** *(reactionTypeEmoji)* - child of ReactionType
  ///
  /// A reaction with an emoji.
  ///
  /// * [emoji]: Text representation of the reaction.
class ReactionTypeEmoji extends ReactionType {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "emoji": emoji,
    };
  }
  
  @override
  ReactionTypeEmoji copyWith({
    String? emoji,
  }) => ReactionTypeEmoji(
    emoji: emoji ?? this.emoji,
  );

  static const String constructor = 'reactionTypeEmoji';
  
  @override
  String getConstructor() => constructor;
}


/// **ReactionTypeCustomEmoji** *(reactionTypeCustomEmoji)* - child of ReactionType
  ///
  /// A reaction with a custom emoji.
  ///
  /// * [customEmojiId]: Unique identifier of the custom emoji.
class ReactionTypeCustomEmoji extends ReactionType {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "custom_emoji_id": customEmojiId,
    };
  }
  
  @override
  ReactionTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) => ReactionTypeCustomEmoji(
    customEmojiId: customEmojiId ?? this.customEmojiId,
  );

  static const String constructor = 'reactionTypeCustomEmoji';
  
  @override
  String getConstructor() => constructor;
}
