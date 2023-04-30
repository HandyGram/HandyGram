part of '../tdapi.dart';

/// **CallServerType** *(callServerType)* - parent
  ///
  /// Describes the type of a call server.
class CallServerType extends TdObject {
  
  /// **CallServerType** *(callServerType)* - parent
  ///
  /// Describes the type of a call server.
  const CallServerType();
  
  /// a CallServerType return type can be :
  /// * [CallServerTypeTelegramReflector]
  /// * [CallServerTypeWebrtc]
  factory CallServerType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallServerTypeTelegramReflector.constructor:
        return CallServerTypeTelegramReflector.fromJson(json);
      case CallServerTypeWebrtc.constructor:
        return CallServerTypeWebrtc.fromJson(json);
      default:
        return const CallServerType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallServerType copyWith() => const CallServerType();

  static const String constructor = 'callServerType';
  
  @override
  String getConstructor() => constructor;
}


/// **CallServerTypeTelegramReflector** *(callServerTypeTelegramReflector)* - child of CallServerType
  ///
  /// A Telegram call reflector.
  ///
  /// * [peerTag]: A peer tag to be used with the reflector.
  /// * [isTcp]: True, if the server uses TCP instead of UDP.
class CallServerTypeTelegramReflector extends CallServerType {
  
  /// **CallServerTypeTelegramReflector** *(callServerTypeTelegramReflector)* - child of CallServerType
  ///
  /// A Telegram call reflector.
  ///
  /// * [peerTag]: A peer tag to be used with the reflector.
  /// * [isTcp]: True, if the server uses TCP instead of UDP.
  const CallServerTypeTelegramReflector({
    required this.peerTag,
    required this.isTcp,
  });
  
  /// A peer tag to be used with the reflector 
  final String peerTag;

  /// True, if the server uses TCP instead of UDP
  final bool isTcp;
  
  /// Parse from a json
  factory CallServerTypeTelegramReflector.fromJson(Map<String, dynamic> json) => CallServerTypeTelegramReflector(
    peerTag: json['peer_tag'],
    isTcp: json['is_tcp'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "peer_tag": peerTag,
      "is_tcp": isTcp,
    };
  }
  
  @override
  CallServerTypeTelegramReflector copyWith({
    String? peerTag,
    bool? isTcp,
  }) => CallServerTypeTelegramReflector(
    peerTag: peerTag ?? this.peerTag,
    isTcp: isTcp ?? this.isTcp,
  );

  static const String constructor = 'callServerTypeTelegramReflector';
  
  @override
  String getConstructor() => constructor;
}


/// **CallServerTypeWebrtc** *(callServerTypeWebrtc)* - child of CallServerType
  ///
  /// A WebRTC server.
  ///
  /// * [username]: Username to be used for authentication.
  /// * [password]: Authentication password.
  /// * [supportsTurn]: True, if the server supports TURN.
  /// * [supportsStun]: True, if the server supports STUN.
class CallServerTypeWebrtc extends CallServerType {
  
  /// **CallServerTypeWebrtc** *(callServerTypeWebrtc)* - child of CallServerType
  ///
  /// A WebRTC server.
  ///
  /// * [username]: Username to be used for authentication.
  /// * [password]: Authentication password.
  /// * [supportsTurn]: True, if the server supports TURN.
  /// * [supportsStun]: True, if the server supports STUN.
  const CallServerTypeWebrtc({
    required this.username,
    required this.password,
    required this.supportsTurn,
    required this.supportsStun,
  });
  
  /// Username to be used for authentication
  final String username;

  /// Authentication password
  final String password;

  /// True, if the server supports TURN
  final bool supportsTurn;

  /// True, if the server supports STUN
  final bool supportsStun;
  
  /// Parse from a json
  factory CallServerTypeWebrtc.fromJson(Map<String, dynamic> json) => CallServerTypeWebrtc(
    username: json['username'],
    password: json['password'],
    supportsTurn: json['supports_turn'],
    supportsStun: json['supports_stun'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "username": username,
      "password": password,
      "supports_turn": supportsTurn,
      "supports_stun": supportsStun,
    };
  }
  
  @override
  CallServerTypeWebrtc copyWith({
    String? username,
    String? password,
    bool? supportsTurn,
    bool? supportsStun,
  }) => CallServerTypeWebrtc(
    username: username ?? this.username,
    password: password ?? this.password,
    supportsTurn: supportsTurn ?? this.supportsTurn,
    supportsStun: supportsStun ?? this.supportsStun,
  );

  static const String constructor = 'callServerTypeWebrtc';
  
  @override
  String getConstructor() => constructor;
}
