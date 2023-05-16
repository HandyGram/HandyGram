part of '../tdapi.dart';

/// **GetDefaultEmojiStatuses** *(getDefaultEmojiStatuses)* - TDLib function
///
/// Returns default emoji statuses.
///
/// [EmojiStatuses] is returned on completion.
final class GetDefaultEmojiStatuses extends TdFunction {
  
  /// **GetDefaultEmojiStatuses** *(getDefaultEmojiStatuses)* - TDLib function
  ///
  /// Returns default emoji statuses.
  ///
  /// [EmojiStatuses] is returned on completion.
  const GetDefaultEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetDefaultEmojiStatuses copyWith() => const GetDefaultEmojiStatuses();

  static const String objectType = 'getDefaultEmojiStatuses';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
