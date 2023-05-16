part of '../tdapi.dart';

/// **GetEmojiReaction** *(getEmojiReaction)* - TDLib function
///
/// Returns information about a emoji reaction. Returns a 404 error if the reaction is not found.
///
/// * [emoji]: Text representation of the reaction.
///
/// [EmojiReaction] is returned on completion.
final class GetEmojiReaction extends TdFunction {
  
  /// **GetEmojiReaction** *(getEmojiReaction)* - TDLib function
  ///
  /// Returns information about a emoji reaction. Returns a 404 error if the reaction is not found.
  ///
  /// * [emoji]: Text representation of the reaction.
  ///
  /// [EmojiReaction] is returned on completion.
  const GetEmojiReaction({
    required this.emoji,
  });
  
  /// Text representation of the reaction
  final String emoji;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "emoji": emoji,
      "@extra": extra,
		};
	}

  
  GetEmojiReaction copyWith({
    String? emoji,
  }) => GetEmojiReaction(
    emoji: emoji ?? this.emoji,
  );

  static const String objectType = 'getEmojiReaction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
