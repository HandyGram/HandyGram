part of '../tdapi.dart';

/// **PingProxy** *(pingProxy)* - TDLib function
  ///
  /// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier. Use 0 to ping a Telegram server without a proxy.
  ///
  /// [Seconds] is returned on completion.
class PingProxy extends TdFunction {
  
  /// **PingProxy** *(pingProxy)* - TDLib function
  ///
  /// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier. Use 0 to ping a Telegram server without a proxy.
  ///
  /// [Seconds] is returned on completion.
  const PingProxy({
    required this.proxyId,
  });
  
  /// Proxy identifier. Use 0 to ping a Telegram server without a proxy
  final int proxyId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "proxy_id": proxyId,
      "@extra": extra,
    };
  }
  
  PingProxy copyWith({
    int? proxyId,
  }) => PingProxy(
    proxyId: proxyId ?? this.proxyId,
  );

  static const String constructor = 'pingProxy';
  
  @override
  String getConstructor() => constructor;
}
