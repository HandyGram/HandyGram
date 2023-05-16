part of '../tdapi.dart';

/// **GetExternalLinkInfo** *(getExternalLinkInfo)* - TDLib function
///
/// Returns information about an action to be done when the current user clicks an external link. Don't use this method for links from secret chats if web page preview is disabled in secret chats.
///
/// * [link]: The link.
///
/// [LoginUrlInfo] is returned on completion.
final class GetExternalLinkInfo extends TdFunction {
  
  /// **GetExternalLinkInfo** *(getExternalLinkInfo)* - TDLib function
  ///
  /// Returns information about an action to be done when the current user clicks an external link. Don't use this method for links from secret chats if web page preview is disabled in secret chats.
  ///
  /// * [link]: The link.
  ///
  /// [LoginUrlInfo] is returned on completion.
  const GetExternalLinkInfo({
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

  
  GetExternalLinkInfo copyWith({
    String? link,
  }) => GetExternalLinkInfo(
    link: link ?? this.link,
  );

  static const String objectType = 'getExternalLinkInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
