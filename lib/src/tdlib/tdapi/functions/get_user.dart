part of '../tdapi.dart';

/// **GetUser** *(getUser)* - TDLib function
///
/// Returns information about a user by their identifier. This is an offline request if the current user is not a bot.
///
/// * [userId]: User identifier.
///
/// [User] is returned on completion.
final class GetUser extends TdFunction {
  
  /// **GetUser** *(getUser)* - TDLib function
  ///
  /// Returns information about a user by their identifier. This is an offline request if the current user is not a bot.
  ///
  /// * [userId]: User identifier.
  ///
  /// [User] is returned on completion.
  const GetUser({
    required this.userId,
  });
  
  /// User identifier
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "@extra": extra,
		};
	}

  
  GetUser copyWith({
    int? userId,
  }) => GetUser(
    userId: userId ?? this.userId,
  );

  static const String objectType = 'getUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
