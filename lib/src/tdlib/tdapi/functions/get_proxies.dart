part of '../tdapi.dart';

/// **GetProxies** *(getProxies)* - TDLib function
  ///
  /// Returns list of proxies that are currently set up. Can be called before authorization.
  ///
  /// [Proxies] is returned on completion.
class GetProxies extends TdFunction {
  
  /// **GetProxies** *(getProxies)* - TDLib function
  ///
  /// Returns list of proxies that are currently set up. Can be called before authorization.
  ///
  /// [Proxies] is returned on completion.
  const GetProxies();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetProxies copyWith() => const GetProxies();

  static const String constructor = 'getProxies';
  
  @override
  String getConstructor() => constructor;
}
