part of '../tdapi.dart';

/// **GetAccountTtl** *(getAccountTtl)* - TDLib function
  ///
  /// Returns the period of inactivity after which the account of the current user will automatically be deleted.
  ///
  /// [AccountTtl] is returned on completion.
class GetAccountTtl extends TdFunction {
  
  /// **GetAccountTtl** *(getAccountTtl)* - TDLib function
  ///
  /// Returns the period of inactivity after which the account of the current user will automatically be deleted.
  ///
  /// [AccountTtl] is returned on completion.
  const GetAccountTtl();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetAccountTtl copyWith() => const GetAccountTtl();

  static const String constructor = 'getAccountTtl';
  
  @override
  String getConstructor() => constructor;
}
