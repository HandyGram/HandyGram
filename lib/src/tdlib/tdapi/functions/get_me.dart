part of '../tdapi.dart';

/// **GetMe** *(getMe)* - TDLib function
///
/// Returns the current user.
///
/// [User] is returned on completion.
final class GetMe extends TdFunction {
  
  /// **GetMe** *(getMe)* - TDLib function
  ///
  /// Returns the current user.
  ///
  /// [User] is returned on completion.
  const GetMe();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetMe copyWith() => const GetMe();

  static const String objectType = 'getMe';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
