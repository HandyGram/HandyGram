part of '../tdapi.dart';

/// **ForumTopicIcon** *(forumTopicIcon)* - basic class
///
/// Describes a forum topic icon.
///
/// * [color]: Color of the topic icon in RGB format.
/// * [customEmojiId]: Unique identifier of the custom emoji shown on the topic icon; 0 if none.
final class ForumTopicIcon extends TdObject {
  
  /// **ForumTopicIcon** *(forumTopicIcon)* - basic class
  ///
  /// Describes a forum topic icon.
  ///
  /// * [color]: Color of the topic icon in RGB format.
  /// * [customEmojiId]: Unique identifier of the custom emoji shown on the topic icon; 0 if none.
  const ForumTopicIcon({
    required this.color,
    required this.customEmojiId,
  });
  
  /// Color of the topic icon in RGB format 
  final int color;

  /// Unique identifier of the custom emoji shown on the topic icon; 0 if none
  final int customEmojiId;
  
  /// Parse from a json
  factory ForumTopicIcon.fromJson(Map<String, dynamic> json) => ForumTopicIcon(
    color: json['color'],
    customEmojiId: int.tryParse(json['custom_emoji_id'] ?? "") ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "color": color,
      "custom_emoji_id": customEmojiId,
		};
	}

  
  ForumTopicIcon copyWith({
    int? color,
    int? customEmojiId,
  }) => ForumTopicIcon(
    color: color ?? this.color,
    customEmojiId: customEmojiId ?? this.customEmojiId,
  );

  static const String objectType = 'forumTopicIcon';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
