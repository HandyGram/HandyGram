part of '../tdapi.dart';

/// **GetMe** *(getMe)* - TDLib function
  ///
  /// Returns the current user.
  ///
  /// [User] is returned on completion.
class GetMe extends TdFunction {
  
  /// **GetMe** *(getMe)* - TDLib function
  ///
  /// Returns the current user.
  ///
  /// [User] is returned on completion.
  const GetMe();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetMe copyWith() => const GetMe();

  static const String constructor = 'getMe';
  
  @override
  String getConstructor() => constructor;
}
