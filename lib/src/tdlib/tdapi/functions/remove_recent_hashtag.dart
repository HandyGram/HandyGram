part of '../tdapi.dart';

/// **RemoveRecentHashtag** *(removeRecentHashtag)* - TDLib function
///
/// Removes a hashtag from the list of recently used hashtags.
///
/// * [hashtag]: Hashtag to delete.
///
/// [Ok] is returned on completion.
final class RemoveRecentHashtag extends TdFunction {
  
  /// **RemoveRecentHashtag** *(removeRecentHashtag)* - TDLib function
  ///
  /// Removes a hashtag from the list of recently used hashtags.
  ///
  /// * [hashtag]: Hashtag to delete.
  ///
  /// [Ok] is returned on completion.
  const RemoveRecentHashtag({
    required this.hashtag,
  });
  
  /// Hashtag to delete
  final String hashtag;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "hashtag": hashtag,
      "@extra": extra,
		};
	}

  
  RemoveRecentHashtag copyWith({
    String? hashtag,
  }) => RemoveRecentHashtag(
    hashtag: hashtag ?? this.hashtag,
  );

  static const String objectType = 'removeRecentHashtag';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
