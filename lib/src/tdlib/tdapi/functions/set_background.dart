part of '../tdapi.dart';

/// **SetBackground** *(setBackground)* - TDLib function
///
/// Changes the background selected by the user; adds background to the list of installed backgrounds.
///
/// * [background]: The input background to use; pass null to create a new filled backgrounds or to remove the current background *(optional)*.
/// * [type]: Background type; pass null to use the default type of the remote background or to remove the current background *(optional)*.
/// * [forDarkTheme]: Pass true if the background is changed for a dark theme.
///
/// [Background] is returned on completion.
final class SetBackground extends TdFunction {
  
  /// **SetBackground** *(setBackground)* - TDLib function
  ///
  /// Changes the background selected by the user; adds background to the list of installed backgrounds.
  ///
  /// * [background]: The input background to use; pass null to create a new filled backgrounds or to remove the current background *(optional)*.
  /// * [type]: Background type; pass null to use the default type of the remote background or to remove the current background *(optional)*.
  /// * [forDarkTheme]: Pass true if the background is changed for a dark theme.
  ///
  /// [Background] is returned on completion.
  const SetBackground({
    this.background,
    this.type,
    required this.forDarkTheme,
  });
  
  /// The input background to use; pass null to create a new filled backgrounds or to remove the current background
  final InputBackground? background;

  /// Background type; pass null to use the default type of the remote background or to remove the current background
  final BackgroundType? type;

  /// Pass true if the background is changed for a dark theme
  final bool forDarkTheme;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "background": background?.toJson(),
      "type": type?.toJson(),
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
		};
	}

  
  SetBackground copyWith({
    InputBackground? background,
    BackgroundType? type,
    bool? forDarkTheme,
  }) => SetBackground(
    background: background ?? this.background,
    type: type ?? this.type,
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
  );

  static const String objectType = 'setBackground';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
