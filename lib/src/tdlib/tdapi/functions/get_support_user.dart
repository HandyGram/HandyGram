part of '../tdapi.dart';

/// **GetSupportUser** *(getSupportUser)* - TDLib function
///
/// Returns a user that can be contacted to get support.
///
/// [User] is returned on completion.
final class GetSupportUser extends TdFunction {
  
  /// **GetSupportUser** *(getSupportUser)* - TDLib function
  ///
  /// Returns a user that can be contacted to get support.
  ///
  /// [User] is returned on completion.
  const GetSupportUser();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetSupportUser copyWith() => const GetSupportUser();

  static const String objectType = 'getSupportUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
