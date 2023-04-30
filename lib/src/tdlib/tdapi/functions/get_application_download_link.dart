part of '../tdapi.dart';

/// **GetApplicationDownloadLink** *(getApplicationDownloadLink)* - TDLib function
  ///
  /// Returns the link for downloading official Telegram application to be used when the current user invites friends to Telegram.
  ///
  /// [HttpUrl] is returned on completion.
class GetApplicationDownloadLink extends TdFunction {
  
  /// **GetApplicationDownloadLink** *(getApplicationDownloadLink)* - TDLib function
  ///
  /// Returns the link for downloading official Telegram application to be used when the current user invites friends to Telegram.
  ///
  /// [HttpUrl] is returned on completion.
  const GetApplicationDownloadLink();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetApplicationDownloadLink copyWith() => const GetApplicationDownloadLink();

  static const String constructor = 'getApplicationDownloadLink';
  
  @override
  String getConstructor() => constructor;
}
