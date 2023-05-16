part of '../tdapi.dart';

/// **GetThemedEmojiStatuses** *(getThemedEmojiStatuses)* - TDLib function
///
/// Returns up to 8 emoji statuses, which must be shown right after the default Premium Badge in the emoji status list.
///
/// [EmojiStatuses] is returned on completion.
final class GetThemedEmojiStatuses extends TdFunction {
  
  /// **GetThemedEmojiStatuses** *(getThemedEmojiStatuses)* - TDLib function
  ///
  /// Returns up to 8 emoji statuses, which must be shown right after the default Premium Badge in the emoji status list.
  ///
  /// [EmojiStatuses] is returned on completion.
  const GetThemedEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetThemedEmojiStatuses copyWith() => const GetThemedEmojiStatuses();

  static const String objectType = 'getThemedEmojiStatuses';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
