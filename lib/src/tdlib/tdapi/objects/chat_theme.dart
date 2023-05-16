part of '../tdapi.dart';

/// **ChatTheme** *(chatTheme)* - basic class
///
/// Describes a chat theme.
///
/// * [name]: Theme name.
/// * [lightSettings]: Theme settings for a light chat theme.
/// * [darkSettings]: Theme settings for a dark chat theme.
final class ChatTheme extends TdObject {
  
  /// **ChatTheme** *(chatTheme)* - basic class
  ///
  /// Describes a chat theme.
  ///
  /// * [name]: Theme name.
  /// * [lightSettings]: Theme settings for a light chat theme.
  /// * [darkSettings]: Theme settings for a dark chat theme.
  const ChatTheme({
    required this.name,
    required this.lightSettings,
    required this.darkSettings,
  });
  
  /// Theme name
  final String name;

  /// Theme settings for a light chat theme
  final ThemeSettings lightSettings;

  /// Theme settings for a dark chat theme
  final ThemeSettings darkSettings;
  
  /// Parse from a json
  factory ChatTheme.fromJson(Map<String, dynamic> json) => ChatTheme(
    name: json['name'],
    lightSettings: ThemeSettings.fromJson(json['light_settings']),
    darkSettings: ThemeSettings.fromJson(json['dark_settings']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
      "light_settings": lightSettings.toJson(),
      "dark_settings": darkSettings.toJson(),
		};
	}

  
  ChatTheme copyWith({
    String? name,
    ThemeSettings? lightSettings,
    ThemeSettings? darkSettings,
  }) => ChatTheme(
    name: name ?? this.name,
    lightSettings: lightSettings ?? this.lightSettings,
    darkSettings: darkSettings ?? this.darkSettings,
  );

  static const String objectType = 'chatTheme';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
