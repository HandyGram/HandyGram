part of '../tdapi.dart';

/// **Messages** *(messages)* - basic class
  ///
  /// Contains a list of messages.
  ///
  /// * [totalCount]: Approximate total number of messages found.
  /// * [messages]: List of messages; messages may be null.
class Messages extends TdObject {
  
  /// **Messages** *(messages)* - basic class
  ///
  /// Contains a list of messages.
  ///
  /// * [totalCount]: Approximate total number of messages found.
  /// * [messages]: List of messages; messages may be null.
  const Messages({
    required this.totalCount,
    required this.messages,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of messages found 
  final int totalCount;

  /// List of messages; messages may be null
  final List<Message> messages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Messages.fromJson(Map<String, dynamic> json) => Messages(
    totalCount: json['total_count'],
    messages: List<Message>.from((json['messages'] ?? []).map((item) => Message.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "total_count": totalCount,
      "messages": messages.map((i) => i.toJson()).toList(),
    };
  }
  
  Messages copyWith({
    int? totalCount,
    List<Message>? messages,
    dynamic extra,
    int? clientId,
  }) => Messages(
    totalCount: totalCount ?? this.totalCount,
    messages: messages ?? this.messages,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'messages';
  
  @override
  String getConstructor() => constructor;
}
