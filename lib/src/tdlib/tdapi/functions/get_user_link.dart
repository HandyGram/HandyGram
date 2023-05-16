part of '../tdapi.dart';

/// **GetUserLink** *(getUserLink)* - TDLib function
///
/// Returns an HTTPS link, which can be used to get information about the current user.
///
/// [UserLink] is returned on completion.
final class GetUserLink extends TdFunction {
  
  /// **GetUserLink** *(getUserLink)* - TDLib function
  ///
  /// Returns an HTTPS link, which can be used to get information about the current user.
  ///
  /// [UserLink] is returned on completion.
  const GetUserLink();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetUserLink copyWith() => const GetUserLink();

  static const String objectType = 'getUserLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
