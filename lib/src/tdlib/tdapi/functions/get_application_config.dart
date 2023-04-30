part of '../tdapi.dart';

/// **GetApplicationConfig** *(getApplicationConfig)* - TDLib function
  ///
  /// Returns application config, provided by the server. Can be called before authorization.
  ///
  /// [JsonValue] is returned on completion.
class GetApplicationConfig extends TdFunction {
  
  /// **GetApplicationConfig** *(getApplicationConfig)* - TDLib function
  ///
  /// Returns application config, provided by the server. Can be called before authorization.
  ///
  /// [JsonValue] is returned on completion.
  const GetApplicationConfig();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetApplicationConfig copyWith() => const GetApplicationConfig();

  static const String constructor = 'getApplicationConfig';
  
  @override
  String getConstructor() => constructor;
}
