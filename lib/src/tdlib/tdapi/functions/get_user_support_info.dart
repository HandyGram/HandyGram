part of '../tdapi.dart';

/// **GetUserSupportInfo** *(getUserSupportInfo)* - TDLib function
///
/// Returns support information for the given user; for Telegram support only.
///
/// * [userId]: User identifier.
///
/// [UserSupportInfo] is returned on completion.
final class GetUserSupportInfo extends TdFunction {
  
  /// **GetUserSupportInfo** *(getUserSupportInfo)* - TDLib function
  ///
  /// Returns support information for the given user; for Telegram support only.
  ///
  /// * [userId]: User identifier.
  ///
  /// [UserSupportInfo] is returned on completion.
  const GetUserSupportInfo({
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

  
  GetUserSupportInfo copyWith({
    int? userId,
  }) => GetUserSupportInfo(
    userId: userId ?? this.userId,
  );

  static const String objectType = 'getUserSupportInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
