part of '../tdapi.dart';

/// **GetForumTopicDefaultIcons** *(getForumTopicDefaultIcons)* - TDLib function
///
/// Returns list of custom emojis, which can be used as forum topic icon by all users.
///
/// [Stickers] is returned on completion.
final class GetForumTopicDefaultIcons extends TdFunction {
  
  /// **GetForumTopicDefaultIcons** *(getForumTopicDefaultIcons)* - TDLib function
  ///
  /// Returns list of custom emojis, which can be used as forum topic icon by all users.
  ///
  /// [Stickers] is returned on completion.
  const GetForumTopicDefaultIcons();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetForumTopicDefaultIcons copyWith() => const GetForumTopicDefaultIcons();

  static const String objectType = 'getForumTopicDefaultIcons';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
