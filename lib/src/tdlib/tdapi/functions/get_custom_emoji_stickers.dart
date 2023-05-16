part of '../tdapi.dart';

/// **GetCustomEmojiStickers** *(getCustomEmojiStickers)* - TDLib function
///
/// Returns list of custom emoji stickers by their identifiers. Stickers are returned in arbitrary order. Only found stickers are returned.
///
/// * [customEmojiIds]: Identifiers of custom emoji stickers. At most 200 custom emoji stickers can be received simultaneously.
///
/// [Stickers] is returned on completion.
final class GetCustomEmojiStickers extends TdFunction {
  
  /// **GetCustomEmojiStickers** *(getCustomEmojiStickers)* - TDLib function
  ///
  /// Returns list of custom emoji stickers by their identifiers. Stickers are returned in arbitrary order. Only found stickers are returned.
  ///
  /// * [customEmojiIds]: Identifiers of custom emoji stickers. At most 200 custom emoji stickers can be received simultaneously.
  ///
  /// [Stickers] is returned on completion.
  const GetCustomEmojiStickers({
    required this.customEmojiIds,
  });
  
  /// Identifiers of custom emoji stickers. At most 200 custom emoji stickers can be received simultaneously
  final List<int> customEmojiIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "custom_emoji_ids": customEmojiIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  GetCustomEmojiStickers copyWith({
    List<int>? customEmojiIds,
  }) => GetCustomEmojiStickers(
    customEmojiIds: customEmojiIds ?? this.customEmojiIds,
  );

  static const String objectType = 'getCustomEmojiStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
