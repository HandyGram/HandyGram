part of '../tdapi.dart';

/// **ClearRecentEmojiStatuses** *(clearRecentEmojiStatuses)* - TDLib function
  ///
  /// Clears the list of recently used emoji statuses.
  ///
  /// [Ok] is returned on completion.
class ClearRecentEmojiStatuses extends TdFunction {
  
  /// **ClearRecentEmojiStatuses** *(clearRecentEmojiStatuses)* - TDLib function
  ///
  /// Clears the list of recently used emoji statuses.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ClearRecentEmojiStatuses copyWith() => const ClearRecentEmojiStatuses();

  static const String constructor = 'clearRecentEmojiStatuses';
  
  @override
  String getConstructor() => constructor;
}
