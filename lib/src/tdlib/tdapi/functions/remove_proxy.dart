part of '../tdapi.dart';

/// **RemoveProxy** *(removeProxy)* - TDLib function
  ///
  /// Removes a proxy server. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  ///
  /// [Ok] is returned on completion.
class RemoveProxy extends TdFunction {
  
  /// **RemoveProxy** *(removeProxy)* - TDLib function
  ///
  /// Removes a proxy server. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  ///
  /// [Ok] is returned on completion.
  const RemoveProxy({
    required this.proxyId,
  });
  
  /// Proxy identifier
  final int proxyId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "proxy_id": proxyId,
      "@extra": extra,
    };
  }
  
  RemoveProxy copyWith({
    int? proxyId,
  }) => RemoveProxy(
    proxyId: proxyId ?? this.proxyId,
  );

  static const String constructor = 'removeProxy';
  
  @override
  String getConstructor() => constructor;
}
