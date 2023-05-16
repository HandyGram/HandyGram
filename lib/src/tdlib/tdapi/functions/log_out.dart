part of '../tdapi.dart';

/// **LogOut** *(logOut)* - TDLib function
///
/// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent.
///
/// [Ok] is returned on completion.
final class LogOut extends TdFunction {
  
  /// **LogOut** *(logOut)* - TDLib function
  ///
  /// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent.
  ///
  /// [Ok] is returned on completion.
  const LogOut();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  LogOut copyWith() => const LogOut();

  static const String objectType = 'logOut';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
