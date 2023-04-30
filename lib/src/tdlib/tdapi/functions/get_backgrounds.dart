part of '../tdapi.dart';

/// **GetBackgrounds** *(getBackgrounds)* - TDLib function
  ///
  /// Returns backgrounds installed by the user.
  ///
  /// * [forDarkTheme]: Pass true to order returned backgrounds for a dark theme.
  ///
  /// [Backgrounds] is returned on completion.
class GetBackgrounds extends TdFunction {
  
  /// **GetBackgrounds** *(getBackgrounds)* - TDLib function
  ///
  /// Returns backgrounds installed by the user.
  ///
  /// * [forDarkTheme]: Pass true to order returned backgrounds for a dark theme.
  ///
  /// [Backgrounds] is returned on completion.
  const GetBackgrounds({
    required this.forDarkTheme,
  });
  
  /// Pass true to order returned backgrounds for a dark theme
  final bool forDarkTheme;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
    };
  }
  
  GetBackgrounds copyWith({
    bool? forDarkTheme,
  }) => GetBackgrounds(
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
  );

  static const String constructor = 'getBackgrounds';
  
  @override
  String getConstructor() => constructor;
}
