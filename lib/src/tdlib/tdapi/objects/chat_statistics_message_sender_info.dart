part of '../tdapi.dart';

/// **ChatStatisticsMessageSenderInfo** *(chatStatisticsMessageSenderInfo)* - basic class
///
/// Contains statistics about messages sent by a user.
///
/// * [userId]: User identifier.
/// * [sentMessageCount]: Number of sent messages.
/// * [averageCharacterCount]: Average number of characters in sent messages; 0 if unknown.
final class ChatStatisticsMessageSenderInfo extends TdObject {
  
  /// **ChatStatisticsMessageSenderInfo** *(chatStatisticsMessageSenderInfo)* - basic class
  ///
  /// Contains statistics about messages sent by a user.
  ///
  /// * [userId]: User identifier.
  /// * [sentMessageCount]: Number of sent messages.
  /// * [averageCharacterCount]: Average number of characters in sent messages; 0 if unknown.
  const ChatStatisticsMessageSenderInfo({
    required this.userId,
    required this.sentMessageCount,
    required this.averageCharacterCount,
  });
  
  /// User identifier
  final int userId;

  /// Number of sent messages
  final int sentMessageCount;

  /// Average number of characters in sent messages; 0 if unknown
  final int averageCharacterCount;
  
  /// Parse from a json
  factory ChatStatisticsMessageSenderInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsMessageSenderInfo(
    userId: json['user_id'],
    sentMessageCount: json['sent_message_count'],
    averageCharacterCount: json['average_character_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "sent_message_count": sentMessageCount,
      "average_character_count": averageCharacterCount,
		};
	}

  
  ChatStatisticsMessageSenderInfo copyWith({
    int? userId,
    int? sentMessageCount,
    int? averageCharacterCount,
  }) => ChatStatisticsMessageSenderInfo(
    userId: userId ?? this.userId,
    sentMessageCount: sentMessageCount ?? this.sentMessageCount,
    averageCharacterCount: averageCharacterCount ?? this.averageCharacterCount,
  );

  static const String objectType = 'chatStatisticsMessageSenderInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
