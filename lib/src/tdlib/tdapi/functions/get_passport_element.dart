part of '../tdapi.dart';

/// **GetPassportElement** *(getPassportElement)* - TDLib function
///
/// Returns one of the available Telegram Passport elements.
///
/// * [type]: Telegram Passport element type.
/// * [password]: The 2-step verification password of the current user.
///
/// [PassportElement] is returned on completion.
final class GetPassportElement extends TdFunction {
  
  /// **GetPassportElement** *(getPassportElement)* - TDLib function
  ///
  /// Returns one of the available Telegram Passport elements.
  ///
  /// * [type]: Telegram Passport element type.
  /// * [password]: The 2-step verification password of the current user.
  ///
  /// [PassportElement] is returned on completion.
  const GetPassportElement({
    required this.type,
    required this.password,
  });
  
  /// Telegram Passport element type 
  final PassportElementType type;

  /// The 2-step verification password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "password": password,
      "@extra": extra,
		};
	}

  
  GetPassportElement copyWith({
    PassportElementType? type,
    String? password,
  }) => GetPassportElement(
    type: type ?? this.type,
    password: password ?? this.password,
  );

  static const String objectType = 'getPassportElement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
