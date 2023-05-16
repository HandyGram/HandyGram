part of '../tdapi.dart';

/// **ChatStatisticsMessageInteractionInfo** *(chatStatisticsMessageInteractionInfo)* - basic class
///
/// Contains statistics about interactions with a message.
///
/// * [messageId]: Message identifier.
/// * [viewCount]: Number of times the message was viewed.
/// * [forwardCount]: Number of times the message was forwarded.
final class ChatStatisticsMessageInteractionInfo extends TdObject {
  
  /// **ChatStatisticsMessageInteractionInfo** *(chatStatisticsMessageInteractionInfo)* - basic class
  ///
  /// Contains statistics about interactions with a message.
  ///
  /// * [messageId]: Message identifier.
  /// * [viewCount]: Number of times the message was viewed.
  /// * [forwardCount]: Number of times the message was forwarded.
  const ChatStatisticsMessageInteractionInfo({
    required this.messageId,
    required this.viewCount,
    required this.forwardCount,
  });
  
  /// Message identifier
  final int messageId;

  /// Number of times the message was viewed
  final int viewCount;

  /// Number of times the message was forwarded
  final int forwardCount;
  
  /// Parse from a json
  factory ChatStatisticsMessageInteractionInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsMessageInteractionInfo(
    messageId: json['message_id'],
    viewCount: json['view_count'],
    forwardCount: json['forward_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message_id": messageId,
      "view_count": viewCount,
      "forward_count": forwardCount,
		};
	}

  
  ChatStatisticsMessageInteractionInfo copyWith({
    int? messageId,
    int? viewCount,
    int? forwardCount,
  }) => ChatStatisticsMessageInteractionInfo(
    messageId: messageId ?? this.messageId,
    viewCount: viewCount ?? this.viewCount,
    forwardCount: forwardCount ?? this.forwardCount,
  );

  static const String objectType = 'chatStatisticsMessageInteractionInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
