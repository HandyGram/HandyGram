part of '../tdapi.dart';

/// **GetCustomEmojiReactionAnimations** *(getCustomEmojiReactionAnimations)* - TDLib function
///
/// Returns TGS stickers with generic animations for custom emoji reactions.
///
/// [Stickers] is returned on completion.
final class GetCustomEmojiReactionAnimations extends TdFunction {
  
  /// **GetCustomEmojiReactionAnimations** *(getCustomEmojiReactionAnimations)* - TDLib function
  ///
  /// Returns TGS stickers with generic animations for custom emoji reactions.
  ///
  /// [Stickers] is returned on completion.
  const GetCustomEmojiReactionAnimations();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetCustomEmojiReactionAnimations copyWith() => const GetCustomEmojiReactionAnimations();

  static const String objectType = 'getCustomEmojiReactionAnimations';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
