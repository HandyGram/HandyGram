part of '../tdapi.dart';

/// **GetContacts** *(getContacts)* - TDLib function
///
/// Returns all user contacts.
///
/// [Users] is returned on completion.
final class GetContacts extends TdFunction {
  
  /// **GetContacts** *(getContacts)* - TDLib function
  ///
  /// Returns all user contacts.
  ///
  /// [Users] is returned on completion.
  const GetContacts();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetContacts copyWith() => const GetContacts();

  static const String objectType = 'getContacts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
