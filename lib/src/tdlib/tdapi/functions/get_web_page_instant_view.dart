part of '../tdapi.dart';

/// **GetWebPageInstantView** *(getWebPageInstantView)* - TDLib function
///
/// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page.
///
/// * [url]: The web page URL.
/// * [forceFull]: Pass true to get full instant view for the web page.
///
/// [WebPageInstantView] is returned on completion.
final class GetWebPageInstantView extends TdFunction {
  
  /// **GetWebPageInstantView** *(getWebPageInstantView)* - TDLib function
  ///
  /// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page.
  ///
  /// * [url]: The web page URL.
  /// * [forceFull]: Pass true to get full instant view for the web page.
  ///
  /// [WebPageInstantView] is returned on completion.
  const GetWebPageInstantView({
    required this.url,
    required this.forceFull,
  });
  
  /// The web page URL 
  final String url;

  /// Pass true to get full instant view for the web page
  final bool forceFull;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "url": url,
      "force_full": forceFull,
      "@extra": extra,
		};
	}

  
  GetWebPageInstantView copyWith({
    String? url,
    bool? forceFull,
  }) => GetWebPageInstantView(
    url: url ?? this.url,
    forceFull: forceFull ?? this.forceFull,
  );

  static const String objectType = 'getWebPageInstantView';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
