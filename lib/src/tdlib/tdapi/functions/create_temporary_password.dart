part of '../tdapi.dart';

/// **CreateTemporaryPassword** *(createTemporaryPassword)* - TDLib function
///
/// Creates a new temporary password for processing payments.
///
/// * [password]: The 2-step verification password of the current user.
/// * [validFor]: Time during which the temporary password will be valid, in seconds; must be between 60 and 86400.
///
/// [TemporaryPasswordState] is returned on completion.
final class CreateTemporaryPassword extends TdFunction {
  
  /// **CreateTemporaryPassword** *(createTemporaryPassword)* - TDLib function
  ///
  /// Creates a new temporary password for processing payments.
  ///
  /// * [password]: The 2-step verification password of the current user.
  /// * [validFor]: Time during which the temporary password will be valid, in seconds; must be between 60 and 86400.
  ///
  /// [TemporaryPasswordState] is returned on completion.
  const CreateTemporaryPassword({
    required this.password,
    required this.validFor,
  });
  
  /// The 2-step verification password of the current user 
  final String password;

  /// Time during which the temporary password will be valid, in seconds; must be between 60 and 86400
  final int validFor;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "password": password,
      "valid_for": validFor,
      "@extra": extra,
		};
	}

  
  CreateTemporaryPassword copyWith({
    String? password,
    int? validFor,
  }) => CreateTemporaryPassword(
    password: password ?? this.password,
    validFor: validFor ?? this.validFor,
  );

  static const String objectType = 'createTemporaryPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
