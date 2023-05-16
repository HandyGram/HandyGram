part of '../tdapi.dart';

/// **Chats** *(chats)* - basic class
///
/// Represents a list of chats.
///
/// * [totalCount]: Approximate total number of chats found.
/// * [chatIds]: List of chat identifiers.
final class Chats extends TdObject {
  
  /// **Chats** *(chats)* - basic class
  ///
  /// Represents a list of chats.
  ///
  /// * [totalCount]: Approximate total number of chats found.
  /// * [chatIds]: List of chat identifiers.
  const Chats({
    required this.totalCount,
    required this.chatIds,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of chats found 
  final int totalCount;

  /// List of chat identifiers
  final List<int> chatIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Chats.fromJson(Map<String, dynamic> json) => Chats(
    totalCount: json['total_count'],
    chatIds: List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "chat_ids": chatIds.map((i) => i).toList(),
		};
	}

  
  Chats copyWith({
    int? totalCount,
    List<int>? chatIds,
    dynamic extra,
    int? clientId,
  }) => Chats(
    totalCount: totalCount ?? this.totalCount,
    chatIds: chatIds ?? this.chatIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
