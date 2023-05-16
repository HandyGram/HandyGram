part of '../tdapi.dart';

/// **SearchUserByPhoneNumber** *(searchUserByPhoneNumber)* - TDLib function
///
/// Searches a user by their phone number. Returns a 404 error if the user can't be found.
///
/// * [phoneNumber]: Phone number to search for.
///
/// [User] is returned on completion.
final class SearchUserByPhoneNumber extends TdFunction {
  
  /// **SearchUserByPhoneNumber** *(searchUserByPhoneNumber)* - TDLib function
  ///
  /// Searches a user by their phone number. Returns a 404 error if the user can't be found.
  ///
  /// * [phoneNumber]: Phone number to search for.
  ///
  /// [User] is returned on completion.
  const SearchUserByPhoneNumber({
    required this.phoneNumber,
  });
  
  /// Phone number to search for
  final String phoneNumber;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "phone_number": phoneNumber,
      "@extra": extra,
		};
	}

  
  SearchUserByPhoneNumber copyWith({
    String? phoneNumber,
  }) => SearchUserByPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

  static const String objectType = 'searchUserByPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
