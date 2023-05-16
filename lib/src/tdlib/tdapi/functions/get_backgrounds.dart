part of '../tdapi.dart';

/// **GetBackgrounds** *(getBackgrounds)* - TDLib function
///
/// Returns backgrounds installed by the user.
///
/// * [forDarkTheme]: Pass true to order returned backgrounds for a dark theme.
///
/// [Backgrounds] is returned on completion.
final class GetBackgrounds extends TdFunction {
  
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
			"@type": objectType,
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
		};
	}

  
  GetBackgrounds copyWith({
    bool? forDarkTheme,
  }) => GetBackgrounds(
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
  );

  static const String objectType = 'getBackgrounds';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
