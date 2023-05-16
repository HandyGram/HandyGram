part of '../tdapi.dart';

/// **GetInternalLinkType** *(getInternalLinkType)* - TDLib function
///
/// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization.
///
/// * [link]: The link.
///
/// [InternalLinkType] is returned on completion.
final class GetInternalLinkType extends TdFunction {
  
  /// **GetInternalLinkType** *(getInternalLinkType)* - TDLib function
  ///
  /// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization.
  ///
  /// * [link]: The link.
  ///
  /// [InternalLinkType] is returned on completion.
  const GetInternalLinkType({
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

  
  GetInternalLinkType copyWith({
    String? link,
  }) => GetInternalLinkType(
    link: link ?? this.link,
  );

  static const String objectType = 'getInternalLinkType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
