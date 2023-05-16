part of '../tdapi.dart';

/// **AttachmentMenuBotColor** *(attachmentMenuBotColor)* - basic class
///
/// Describes a color to highlight a bot added to attachment menu.
///
/// * [lightColor]: Color in the RGB24 format for light themes.
/// * [darkColor]: Color in the RGB24 format for dark themes.
final class AttachmentMenuBotColor extends TdObject {
  
  /// **AttachmentMenuBotColor** *(attachmentMenuBotColor)* - basic class
  ///
  /// Describes a color to highlight a bot added to attachment menu.
  ///
  /// * [lightColor]: Color in the RGB24 format for light themes.
  /// * [darkColor]: Color in the RGB24 format for dark themes.
  const AttachmentMenuBotColor({
    required this.lightColor,
    required this.darkColor,
  });
  
  /// Color in the RGB24 format for light themes 
  final int lightColor;

  /// Color in the RGB24 format for dark themes
  final int darkColor;
  
  /// Parse from a json
  factory AttachmentMenuBotColor.fromJson(Map<String, dynamic> json) => AttachmentMenuBotColor(
    lightColor: json['light_color'],
    darkColor: json['dark_color'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "light_color": lightColor,
      "dark_color": darkColor,
		};
	}

  
  AttachmentMenuBotColor copyWith({
    int? lightColor,
    int? darkColor,
  }) => AttachmentMenuBotColor(
    lightColor: lightColor ?? this.lightColor,
    darkColor: darkColor ?? this.darkColor,
  );

  static const String objectType = 'attachmentMenuBotColor';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
