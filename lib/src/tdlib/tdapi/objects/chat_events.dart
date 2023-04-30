part of '../tdapi.dart';

/// **ChatEvents** *(chatEvents)* - basic class
  ///
  /// Contains a list of chat events.
  ///
  /// * [events]: List of events.
class ChatEvents extends TdObject {
  
  /// **ChatEvents** *(chatEvents)* - basic class
  ///
  /// Contains a list of chat events.
  ///
  /// * [events]: List of events.
  const ChatEvents({
    required this.events,
    this.extra,
    this.clientId,
  });
  
  /// List of events
  final List<ChatEvent> events;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatEvents.fromJson(Map<String, dynamic> json) => ChatEvents(
    events: List<ChatEvent>.from((json['events'] ?? []).map((item) => ChatEvent.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "events": events.map((i) => i.toJson()).toList(),
    };
  }
  
  ChatEvents copyWith({
    List<ChatEvent>? events,
    dynamic extra,
    int? clientId,
  }) => ChatEvents(
    events: events ?? this.events,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'chatEvents';
  
  @override
  String getConstructor() => constructor;
}
