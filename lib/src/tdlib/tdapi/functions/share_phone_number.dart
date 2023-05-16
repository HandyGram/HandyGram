part of '../tdapi.dart';

/// **SharePhoneNumber** *(sharePhoneNumber)* - TDLib function
///
/// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber.
///
/// * [userId]: Identifier of the user with whom to share the phone number. The user must be a mutual contact.
///
/// [Ok] is returned on completion.
final class SharePhoneNumber extends TdFunction {
  
  /// **SharePhoneNumber** *(sharePhoneNumber)* - TDLib function
  ///
  /// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber.
  ///
  /// * [userId]: Identifier of the user with whom to share the phone number. The user must be a mutual contact.
  ///
  /// [Ok] is returned on completion.
  const SharePhoneNumber({
    required this.userId,
  });
  
  /// Identifier of the user with whom to share the phone number. The user must be a mutual contact
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "@extra": extra,
		};
	}

  
  SharePhoneNumber copyWith({
    int? userId,
  }) => SharePhoneNumber(
    userId: userId ?? this.userId,
  );

  static const String objectType = 'sharePhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
