part of '../tdapi.dart';

/// **SearchUserByToken** *(searchUserByToken)* - TDLib function
///
/// Searches a user by a token from the user's link.
///
/// * [token]: Token to search for.
///
/// [User] is returned on completion.
final class SearchUserByToken extends TdFunction {
  
  /// **SearchUserByToken** *(searchUserByToken)* - TDLib function
  ///
  /// Searches a user by a token from the user's link.
  ///
  /// * [token]: Token to search for.
  ///
  /// [User] is returned on completion.
  const SearchUserByToken({
    required this.token,
  });
  
  /// Token to search for
  final String token;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "token": token,
      "@extra": extra,
		};
	}

  
  SearchUserByToken copyWith({
    String? token,
  }) => SearchUserByToken(
    token: token ?? this.token,
  );

  static const String objectType = 'searchUserByToken';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
