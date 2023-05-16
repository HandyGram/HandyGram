part of '../tdapi.dart';

/// **ChatMessageSenders** *(chatMessageSenders)* - basic class
///
/// Represents a list of message senders, which can be used to send messages in a chat.
///
/// * [senders]: List of available message senders.
final class ChatMessageSenders extends TdObject {
  
  /// **ChatMessageSenders** *(chatMessageSenders)* - basic class
  ///
  /// Represents a list of message senders, which can be used to send messages in a chat.
  ///
  /// * [senders]: List of available message senders.
  const ChatMessageSenders({
    required this.senders,
    this.extra,
    this.clientId,
  });
  
  /// List of available message senders
  final List<ChatMessageSender> senders;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatMessageSenders.fromJson(Map<String, dynamic> json) => ChatMessageSenders(
    senders: List<ChatMessageSender>.from((json['senders'] ?? []).map((item) => ChatMessageSender.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "senders": senders.map((i) => i.toJson()).toList(),
		};
	}

  
  ChatMessageSenders copyWith({
    List<ChatMessageSender>? senders,
    dynamic extra,
    int? clientId,
  }) => ChatMessageSenders(
    senders: senders ?? this.senders,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatMessageSenders';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
