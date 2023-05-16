part of '../tdapi.dart';

/// **DeleteSavedCredentials** *(deleteSavedCredentials)* - TDLib function
///
/// Deletes saved credentials for all payment provider bots.
///
/// [Ok] is returned on completion.
final class DeleteSavedCredentials extends TdFunction {
  
  /// **DeleteSavedCredentials** *(deleteSavedCredentials)* - TDLib function
  ///
  /// Deletes saved credentials for all payment provider bots.
  ///
  /// [Ok] is returned on completion.
  const DeleteSavedCredentials();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  DeleteSavedCredentials copyWith() => const DeleteSavedCredentials();

  static const String objectType = 'deleteSavedCredentials';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
