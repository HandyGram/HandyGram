part of '../tdapi.dart';

/// **SetMenuButton** *(setMenuButton)* - TDLib function
///
/// Sets menu button for the given user or for all users; for bots only.
///
/// * [userId]: Identifier of the user or 0 to set menu button for all users.
/// * [menuButton]: New menu button.
///
/// [Ok] is returned on completion.
final class SetMenuButton extends TdFunction {
  
  /// **SetMenuButton** *(setMenuButton)* - TDLib function
  ///
  /// Sets menu button for the given user or for all users; for bots only.
  ///
  /// * [userId]: Identifier of the user or 0 to set menu button for all users.
  /// * [menuButton]: New menu button.
  ///
  /// [Ok] is returned on completion.
  const SetMenuButton({
    required this.userId,
    required this.menuButton,
  });
  
  /// Identifier of the user or 0 to set menu button for all users
  final int userId;

  /// New menu button
  final BotMenuButton menuButton;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "menu_button": menuButton.toJson(),
      "@extra": extra,
		};
	}

  
  SetMenuButton copyWith({
    int? userId,
    BotMenuButton? menuButton,
  }) => SetMenuButton(
    userId: userId ?? this.userId,
    menuButton: menuButton ?? this.menuButton,
  );

  static const String objectType = 'setMenuButton';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
