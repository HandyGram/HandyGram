part of '../tdapi.dart';

/// **MessageAutoDeleteTime** *(messageAutoDeleteTime)* - basic class
///
/// Contains default auto-delete timer setting for new chats.
///
/// * [time]: Message auto-delete time, in seconds. If 0, then messages aren't deleted automatically.
final class MessageAutoDeleteTime extends TdObject {
  
  /// **MessageAutoDeleteTime** *(messageAutoDeleteTime)* - basic class
  ///
  /// Contains default auto-delete timer setting for new chats.
  ///
  /// * [time]: Message auto-delete time, in seconds. If 0, then messages aren't deleted automatically.
  const MessageAutoDeleteTime({
    required this.time,
    this.extra,
    this.clientId,
  });
  
  /// Message auto-delete time, in seconds. If 0, then messages aren't deleted automatically
  final int time;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageAutoDeleteTime.fromJson(Map<String, dynamic> json) => MessageAutoDeleteTime(
    time: json['time'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "time": time,
		};
	}

  
  MessageAutoDeleteTime copyWith({
    int? time,
    dynamic extra,
    int? clientId,
  }) => MessageAutoDeleteTime(
    time: time ?? this.time,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'messageAutoDeleteTime';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
