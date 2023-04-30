part of '../tdapi.dart';

/// **ClearImportedContacts** *(clearImportedContacts)* - TDLib function
  ///
  /// Clears all imported contacts, contact list remains unchanged.
  ///
  /// [Ok] is returned on completion.
class ClearImportedContacts extends TdFunction {
  
  /// **ClearImportedContacts** *(clearImportedContacts)* - TDLib function
  ///
  /// Clears all imported contacts, contact list remains unchanged.
  ///
  /// [Ok] is returned on completion.
  const ClearImportedContacts();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ClearImportedContacts copyWith() => const ClearImportedContacts();

  static const String constructor = 'clearImportedContacts';
  
  @override
  String getConstructor() => constructor;
}
