part of '../tdapi.dart';

/// **SetPassportElementErrors** *(setPassportElementErrors)* - TDLib function
///
/// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed.
///
/// * [userId]: User identifier.
/// * [errors]: The errors.
///
/// [Ok] is returned on completion.
final class SetPassportElementErrors extends TdFunction {
  
  /// **SetPassportElementErrors** *(setPassportElementErrors)* - TDLib function
  ///
  /// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed.
  ///
  /// * [userId]: User identifier.
  /// * [errors]: The errors.
  ///
  /// [Ok] is returned on completion.
  const SetPassportElementErrors({
    required this.userId,
    required this.errors,
  });
  
  /// User identifier 
  final int userId;

  /// The errors
  final List<InputPassportElementError> errors;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "errors": errors.map((i) => i.toJson()).toList(),
      "@extra": extra,
		};
	}

  
  SetPassportElementErrors copyWith({
    int? userId,
    List<InputPassportElementError>? errors,
  }) => SetPassportElementErrors(
    userId: userId ?? this.userId,
    errors: errors ?? this.errors,
  );

  static const String objectType = 'setPassportElementErrors';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
