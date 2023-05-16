part of '../tdapi.dart';

/// **KeyboardButton** *(keyboardButton)* - basic class
///
/// Represents a single button in a bot keyboard.
///
/// * [text]: Text of the button.
/// * [type]: Type of the button.
final class KeyboardButton extends TdObject {
  
  /// **KeyboardButton** *(keyboardButton)* - basic class
  ///
  /// Represents a single button in a bot keyboard.
  ///
  /// * [text]: Text of the button.
  /// * [type]: Type of the button.
  const KeyboardButton({
    required this.text,
    required this.type,
  });
  
  /// Text of the button 
  final String text;

  /// Type of the button
  final KeyboardButtonType type;
  
  /// Parse from a json
  factory KeyboardButton.fromJson(Map<String, dynamic> json) => KeyboardButton(
    text: json['text'],
    type: KeyboardButtonType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
      "type": type.toJson(),
		};
	}

  
  KeyboardButton copyWith({
    String? text,
    KeyboardButtonType? type,
  }) => KeyboardButton(
    text: text ?? this.text,
    type: type ?? this.type,
  );

  static const String objectType = 'keyboardButton';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
