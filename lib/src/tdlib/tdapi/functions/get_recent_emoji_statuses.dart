part of '../tdapi.dart';

/// **GetRecentEmojiStatuses** *(getRecentEmojiStatuses)* - TDLib function
  ///
  /// Returns recent emoji statuses.
  ///
  /// [EmojiStatuses] is returned on completion.
class GetRecentEmojiStatuses extends TdFunction {
  
  /// **GetRecentEmojiStatuses** *(getRecentEmojiStatuses)* - TDLib function
  ///
  /// Returns recent emoji statuses.
  ///
  /// [EmojiStatuses] is returned on completion.
  const GetRecentEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetRecentEmojiStatuses copyWith() => const GetRecentEmojiStatuses();

  static const String constructor = 'getRecentEmojiStatuses';
  
  @override
  String getConstructor() => constructor;
}
