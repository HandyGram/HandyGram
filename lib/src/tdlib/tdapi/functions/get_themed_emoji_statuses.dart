part of '../tdapi.dart';

/// **GetThemedEmojiStatuses** *(getThemedEmojiStatuses)* - TDLib function
  ///
  /// Returns up to 8 emoji statuses, which must be shown right after the default Premium Badge in the emoji status list.
  ///
  /// [EmojiStatuses] is returned on completion.
class GetThemedEmojiStatuses extends TdFunction {
  
  /// **GetThemedEmojiStatuses** *(getThemedEmojiStatuses)* - TDLib function
  ///
  /// Returns up to 8 emoji statuses, which must be shown right after the default Premium Badge in the emoji status list.
  ///
  /// [EmojiStatuses] is returned on completion.
  const GetThemedEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetThemedEmojiStatuses copyWith() => const GetThemedEmojiStatuses();

  static const String constructor = 'getThemedEmojiStatuses';
  
  @override
  String getConstructor() => constructor;
}
