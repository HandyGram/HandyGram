part of '../tdapi.dart';

/// **GetDeepLinkInfo** *(getDeepLinkInfo)* - TDLib function
///
/// Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization.
///
/// * [link]: The link.
///
/// [DeepLinkInfo] is returned on completion.
final class GetDeepLinkInfo extends TdFunction {
  
  /// **GetDeepLinkInfo** *(getDeepLinkInfo)* - TDLib function
  ///
  /// Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization.
  ///
  /// * [link]: The link.
  ///
  /// [DeepLinkInfo] is returned on completion.
  const GetDeepLinkInfo({
    required this.link,
  });
  
  /// The link
  final String link;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "link": link,
      "@extra": extra,
		};
	}

  
  GetDeepLinkInfo copyWith({
    String? link,
  }) => GetDeepLinkInfo(
    link: link ?? this.link,
  );

  static const String objectType = 'getDeepLinkInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
