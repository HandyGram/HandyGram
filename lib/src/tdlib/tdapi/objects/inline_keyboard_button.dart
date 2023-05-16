part of '../tdapi.dart';

/// **InlineKeyboardButton** *(inlineKeyboardButton)* - basic class
///
/// Represents a single button in an inline keyboard.
///
/// * [text]: Text of the button.
/// * [type]: Type of the button.
final class InlineKeyboardButton extends TdObject {
  
  /// **InlineKeyboardButton** *(inlineKeyboardButton)* - basic class
  ///
  /// Represents a single button in an inline keyboard.
  ///
  /// * [text]: Text of the button.
  /// * [type]: Type of the button.
  const InlineKeyboardButton({
    required this.text,
    required this.type,
  });
  
  /// Text of the button 
  final String text;

  /// Type of the button
  final InlineKeyboardButtonType type;
  
  /// Parse from a json
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) => InlineKeyboardButton(
    text: json['text'],
    type: InlineKeyboardButtonType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
      "type": type.toJson(),
		};
	}

  
  InlineKeyboardButton copyWith({
    String? text,
    InlineKeyboardButtonType? type,
  }) => InlineKeyboardButton(
    text: text ?? this.text,
    type: type ?? this.type,
  );

  static const String objectType = 'inlineKeyboardButton';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
