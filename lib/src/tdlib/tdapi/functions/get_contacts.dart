part of '../tdapi.dart';

/// **GetContacts** *(getContacts)* - TDLib function
  ///
  /// Returns all user contacts.
  ///
  /// [Users] is returned on completion.
class GetContacts extends TdFunction {
  
  /// **GetContacts** *(getContacts)* - TDLib function
  ///
  /// Returns all user contacts.
  ///
  /// [Users] is returned on completion.
  const GetContacts();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetContacts copyWith() => const GetContacts();

  static const String constructor = 'getContacts';
  
  @override
  String getConstructor() => constructor;
}
