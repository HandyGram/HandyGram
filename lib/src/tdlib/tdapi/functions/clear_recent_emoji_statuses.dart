part of '../tdapi.dart';

/// **ClearRecentEmojiStatuses** *(clearRecentEmojiStatuses)* - TDLib function
///
/// Clears the list of recently used emoji statuses.
///
/// [Ok] is returned on completion.
final class ClearRecentEmojiStatuses extends TdFunction {
  
  /// **ClearRecentEmojiStatuses** *(clearRecentEmojiStatuses)* - TDLib function
  ///
  /// Clears the list of recently used emoji statuses.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ClearRecentEmojiStatuses copyWith() => const ClearRecentEmojiStatuses();

  static const String objectType = 'clearRecentEmojiStatuses';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
