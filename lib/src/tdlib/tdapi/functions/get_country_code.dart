part of '../tdapi.dart';

/// **GetCountryCode** *(getCountryCode)* - TDLib function
///
/// Uses the current IP address to find the current country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization.
///
/// [Text] is returned on completion.
final class GetCountryCode extends TdFunction {
  
  /// **GetCountryCode** *(getCountryCode)* - TDLib function
  ///
  /// Uses the current IP address to find the current country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization.
  ///
  /// [Text] is returned on completion.
  const GetCountryCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetCountryCode copyWith() => const GetCountryCode();

  static const String objectType = 'getCountryCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
