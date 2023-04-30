part of '../tdapi.dart';

/// **DisconnectWebsite** *(disconnectWebsite)* - TDLib function
  ///
  /// Disconnects website from the current user's Telegram account.
  ///
  /// * [websiteId]: Website identifier.
  ///
  /// [Ok] is returned on completion.
class DisconnectWebsite extends TdFunction {
  
  /// **DisconnectWebsite** *(disconnectWebsite)* - TDLib function
  ///
  /// Disconnects website from the current user's Telegram account.
  ///
  /// * [websiteId]: Website identifier.
  ///
  /// [Ok] is returned on completion.
  const DisconnectWebsite({
    required this.websiteId,
  });
  
  /// Website identifier
  final int websiteId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "website_id": websiteId,
      "@extra": extra,
    };
  }
  
  DisconnectWebsite copyWith({
    int? websiteId,
  }) => DisconnectWebsite(
    websiteId: websiteId ?? this.websiteId,
  );

  static const String constructor = 'disconnectWebsite';
  
  @override
  String getConstructor() => constructor;
}
