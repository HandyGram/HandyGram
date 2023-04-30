part of '../tdapi.dart';

/// **GetThemeParametersJsonString** *(getThemeParametersJsonString)* - TDLib function
  ///
  /// Converts a themeParameters object to corresponding JSON-serialized string. Can be called synchronously.
  ///
  /// * [theme]: Theme parameters to convert to JSON.
  ///
  /// [Text] is returned on completion.
class GetThemeParametersJsonString extends TdFunction {
  
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
      "@type": constructor,
      "theme": theme.toJson(),
      "@extra": extra,
    };
  }
  
  GetThemeParametersJsonString copyWith({
    ThemeParameters? theme,
  }) => GetThemeParametersJsonString(
    theme: theme ?? this.theme,
  );

  static const String constructor = 'getThemeParametersJsonString';
  
  @override
  String getConstructor() => constructor;
}
