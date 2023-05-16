part of '../tdapi.dart';

/// **GetApplicationConfig** *(getApplicationConfig)* - TDLib function
///
/// Returns application config, provided by the server. Can be called before authorization.
///
/// [JsonValue] is returned on completion.
final class GetApplicationConfig extends TdFunction {
  
  /// **GetApplicationConfig** *(getApplicationConfig)* - TDLib function
  ///
  /// Returns application config, provided by the server. Can be called before authorization.
  ///
  /// [JsonValue] is returned on completion.
  const GetApplicationConfig();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetApplicationConfig copyWith() => const GetApplicationConfig();

  static const String objectType = 'getApplicationConfig';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
