part of '../tdapi.dart';

/// **GetExternalLink** *(getExternalLink)* - TDLib function
///
/// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed.
///
/// * [link]: The HTTP link.
/// * [allowWriteAccess]: Pass true if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages.
///
/// [HttpUrl] is returned on completion.
final class GetExternalLink extends TdFunction {
  
  /// **GetExternalLink** *(getExternalLink)* - TDLib function
  ///
  /// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed.
  ///
  /// * [link]: The HTTP link.
  /// * [allowWriteAccess]: Pass true if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages.
  ///
  /// [HttpUrl] is returned on completion.
  const GetExternalLink({
    required this.link,
    required this.allowWriteAccess,
  });
  
  /// The HTTP link
  final String link;

  /// Pass true if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages
  final bool allowWriteAccess;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "link": link,
      "allow_write_access": allowWriteAccess,
      "@extra": extra,
		};
	}

  
  GetExternalLink copyWith({
    String? link,
    bool? allowWriteAccess,
  }) => GetExternalLink(
    link: link ?? this.link,
    allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess,
  );

  static const String objectType = 'getExternalLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
