part of '../tdapi.dart';

/// **ClearImportedContacts** *(clearImportedContacts)* - TDLib function
///
/// Clears all imported contacts, contact list remains unchanged.
///
/// [Ok] is returned on completion.
final class ClearImportedContacts extends TdFunction {
  
  /// **ClearImportedContacts** *(clearImportedContacts)* - TDLib function
  ///
  /// Clears all imported contacts, contact list remains unchanged.
  ///
  /// [Ok] is returned on completion.
  const ClearImportedContacts();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ClearImportedContacts copyWith() => const ClearImportedContacts();

  static const String objectType = 'clearImportedContacts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
