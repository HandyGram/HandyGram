part of '../tdapi.dart';

/// **GetAccountTtl** *(getAccountTtl)* - TDLib function
///
/// Returns the period of inactivity after which the account of the current user will automatically be deleted.
///
/// [AccountTtl] is returned on completion.
final class GetAccountTtl extends TdFunction {
  
  /// **GetAccountTtl** *(getAccountTtl)* - TDLib function
  ///
  /// Returns the period of inactivity after which the account of the current user will automatically be deleted.
  ///
  /// [AccountTtl] is returned on completion.
  const GetAccountTtl();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetAccountTtl copyWith() => const GetAccountTtl();

  static const String objectType = 'getAccountTtl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
