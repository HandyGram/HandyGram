part of '../tdapi.dart';

/// **SetAccountTtl** *(setAccountTtl)* - TDLib function
///
/// Changes the period of inactivity after which the account of the current user will automatically be deleted.
///
/// * [ttl]: New account TTL.
///
/// [Ok] is returned on completion.
final class SetAccountTtl extends TdFunction {
  
  /// **SetAccountTtl** *(setAccountTtl)* - TDLib function
  ///
  /// Changes the period of inactivity after which the account of the current user will automatically be deleted.
  ///
  /// * [ttl]: New account TTL.
  ///
  /// [Ok] is returned on completion.
  const SetAccountTtl({
    required this.ttl,
  });
  
  /// New account TTL
  final AccountTtl ttl;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "ttl": ttl.toJson(),
      "@extra": extra,
		};
	}

  
  SetAccountTtl copyWith({
    AccountTtl? ttl,
  }) => SetAccountTtl(
    ttl: ttl ?? this.ttl,
  );

  static const String objectType = 'setAccountTtl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
