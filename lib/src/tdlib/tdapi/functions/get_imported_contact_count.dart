part of '../tdapi.dart';

/// **GetImportedContactCount** *(getImportedContactCount)* - TDLib function
  ///
  /// Returns the total number of imported contacts.
  ///
  /// [Count] is returned on completion.
class GetImportedContactCount extends TdFunction {
  
  /// **GetImportedContactCount** *(getImportedContactCount)* - TDLib function
  ///
  /// Returns the total number of imported contacts.
  ///
  /// [Count] is returned on completion.
  const GetImportedContactCount();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetImportedContactCount copyWith() => const GetImportedContactCount();

  static const String constructor = 'getImportedContactCount';
  
  @override
  String getConstructor() => constructor;
}
