part of '../tdapi.dart';

/// **GetDefaultEmojiStatuses** *(getDefaultEmojiStatuses)* - TDLib function
  ///
  /// Returns default emoji statuses.
  ///
  /// [EmojiStatuses] is returned on completion.
class GetDefaultEmojiStatuses extends TdFunction {
  
  /// **GetDefaultEmojiStatuses** *(getDefaultEmojiStatuses)* - TDLib function
  ///
  /// Returns default emoji statuses.
  ///
  /// [EmojiStatuses] is returned on completion.
  const GetDefaultEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetDefaultEmojiStatuses copyWith() => const GetDefaultEmojiStatuses();

  static const String constructor = 'getDefaultEmojiStatuses';
  
  @override
  String getConstructor() => constructor;
}
