part of '../tdapi.dart';

/// **ProxyType** *(proxyType)* - parent
  ///
  /// Describes the type of a proxy server.
class ProxyType extends TdObject {
  
  /// **ProxyType** *(proxyType)* - parent
  ///
  /// Describes the type of a proxy server.
  const ProxyType();
  
  /// a ProxyType return type can be :
  /// * [ProxyTypeSocks5]
  /// * [ProxyTypeHttp]
  /// * [ProxyTypeMtproto]
  factory ProxyType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ProxyTypeSocks5.constructor:
        return ProxyTypeSocks5.fromJson(json);
      case ProxyTypeHttp.constructor:
        return ProxyTypeHttp.fromJson(json);
      case ProxyTypeMtproto.constructor:
        return ProxyTypeMtproto.fromJson(json);
      default:
        return const ProxyType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ProxyType copyWith() => const ProxyType();

  static const String constructor = 'proxyType';
  
  @override
  String getConstructor() => constructor;
}


/// **ProxyTypeSocks5** *(proxyTypeSocks5)* - child of ProxyType
  ///
  /// A SOCKS5 proxy server.
  ///
  /// * [username]: Username for logging in; may be empty.
  /// * [password]: Password for logging in; may be empty.
class ProxyTypeSocks5 extends ProxyType {
  
  /// **ProxyTypeSocks5** *(proxyTypeSocks5)* - child of ProxyType
  ///
  /// A SOCKS5 proxy server.
  ///
  /// * [username]: Username for logging in; may be empty.
  /// * [password]: Password for logging in; may be empty.
  const ProxyTypeSocks5({
    required this.username,
    required this.password,
  });
  
  /// Username for logging in; may be empty 
  final String username;

  /// Password for logging in; may be empty
  final String password;
  
  /// Parse from a json
  factory ProxyTypeSocks5.fromJson(Map<String, dynamic> json) => ProxyTypeSocks5(
    username: json['username'],
    password: json['password'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "username": username,
      "password": password,
    };
  }
  
  @override
  ProxyTypeSocks5 copyWith({
    String? username,
    String? password,
  }) => ProxyTypeSocks5(
    username: username ?? this.username,
    password: password ?? this.password,
  );

  static const String constructor = 'proxyTypeSocks5';
  
  @override
  String getConstructor() => constructor;
}


/// **ProxyTypeHttp** *(proxyTypeHttp)* - child of ProxyType
  ///
  /// A HTTP transparent proxy server.
  ///
  /// * [username]: Username for logging in; may be empty.
  /// * [password]: Password for logging in; may be empty.
  /// * [httpOnly]: Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method.
class ProxyTypeHttp extends ProxyType {
  
  /// **ProxyTypeHttp** *(proxyTypeHttp)* - child of ProxyType
  ///
  /// A HTTP transparent proxy server.
  ///
  /// * [username]: Username for logging in; may be empty.
  /// * [password]: Password for logging in; may be empty.
  /// * [httpOnly]: Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method.
  const ProxyTypeHttp({
    required this.username,
    required this.password,
    required this.httpOnly,
  });
  
  /// Username for logging in; may be empty 
  final String username;

  /// Password for logging in; may be empty 
  final String password;

  /// Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method
  final bool httpOnly;
  
  /// Parse from a json
  factory ProxyTypeHttp.fromJson(Map<String, dynamic> json) => ProxyTypeHttp(
    username: json['username'],
    password: json['password'],
    httpOnly: json['http_only'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "username": username,
      "password": password,
      "http_only": httpOnly,
    };
  }
  
  @override
  ProxyTypeHttp copyWith({
    String? username,
    String? password,
    bool? httpOnly,
  }) => ProxyTypeHttp(
    username: username ?? this.username,
    password: password ?? this.password,
    httpOnly: httpOnly ?? this.httpOnly,
  );

  static const String constructor = 'proxyTypeHttp';
  
  @override
  String getConstructor() => constructor;
}


/// **ProxyTypeMtproto** *(proxyTypeMtproto)* - child of ProxyType
  ///
  /// An MTProto proxy server.
  ///
  /// * [secret]: The proxy's secret in hexadecimal encoding.
class ProxyTypeMtproto extends ProxyType {
  
  /// **ProxyTypeMtproto** *(proxyTypeMtproto)* - child of ProxyType
  ///
  /// An MTProto proxy server.
  ///
  /// * [secret]: The proxy's secret in hexadecimal encoding.
  const ProxyTypeMtproto({
    required this.secret,
  });
  
  /// The proxy's secret in hexadecimal encoding
  final String secret;
  
  /// Parse from a json
  factory ProxyTypeMtproto.fromJson(Map<String, dynamic> json) => ProxyTypeMtproto(
    secret: json['secret'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "secret": secret,
    };
  }
  
  @override
  ProxyTypeMtproto copyWith({
    String? secret,
  }) => ProxyTypeMtproto(
    secret: secret ?? this.secret,
  );

  static const String constructor = 'proxyTypeMtproto';
  
  @override
  String getConstructor() => constructor;
}
