part of '../tdapi.dart';

/// **SetName** *(setName)* - TDLib function
///
/// Changes the first and last name of the current user.
///
/// * [firstName]: The new value of the first name for the current user; 1-64 characters.
/// * [lastName]: The new value of the optional last name for the current user; 0-64 characters.
///
/// [Ok] is returned on completion.
final class SetName extends TdFunction {
  
  /// **SetName** *(setName)* - TDLib function
  ///
  /// Changes the first and last name of the current user.
  ///
  /// * [firstName]: The new value of the first name for the current user; 1-64 characters.
  /// * [lastName]: The new value of the optional last name for the current user; 0-64 characters.
  ///
  /// [Ok] is returned on completion.
  const SetName({
    required this.firstName,
    required this.lastName,
  });
  
  /// The new value of the first name for the current user; 1-64 characters 
  final String firstName;

  /// The new value of the optional last name for the current user; 0-64 characters
  final String lastName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "first_name": firstName,
      "last_name": lastName,
      "@extra": extra,
		};
	}

  
  SetName copyWith({
    String? firstName,
    String? lastName,
  }) => SetName(
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
  );

  static const String objectType = 'setName';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
