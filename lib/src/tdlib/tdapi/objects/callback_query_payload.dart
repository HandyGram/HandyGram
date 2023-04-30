part of '../tdapi.dart';

/// **CallbackQueryPayload** *(callbackQueryPayload)* - parent
  ///
  /// Represents a payload of a callback query.
class CallbackQueryPayload extends TdObject {
  
  /// **CallbackQueryPayload** *(callbackQueryPayload)* - parent
  ///
  /// Represents a payload of a callback query.
  const CallbackQueryPayload();
  
  /// a CallbackQueryPayload return type can be :
  /// * [CallbackQueryPayloadData]
  /// * [CallbackQueryPayloadDataWithPassword]
  /// * [CallbackQueryPayloadGame]
  factory CallbackQueryPayload.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallbackQueryPayloadData.constructor:
        return CallbackQueryPayloadData.fromJson(json);
      case CallbackQueryPayloadDataWithPassword.constructor:
        return CallbackQueryPayloadDataWithPassword.fromJson(json);
      case CallbackQueryPayloadGame.constructor:
        return CallbackQueryPayloadGame.fromJson(json);
      default:
        return const CallbackQueryPayload();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallbackQueryPayload copyWith() => const CallbackQueryPayload();

  static const String constructor = 'callbackQueryPayload';
  
  @override
  String getConstructor() => constructor;
}


/// **CallbackQueryPayloadData** *(callbackQueryPayloadData)* - child of CallbackQueryPayload
  ///
  /// The payload for a general callback button.
  ///
  /// * [data]: Data that was attached to the callback button.
class CallbackQueryPayloadData extends CallbackQueryPayload {
  
  /// **CallbackQueryPayloadData** *(callbackQueryPayloadData)* - child of CallbackQueryPayload
  ///
  /// The payload for a general callback button.
  ///
  /// * [data]: Data that was attached to the callback button.
  const CallbackQueryPayloadData({
    required this.data,
  });
  
  /// Data that was attached to the callback button
  final String data;
  
  /// Parse from a json
  factory CallbackQueryPayloadData.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadData(
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "data": data,
    };
  }
  
  @override
  CallbackQueryPayloadData copyWith({
    String? data,
  }) => CallbackQueryPayloadData(
    data: data ?? this.data,
  );

  static const String constructor = 'callbackQueryPayloadData';
  
  @override
  String getConstructor() => constructor;
}


/// **CallbackQueryPayloadDataWithPassword** *(callbackQueryPayloadDataWithPassword)* - child of CallbackQueryPayload
  ///
  /// The payload for a callback button requiring password.
  ///
  /// * [password]: The 2-step verification password for the current user.
  /// * [data]: Data that was attached to the callback button.
class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  
  /// **CallbackQueryPayloadDataWithPassword** *(callbackQueryPayloadDataWithPassword)* - child of CallbackQueryPayload
  ///
  /// The payload for a callback button requiring password.
  ///
  /// * [password]: The 2-step verification password for the current user.
  /// * [data]: Data that was attached to the callback button.
  const CallbackQueryPayloadDataWithPassword({
    required this.password,
    required this.data,
  });
  
  /// The 2-step verification password for the current user 
  final String password;

  /// Data that was attached to the callback button
  final String data;
  
  /// Parse from a json
  factory CallbackQueryPayloadDataWithPassword.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadDataWithPassword(
    password: json['password'],
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "password": password,
      "data": data,
    };
  }
  
  @override
  CallbackQueryPayloadDataWithPassword copyWith({
    String? password,
    String? data,
  }) => CallbackQueryPayloadDataWithPassword(
    password: password ?? this.password,
    data: data ?? this.data,
  );

  static const String constructor = 'callbackQueryPayloadDataWithPassword';
  
  @override
  String getConstructor() => constructor;
}


/// **CallbackQueryPayloadGame** *(callbackQueryPayloadGame)* - child of CallbackQueryPayload
  ///
  /// The payload for a game callback button.
  ///
  /// * [gameShortName]: A short name of the game that was attached to the callback button.
class CallbackQueryPayloadGame extends CallbackQueryPayload {
  
  /// **CallbackQueryPayloadGame** *(callbackQueryPayloadGame)* - child of CallbackQueryPayload
  ///
  /// The payload for a game callback button.
  ///
  /// * [gameShortName]: A short name of the game that was attached to the callback button.
  const CallbackQueryPayloadGame({
    required this.gameShortName,
  });
  
  /// A short name of the game that was attached to the callback button
  final String gameShortName;
  
  /// Parse from a json
  factory CallbackQueryPayloadGame.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadGame(
    gameShortName: json['game_short_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "game_short_name": gameShortName,
    };
  }
  
  @override
  CallbackQueryPayloadGame copyWith({
    String? gameShortName,
  }) => CallbackQueryPayloadGame(
    gameShortName: gameShortName ?? this.gameShortName,
  );

  static const String constructor = 'callbackQueryPayloadGame';
  
  @override
  String getConstructor() => constructor;
}
