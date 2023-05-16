part of '../tdapi.dart';

/// **ThemeSettings** *(themeSettings)* - basic class
///
/// Describes theme settings.
///
/// * [accentColor]: Theme accent color in ARGB format.
/// * [background]: The background to be used in chats; may be null *(optional)*.
/// * [outgoingMessageFill]: The fill to be used as a background for outgoing messages.
/// * [animateOutgoingMessageFill]: If true, the freeform gradient fill needs to be animated on every sent message.
/// * [outgoingMessageAccentColor]: Accent color of outgoing messages in ARGB format.
final class ThemeSettings extends TdObject {
  
  /// **ThemeSettings** *(themeSettings)* - basic class
  ///
  /// Describes theme settings.
  ///
  /// * [accentColor]: Theme accent color in ARGB format.
  /// * [background]: The background to be used in chats; may be null *(optional)*.
  /// * [outgoingMessageFill]: The fill to be used as a background for outgoing messages.
  /// * [animateOutgoingMessageFill]: If true, the freeform gradient fill needs to be animated on every sent message.
  /// * [outgoingMessageAccentColor]: Accent color of outgoing messages in ARGB format.
  const ThemeSettings({
    required this.accentColor,
    this.background,
    required this.outgoingMessageFill,
    required this.animateOutgoingMessageFill,
    required this.outgoingMessageAccentColor,
  });
  
  /// Theme accent color in ARGB format
  final int accentColor;

  /// The background to be used in chats; may be null
  final Background? background;

  /// The fill to be used as a background for outgoing messages
  final BackgroundFill outgoingMessageFill;

  /// If true, the freeform gradient fill needs to be animated on every sent message
  final bool animateOutgoingMessageFill;

  /// Accent color of outgoing messages in ARGB format
  final int outgoingMessageAccentColor;
  
  /// Parse from a json
  factory ThemeSettings.fromJson(Map<String, dynamic> json) => ThemeSettings(
    accentColor: json['accent_color'],
    background: json['background'] == null ? null : Background.fromJson(json['background']),
    outgoingMessageFill: BackgroundFill.fromJson(json['outgoing_message_fill']),
    animateOutgoingMessageFill: json['animate_outgoing_message_fill'],
    outgoingMessageAccentColor: json['outgoing_message_accent_color'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "accent_color": accentColor,
      "background": background?.toJson(),
      "outgoing_message_fill": outgoingMessageFill.toJson(),
      "animate_outgoing_message_fill": animateOutgoingMessageFill,
      "outgoing_message_accent_color": outgoingMessageAccentColor,
		};
	}

  
  ThemeSettings copyWith({
    int? accentColor,
    Background? background,
    BackgroundFill? outgoingMessageFill,
    bool? animateOutgoingMessageFill,
    int? outgoingMessageAccentColor,
  }) => ThemeSettings(
    accentColor: accentColor ?? this.accentColor,
    background: background ?? this.background,
    outgoingMessageFill: outgoingMessageFill ?? this.outgoingMessageFill,
    animateOutgoingMessageFill: animateOutgoingMessageFill ?? this.animateOutgoingMessageFill,
    outgoingMessageAccentColor: outgoingMessageAccentColor ?? this.outgoingMessageAccentColor,
  );

  static const String objectType = 'themeSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
