part of '../tdapi.dart';

/// **ForumTopics** *(forumTopics)* - basic class
///
/// Describes a list of forum topics.
///
/// * [totalCount]: Approximate total number of forum topics found.
/// * [topics]: List of forum topics.
/// * [nextOffsetDate]: Offset date for the next getForumTopics request.
/// * [nextOffsetMessageId]: Offset message identifier for the next getForumTopics request.
/// * [nextOffsetMessageThreadId]: Offset message thread identifier for the next getForumTopics request.
final class ForumTopics extends TdObject {
  
  /// **ForumTopics** *(forumTopics)* - basic class
  ///
  /// Describes a list of forum topics.
  ///
  /// * [totalCount]: Approximate total number of forum topics found.
  /// * [topics]: List of forum topics.
  /// * [nextOffsetDate]: Offset date for the next getForumTopics request.
  /// * [nextOffsetMessageId]: Offset message identifier for the next getForumTopics request.
  /// * [nextOffsetMessageThreadId]: Offset message thread identifier for the next getForumTopics request.
  const ForumTopics({
    required this.totalCount,
    required this.topics,
    required this.nextOffsetDate,
    required this.nextOffsetMessageId,
    required this.nextOffsetMessageThreadId,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of forum topics found
  final int totalCount;

  /// List of forum topics
  final List<ForumTopic> topics;

  /// Offset date for the next getForumTopics request
  final int nextOffsetDate;

  /// Offset message identifier for the next getForumTopics request
  final int nextOffsetMessageId;

  /// Offset message thread identifier for the next getForumTopics request
  final int nextOffsetMessageThreadId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ForumTopics.fromJson(Map<String, dynamic> json) => ForumTopics(
    totalCount: json['total_count'],
    topics: List<ForumTopic>.from((json['topics'] ?? []).map((item) => ForumTopic.fromJson(item)).toList()),
    nextOffsetDate: json['next_offset_date'],
    nextOffsetMessageId: json['next_offset_message_id'],
    nextOffsetMessageThreadId: json['next_offset_message_thread_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "topics": topics.map((i) => i.toJson()).toList(),
      "next_offset_date": nextOffsetDate,
      "next_offset_message_id": nextOffsetMessageId,
      "next_offset_message_thread_id": nextOffsetMessageThreadId,
		};
	}

  
  ForumTopics copyWith({
    int? totalCount,
    List<ForumTopic>? topics,
    int? nextOffsetDate,
    int? nextOffsetMessageId,
    int? nextOffsetMessageThreadId,
    dynamic extra,
    int? clientId,
  }) => ForumTopics(
    totalCount: totalCount ?? this.totalCount,
    topics: topics ?? this.topics,
    nextOffsetDate: nextOffsetDate ?? this.nextOffsetDate,
    nextOffsetMessageId: nextOffsetMessageId ?? this.nextOffsetMessageId,
    nextOffsetMessageThreadId: nextOffsetMessageThreadId ?? this.nextOffsetMessageThreadId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'forumTopics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
