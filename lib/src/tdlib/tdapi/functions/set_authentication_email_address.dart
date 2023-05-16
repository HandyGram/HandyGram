part of '../tdapi.dart';

/// **SetAuthenticationEmailAddress** *(setAuthenticationEmailAddress)* - TDLib function
///
/// Sets the email address of the user and sends an authentication code to the email address. Works only when the current authorization state is authorizationStateWaitEmailAddress.
///
/// * [emailAddress]: The email address of the user.
///
/// [Ok] is returned on completion.
final class SetAuthenticationEmailAddress extends TdFunction {
  
  /// **SetAuthenticationEmailAddress** *(setAuthenticationEmailAddress)* - TDLib function
  ///
  /// Sets the email address of the user and sends an authentication code to the email address. Works only when the current authorization state is authorizationStateWaitEmailAddress.
  ///
  /// * [emailAddress]: The email address of the user.
  ///
  /// [Ok] is returned on completion.
  const SetAuthenticationEmailAddress({
    required this.emailAddress,
  });
  
  /// The email address of the user
  final String emailAddress;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "email_address": emailAddress,
      "@extra": extra,
		};
	}

  
  SetAuthenticationEmailAddress copyWith({
    String? emailAddress,
  }) => SetAuthenticationEmailAddress(
    emailAddress: emailAddress ?? this.emailAddress,
  );

  static const String objectType = 'setAuthenticationEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
