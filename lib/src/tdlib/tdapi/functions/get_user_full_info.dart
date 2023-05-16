part of '../tdapi.dart';

/// **GetUserFullInfo** *(getUserFullInfo)* - TDLib function
///
/// Returns full information about a user by their identifier.
///
/// * [userId]: User identifier.
///
/// [UserFullInfo] is returned on completion.
final class GetUserFullInfo extends TdFunction {
  
  /// **GetUserFullInfo** *(getUserFullInfo)* - TDLib function
  ///
  /// Returns full information about a user by their identifier.
  ///
  /// * [userId]: User identifier.
  ///
  /// [UserFullInfo] is returned on completion.
  const GetUserFullInfo({
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

  
  GetUserFullInfo copyWith({
    int? userId,
  }) => GetUserFullInfo(
    userId: userId ?? this.userId,
  );

  static const String objectType = 'getUserFullInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
