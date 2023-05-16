part of '../tdapi.dart';

/// **EmojiStatus** *(emojiStatus)* - basic class
///
/// Describes a custom emoji to be shown instead of the Telegram Premium badge.
///
/// * [customEmojiId]: Identifier of the custom emoji in stickerFormatTgs format.
final class EmojiStatus extends TdObject {
  
  /// **EmojiStatus** *(emojiStatus)* - basic class
  ///
  /// Describes a custom emoji to be shown instead of the Telegram Premium badge.
  ///
  /// * [customEmojiId]: Identifier of the custom emoji in stickerFormatTgs format.
  const EmojiStatus({
    required this.customEmojiId,
  });
  
  /// Identifier of the custom emoji in stickerFormatTgs format
  final int customEmojiId;
  
  /// Parse from a json
  factory EmojiStatus.fromJson(Map<String, dynamic> json) => EmojiStatus(
    customEmojiId: int.parse(json['custom_emoji_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "custom_emoji_id": customEmojiId,
		};
	}

  
  EmojiStatus copyWith({
    int? customEmojiId,
  }) => EmojiStatus(
    customEmojiId: customEmojiId ?? this.customEmojiId,
  );

  static const String objectType = 'emojiStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
