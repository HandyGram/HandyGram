part of '../tdapi.dart';

/// **GetUserLink** *(getUserLink)* - TDLib function
  ///
  /// Returns an HTTPS link, which can be used to get information about the current user.
  ///
  /// [UserLink] is returned on completion.
class GetUserLink extends TdFunction {
  
  /// **GetUserLink** *(getUserLink)* - TDLib function
  ///
  /// Returns an HTTPS link, which can be used to get information about the current user.
  ///
  /// [UserLink] is returned on completion.
  const GetUserLink();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetUserLink copyWith() => const GetUserLink();

  static const String constructor = 'getUserLink';
  
  @override
  String getConstructor() => constructor;
}
