part of '../tdapi.dart';

/// **GetCountries** *(getCountries)* - TDLib function
///
/// Returns information about existing countries. Can be called before authorization.
///
/// [Countries] is returned on completion.
final class GetCountries extends TdFunction {
  
  /// **GetCountries** *(getCountries)* - TDLib function
  ///
  /// Returns information about existing countries. Can be called before authorization.
  ///
  /// [Countries] is returned on completion.
  const GetCountries();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetCountries copyWith() => const GetCountries();

  static const String objectType = 'getCountries';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
