part of '../tdapi.dart';

/// **SetDatabaseEncryptionKey** *(setDatabaseEncryptionKey)* - TDLib function
  ///
  /// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain.
  ///
  /// * [newEncryptionKey]: New encryption key.
  ///
  /// [Ok] is returned on completion.
class SetDatabaseEncryptionKey extends TdFunction {
  
  /// **SetDatabaseEncryptionKey** *(setDatabaseEncryptionKey)* - TDLib function
  ///
  /// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain.
  ///
  /// * [newEncryptionKey]: New encryption key.
  ///
  /// [Ok] is returned on completion.
  const SetDatabaseEncryptionKey({
    required this.newEncryptionKey,
  });
  
  /// New encryption key
  final String newEncryptionKey;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "new_encryption_key": newEncryptionKey,
      "@extra": extra,
    };
  }
  
  SetDatabaseEncryptionKey copyWith({
    String? newEncryptionKey,
  }) => SetDatabaseEncryptionKey(
    newEncryptionKey: newEncryptionKey ?? this.newEncryptionKey,
  );

  static const String constructor = 'setDatabaseEncryptionKey';
  
  @override
  String getConstructor() => constructor;
}
