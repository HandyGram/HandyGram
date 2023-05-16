part of '../tdapi.dart';

/// **GetAllPassportElements** *(getAllPassportElements)* - TDLib function
///
/// Returns all available Telegram Passport elements.
///
/// * [password]: The 2-step verification password of the current user.
///
/// [PassportElements] is returned on completion.
final class GetAllPassportElements extends TdFunction {
  
  /// **GetAllPassportElements** *(getAllPassportElements)* - TDLib function
  ///
  /// Returns all available Telegram Passport elements.
  ///
  /// * [password]: The 2-step verification password of the current user.
  ///
  /// [PassportElements] is returned on completion.
  const GetAllPassportElements({
    required this.password,
  });
  
  /// The 2-step verification password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "password": password,
      "@extra": extra,
		};
	}

  
  GetAllPassportElements copyWith({
    String? password,
  }) => GetAllPassportElements(
    password: password ?? this.password,
  );

  static const String objectType = 'getAllPassportElements';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
