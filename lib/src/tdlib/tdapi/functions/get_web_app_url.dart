part of '../tdapi.dart';

/// **GetWebAppUrl** *(getWebAppUrl)* - TDLib function
///
/// Returns an HTTPS URL of a Web App to open after keyboardButtonTypeWebApp button is pressed.
///
/// * [botUserId]: Identifier of the target bot.
/// * [url]: The URL from the keyboardButtonTypeWebApp button.
/// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
/// * [applicationName]: Short name of the application; 0-64 English letters, digits, and underscores.
///
/// [HttpUrl] is returned on completion.
final class GetWebAppUrl extends TdFunction {
  
  /// **GetWebAppUrl** *(getWebAppUrl)* - TDLib function
  ///
  /// Returns an HTTPS URL of a Web App to open after keyboardButtonTypeWebApp button is pressed.
  ///
  /// * [botUserId]: Identifier of the target bot.
  /// * [url]: The URL from the keyboardButtonTypeWebApp button.
  /// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
  /// * [applicationName]: Short name of the application; 0-64 English letters, digits, and underscores.
  ///
  /// [HttpUrl] is returned on completion.
  const GetWebAppUrl({
    required this.botUserId,
    required this.url,
    this.theme,
    required this.applicationName,
  });
  
  /// Identifier of the target bot
  final int botUserId;

  /// The URL from the keyboardButtonTypeWebApp button
  final String url;

  /// Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// Short name of the application; 0-64 English letters, digits, and underscores
  final String applicationName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "url": url,
      "theme": theme?.toJson(),
      "application_name": applicationName,
      "@extra": extra,
		};
	}

  
  GetWebAppUrl copyWith({
    int? botUserId,
    String? url,
    ThemeParameters? theme,
    String? applicationName,
  }) => GetWebAppUrl(
    botUserId: botUserId ?? this.botUserId,
    url: url ?? this.url,
    theme: theme ?? this.theme,
    applicationName: applicationName ?? this.applicationName,
  );

  static const String objectType = 'getWebAppUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
