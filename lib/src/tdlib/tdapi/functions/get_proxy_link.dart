part of '../tdapi.dart';

/// **GetProxyLink** *(getProxyLink)* - TDLib function
  ///
  /// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  ///
  /// [HttpUrl] is returned on completion.
class GetProxyLink extends TdFunction {
  
  /// **GetProxyLink** *(getProxyLink)* - TDLib function
  ///
  /// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  ///
  /// [HttpUrl] is returned on completion.
  const GetProxyLink({
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
  
  GetProxyLink copyWith({
    int? proxyId,
  }) => GetProxyLink(
    proxyId: proxyId ?? this.proxyId,
  );

  static const String constructor = 'getProxyLink';
  
  @override
  String getConstructor() => constructor;
}
