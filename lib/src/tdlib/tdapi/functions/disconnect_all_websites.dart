part of '../tdapi.dart';

/// **DisconnectAllWebsites** *(disconnectAllWebsites)* - TDLib function
  ///
  /// Disconnects all websites from the current user's Telegram account.
  ///
  /// [Ok] is returned on completion.
class DisconnectAllWebsites extends TdFunction {
  
  /// **DisconnectAllWebsites** *(disconnectAllWebsites)* - TDLib function
  ///
  /// Disconnects all websites from the current user's Telegram account.
  ///
  /// [Ok] is returned on completion.
  const DisconnectAllWebsites();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  DisconnectAllWebsites copyWith() => const DisconnectAllWebsites();

  static const String constructor = 'disconnectAllWebsites';
  
  @override
  String getConstructor() => constructor;
}
