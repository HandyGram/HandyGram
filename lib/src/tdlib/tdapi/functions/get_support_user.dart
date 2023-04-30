part of '../tdapi.dart';

/// **GetSupportUser** *(getSupportUser)* - TDLib function
  ///
  /// Returns a user that can be contacted to get support.
  ///
  /// [User] is returned on completion.
class GetSupportUser extends TdFunction {
  
  /// **GetSupportUser** *(getSupportUser)* - TDLib function
  ///
  /// Returns a user that can be contacted to get support.
  ///
  /// [User] is returned on completion.
  const GetSupportUser();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetSupportUser copyWith() => const GetSupportUser();

  static const String constructor = 'getSupportUser';
  
  @override
  String getConstructor() => constructor;
}
