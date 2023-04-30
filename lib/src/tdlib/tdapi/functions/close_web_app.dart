part of '../tdapi.dart';

/// **CloseWebApp** *(closeWebApp)* - TDLib function
  ///
  /// Informs TDLib that a previously opened Web App was closed.
  ///
  /// * [webAppLaunchId]: Identifier of Web App launch, received from openWebApp.
  ///
  /// [Ok] is returned on completion.
class CloseWebApp extends TdFunction {
  
  /// **CloseWebApp** *(closeWebApp)* - TDLib function
  ///
  /// Informs TDLib that a previously opened Web App was closed.
  ///
  /// * [webAppLaunchId]: Identifier of Web App launch, received from openWebApp.
  ///
  /// [Ok] is returned on completion.
  const CloseWebApp({
    required this.webAppLaunchId,
  });
  
  /// Identifier of Web App launch, received from openWebApp
  final int webAppLaunchId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "web_app_launch_id": webAppLaunchId,
      "@extra": extra,
    };
  }
  
  CloseWebApp copyWith({
    int? webAppLaunchId,
  }) => CloseWebApp(
    webAppLaunchId: webAppLaunchId ?? this.webAppLaunchId,
  );

  static const String constructor = 'closeWebApp';
  
  @override
  String getConstructor() => constructor;
}
