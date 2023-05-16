part of '../tdapi.dart';

/// **FoundMessages** *(foundMessages)* - basic class
///
/// Contains a list of messages found by a search.
///
/// * [totalCount]: Approximate total number of messages found; -1 if unknown.
/// * [messages]: List of messages.
/// * [nextOffset]: The offset for the next request. If empty, there are no more results.
final class FoundMessages extends TdObject {
  
  /// **FoundMessages** *(foundMessages)* - basic class
  ///
  /// Contains a list of messages found by a search.
  ///
  /// * [totalCount]: Approximate total number of messages found; -1 if unknown.
  /// * [messages]: List of messages.
  /// * [nextOffset]: The offset for the next request. If empty, there are no more results.
  const FoundMessages({
    required this.totalCount,
    required this.messages,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of messages found; -1 if unknown 
  final int totalCount;

  /// List of messages 
  final List<Message> messages;

  /// The offset for the next request. If empty, there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FoundMessages.fromJson(Map<String, dynamic> json) => FoundMessages(
    totalCount: json['total_count'],
    messages: List<Message>.from((json['messages'] ?? []).map((item) => Message.fromJson(item)).toList()),
    nextOffset: json['next_offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "messages": messages.map((i) => i.toJson()).toList(),
      "next_offset": nextOffset,
		};
	}

  
  FoundMessages copyWith({
    int? totalCount,
    List<Message>? messages,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => FoundMessages(
    totalCount: totalCount ?? this.totalCount,
    messages: messages ?? this.messages,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'foundMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
