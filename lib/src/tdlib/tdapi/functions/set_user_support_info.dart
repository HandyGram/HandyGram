part of '../tdapi.dart';

/// **SetUserSupportInfo** *(setUserSupportInfo)* - TDLib function
///
/// Sets support information for the given user; for Telegram support only.
///
/// * [userId]: User identifier.
/// * [message]: New information message.
///
/// [UserSupportInfo] is returned on completion.
final class SetUserSupportInfo extends TdFunction {
  
  /// **SetUserSupportInfo** *(setUserSupportInfo)* - TDLib function
  ///
  /// Sets support information for the given user; for Telegram support only.
  ///
  /// * [userId]: User identifier.
  /// * [message]: New information message.
  ///
  /// [UserSupportInfo] is returned on completion.
  const SetUserSupportInfo({
    required this.userId,
    required this.message,
  });
  
  /// User identifier 
  final int userId;

  /// New information message
  final FormattedText message;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "message": message.toJson(),
      "@extra": extra,
		};
	}

  
  SetUserSupportInfo copyWith({
    int? userId,
    FormattedText? message,
  }) => SetUserSupportInfo(
    userId: userId ?? this.userId,
    message: message ?? this.message,
  );

  static const String objectType = 'setUserSupportInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
