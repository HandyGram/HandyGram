part of '../tdapi.dart';

/// **GetAnimatedEmoji** *(getAnimatedEmoji)* - TDLib function
///
/// Returns an animated emoji corresponding to a given emoji. Returns a 404 error if the emoji has no animated emoji.
///
/// * [emoji]: The emoji.
///
/// [AnimatedEmoji] is returned on completion.
final class GetAnimatedEmoji extends TdFunction {
  
  /// **GetAnimatedEmoji** *(getAnimatedEmoji)* - TDLib function
  ///
  /// Returns an animated emoji corresponding to a given emoji. Returns a 404 error if the emoji has no animated emoji.
  ///
  /// * [emoji]: The emoji.
  ///
  /// [AnimatedEmoji] is returned on completion.
  const GetAnimatedEmoji({
    required this.emoji,
  });
  
  /// The emoji
  final String emoji;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "emoji": emoji,
      "@extra": extra,
		};
	}

  
  GetAnimatedEmoji copyWith({
    String? emoji,
  }) => GetAnimatedEmoji(
    emoji: emoji ?? this.emoji,
  );

  static const String objectType = 'getAnimatedEmoji';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
