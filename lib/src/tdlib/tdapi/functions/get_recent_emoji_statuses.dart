part of '../tdapi.dart';

/// **GetRecentEmojiStatuses** *(getRecentEmojiStatuses)* - TDLib function
///
/// Returns recent emoji statuses.
///
/// [EmojiStatuses] is returned on completion.
final class GetRecentEmojiStatuses extends TdFunction {
  
  /// **GetRecentEmojiStatuses** *(getRecentEmojiStatuses)* - TDLib function
  ///
  /// Returns recent emoji statuses.
  ///
  /// [EmojiStatuses] is returned on completion.
  const GetRecentEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetRecentEmojiStatuses copyWith() => const GetRecentEmojiStatuses();

  static const String objectType = 'getRecentEmojiStatuses';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
