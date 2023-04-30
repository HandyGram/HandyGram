part of '../tdapi.dart';

/// **RegisterUser** *(registerUser)* - TDLib function
  ///
  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration.
  ///
  /// * [firstName]: The first name of the user; 1-64 characters.
  /// * [lastName]: The last name of the user; 0-64 characters.
  ///
  /// [Ok] is returned on completion.
class RegisterUser extends TdFunction {
  
  /// **RegisterUser** *(registerUser)* - TDLib function
  ///
  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration.
  ///
  /// * [firstName]: The first name of the user; 1-64 characters.
  /// * [lastName]: The last name of the user; 0-64 characters.
  ///
  /// [Ok] is returned on completion.
  const RegisterUser({
    required this.firstName,
    required this.lastName,
  });
  
  /// The first name of the user; 1-64 characters
  final String firstName;

  /// The last name of the user; 0-64 characters
  final String lastName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "first_name": firstName,
      "last_name": lastName,
      "@extra": extra,
    };
  }
  
  RegisterUser copyWith({
    String? firstName,
    String? lastName,
  }) => RegisterUser(
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
  );

  static const String constructor = 'registerUser';
  
  @override
  String getConstructor() => constructor;
}
