part of '../tdapi.dart';

/// **GetCountries** *(getCountries)* - TDLib function
  ///
  /// Returns information about existing countries. Can be called before authorization.
  ///
  /// [Countries] is returned on completion.
class GetCountries extends TdFunction {
  
  /// **GetCountries** *(getCountries)* - TDLib function
  ///
  /// Returns information about existing countries. Can be called before authorization.
  ///
  /// [Countries] is returned on completion.
  const GetCountries();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetCountries copyWith() => const GetCountries();

  static const String constructor = 'getCountries';
  
  @override
  String getConstructor() => constructor;
}
