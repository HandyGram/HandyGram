part of '../tdapi.dart';

/// **MessageSenders** *(messageSenders)* - basic class
///
/// Represents a list of message senders.
///
/// * [totalCount]: Approximate total number of messages senders found.
/// * [senders]: List of message senders.
final class MessageSenders extends TdObject {
  
  /// **MessageSenders** *(messageSenders)* - basic class
  ///
  /// Represents a list of message senders.
  ///
  /// * [totalCount]: Approximate total number of messages senders found.
  /// * [senders]: List of message senders.
  const MessageSenders({
    required this.totalCount,
    required this.senders,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of messages senders found 
  final int totalCount;

  /// List of message senders
  final List<MessageSender> senders;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageSenders.fromJson(Map<String, dynamic> json) => MessageSenders(
    totalCount: json['total_count'],
    senders: List<MessageSender>.from((json['senders'] ?? []).map((item) => MessageSender.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "senders": senders.map((i) => i.toJson()).toList(),
		};
	}

  
  MessageSenders copyWith({
    int? totalCount,
    List<MessageSender>? senders,
    dynamic extra,
    int? clientId,
  }) => MessageSenders(
    totalCount: totalCount ?? this.totalCount,
    senders: senders ?? this.senders,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'messageSenders';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
