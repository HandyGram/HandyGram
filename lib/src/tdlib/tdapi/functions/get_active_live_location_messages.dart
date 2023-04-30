part of '../tdapi.dart';

/// **GetActiveLiveLocationMessages** *(getActiveLiveLocationMessages)* - TDLib function
  ///
  /// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used.
  ///
  /// [Messages] is returned on completion.
class GetActiveLiveLocationMessages extends TdFunction {
  
  /// **GetActiveLiveLocationMessages** *(getActiveLiveLocationMessages)* - TDLib function
  ///
  /// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used.
  ///
  /// [Messages] is returned on completion.
  const GetActiveLiveLocationMessages();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetActiveLiveLocationMessages copyWith() => const GetActiveLiveLocationMessages();

  static const String constructor = 'getActiveLiveLocationMessages';
  
  @override
  String getConstructor() => constructor;
}
