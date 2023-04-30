part of '../tdapi.dart';

/// **GetForumTopicDefaultIcons** *(getForumTopicDefaultIcons)* - TDLib function
  ///
  /// Returns list of custom emojis, which can be used as forum topic icon by all users.
  ///
  /// [Stickers] is returned on completion.
class GetForumTopicDefaultIcons extends TdFunction {
  
  /// **GetForumTopicDefaultIcons** *(getForumTopicDefaultIcons)* - TDLib function
  ///
  /// Returns list of custom emojis, which can be used as forum topic icon by all users.
  ///
  /// [Stickers] is returned on completion.
  const GetForumTopicDefaultIcons();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetForumTopicDefaultIcons copyWith() => const GetForumTopicDefaultIcons();

  static const String constructor = 'getForumTopicDefaultIcons';
  
  @override
  String getConstructor() => constructor;
}
