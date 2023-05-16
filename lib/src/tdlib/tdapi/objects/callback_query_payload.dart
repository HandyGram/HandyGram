part of '../tdapi.dart';

/// **CallbackQueryPayload** *(callbackQueryPayload)* - parent
///
/// Represents a payload of a callback query.
sealed class CallbackQueryPayload extends TdObject {
  
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
      case CallbackQueryPayloadData.objectType:
        return CallbackQueryPayloadData.fromJson(json);
      case CallbackQueryPayloadDataWithPassword.objectType:
        return CallbackQueryPayloadDataWithPassword.fromJson(json);
      case CallbackQueryPayloadGame.objectType:
        return CallbackQueryPayloadGame.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CallbackQueryPayload)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  CallbackQueryPayload copyWith();

  static const String objectType = 'callbackQueryPayload';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallbackQueryPayloadData** *(callbackQueryPayloadData)* - child of CallbackQueryPayload
///
/// The payload for a general callback button.
///
/// * [data]: Data that was attached to the callback button.
final class CallbackQueryPayloadData extends CallbackQueryPayload {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "data": data,
		};
	}

  
  @override
  CallbackQueryPayloadData copyWith({
    String? data,
  }) => CallbackQueryPayloadData(
    data: data ?? this.data,
  );

  static const String objectType = 'callbackQueryPayloadData';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallbackQueryPayloadDataWithPassword** *(callbackQueryPayloadDataWithPassword)* - child of CallbackQueryPayload
///
/// The payload for a callback button requiring password.
///
/// * [password]: The 2-step verification password for the current user.
/// * [data]: Data that was attached to the callback button.
final class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'callbackQueryPayloadDataWithPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallbackQueryPayloadGame** *(callbackQueryPayloadGame)* - child of CallbackQueryPayload
///
/// The payload for a game callback button.
///
/// * [gameShortName]: A short name of the game that was attached to the callback button.
final class CallbackQueryPayloadGame extends CallbackQueryPayload {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "game_short_name": gameShortName,
		};
	}

  
  @override
  CallbackQueryPayloadGame copyWith({
    String? gameShortName,
  }) => CallbackQueryPayloadGame(
    gameShortName: gameShortName ?? this.gameShortName,
  );

  static const String objectType = 'callbackQueryPayloadGame';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
