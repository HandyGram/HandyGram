part of '../tdapi.dart';

/// **DeleteSavedCredentials** *(deleteSavedCredentials)* - TDLib function
  ///
  /// Deletes saved credentials for all payment provider bots.
  ///
  /// [Ok] is returned on completion.
class DeleteSavedCredentials extends TdFunction {
  
  /// **DeleteSavedCredentials** *(deleteSavedCredentials)* - TDLib function
  ///
  /// Deletes saved credentials for all payment provider bots.
  ///
  /// [Ok] is returned on completion.
  const DeleteSavedCredentials();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  DeleteSavedCredentials copyWith() => const DeleteSavedCredentials();

  static const String constructor = 'deleteSavedCredentials';
  
  @override
  String getConstructor() => constructor;
}
