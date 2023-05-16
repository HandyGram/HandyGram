part of '../tdapi.dart';

/// **SetPassportElement** *(setPassportElement)* - TDLib function
///
/// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first.
///
/// * [element]: Input Telegram Passport element.
/// * [password]: The 2-step verification password of the current user.
///
/// [PassportElement] is returned on completion.
final class SetPassportElement extends TdFunction {
  
  /// **SetPassportElement** *(setPassportElement)* - TDLib function
  ///
  /// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first.
  ///
  /// * [element]: Input Telegram Passport element.
  /// * [password]: The 2-step verification password of the current user.
  ///
  /// [PassportElement] is returned on completion.
  const SetPassportElement({
    required this.element,
    required this.password,
  });
  
  /// Input Telegram Passport element
  final InputPassportElement element;

  /// The 2-step verification password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "element": element.toJson(),
      "password": password,
      "@extra": extra,
		};
	}

  
  SetPassportElement copyWith({
    InputPassportElement? element,
    String? password,
  }) => SetPassportElement(
    element: element ?? this.element,
    password: password ?? this.password,
  );

  static const String objectType = 'setPassportElement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
