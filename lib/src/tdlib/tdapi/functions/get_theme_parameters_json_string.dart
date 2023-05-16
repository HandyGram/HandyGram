part of '../tdapi.dart';

/// **GetThemeParametersJsonString** *(getThemeParametersJsonString)* - TDLib function
///
/// Converts a themeParameters object to corresponding JSON-serialized string. Can be called synchronously.
///
/// * [theme]: Theme parameters to convert to JSON.
///
/// [Text] is returned on completion.
final class GetThemeParametersJsonString extends TdFunction {
  
  /// **GetThemeParametersJsonString** *(getThemeParametersJsonString)* - TDLib function
  ///
  /// Converts a themeParameters object to corresponding JSON-serialized string. Can be called synchronously.
  ///
  /// * [theme]: Theme parameters to convert to JSON.
  ///
  /// [Text] is returned on completion.
  const GetThemeParametersJsonString({
    required this.theme,
  });
  
  /// Theme parameters to convert to JSON
  final ThemeParameters theme;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "theme": theme.toJson(),
      "@extra": extra,
		};
	}

  
  GetThemeParametersJsonString copyWith({
    ThemeParameters? theme,
  }) => GetThemeParametersJsonString(
    theme: theme ?? this.theme,
  );

  static const String objectType = 'getThemeParametersJsonString';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
