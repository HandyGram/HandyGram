part of '../tdapi.dart';

/// **GetRecoveryEmailAddress** *(getRecoveryEmailAddress)* - TDLib function
///
/// Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user.
///
/// * [password]: The 2-step verification password for the current user.
///
/// [RecoveryEmailAddress] is returned on completion.
final class GetRecoveryEmailAddress extends TdFunction {
  
  /// **GetRecoveryEmailAddress** *(getRecoveryEmailAddress)* - TDLib function
  ///
  /// Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user.
  ///
  /// * [password]: The 2-step verification password for the current user.
  ///
  /// [RecoveryEmailAddress] is returned on completion.
  const GetRecoveryEmailAddress({
    required this.password,
  });
  
  /// The 2-step verification password for the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "password": password,
      "@extra": extra,
		};
	}

  
  GetRecoveryEmailAddress copyWith({
    String? password,
  }) => GetRecoveryEmailAddress(
    password: password ?? this.password,
  );

  static const String objectType = 'getRecoveryEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
