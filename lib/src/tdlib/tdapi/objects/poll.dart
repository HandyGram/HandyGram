part of '../tdapi.dart';

/// **Poll** *(poll)* - basic class
///
/// Describes a poll.
///
/// * [id]: Unique poll identifier.
/// * [question]: Poll question; 1-300 characters.
/// * [options]: List of poll answer options.
/// * [totalVoterCount]: Total number of voters, participating in the poll.
/// * [recentVoterUserIds]: User identifiers of recent voters, if the poll is non-anonymous.
/// * [isAnonymous]: True, if the poll is anonymous.
/// * [type]: Type of the poll.
/// * [openPeriod]: Amount of time the poll will be active after creation, in seconds.
/// * [closeDate]: Point in time (Unix timestamp) when the poll will automatically be closed.
/// * [isClosed]: True, if the poll is closed.
final class Poll extends TdObject {
  
  /// **Poll** *(poll)* - basic class
  ///
  /// Describes a poll.
  ///
  /// * [id]: Unique poll identifier.
  /// * [question]: Poll question; 1-300 characters.
  /// * [options]: List of poll answer options.
  /// * [totalVoterCount]: Total number of voters, participating in the poll.
  /// * [recentVoterUserIds]: User identifiers of recent voters, if the poll is non-anonymous.
  /// * [isAnonymous]: True, if the poll is anonymous.
  /// * [type]: Type of the poll.
  /// * [openPeriod]: Amount of time the poll will be active after creation, in seconds.
  /// * [closeDate]: Point in time (Unix timestamp) when the poll will automatically be closed.
  /// * [isClosed]: True, if the poll is closed.
  const Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.recentVoterUserIds,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });
  
  /// Unique poll identifier
  final int id;

  /// Poll question; 1-300 characters
  final String question;

  /// List of poll answer options
  final List<PollOption> options;

  /// Total number of voters, participating in the poll
  final int totalVoterCount;

  /// User identifiers of recent voters, if the poll is non-anonymous
  final List<int> recentVoterUserIds;

  /// True, if the poll is anonymous
  final bool isAnonymous;

  /// Type of the poll
  final PollType type;

  /// Amount of time the poll will be active after creation, in seconds
  final int openPeriod;

  /// Point in time (Unix timestamp) when the poll will automatically be closed
  final int closeDate;

  /// True, if the poll is closed
  final bool isClosed;
  
  /// Parse from a json
  factory Poll.fromJson(Map<String, dynamic> json) => Poll(
    id: int.parse(json['id']),
    question: json['question'],
    options: List<PollOption>.from((json['options'] ?? []).map((item) => PollOption.fromJson(item)).toList()),
    totalVoterCount: json['total_voter_count'],
    recentVoterUserIds: List<int>.from((json['recent_voter_user_ids'] ?? []).map((item) => item).toList()),
    isAnonymous: json['is_anonymous'],
    type: PollType.fromJson(json['type']),
    openPeriod: json['open_period'],
    closeDate: json['close_date'],
    isClosed: json['is_closed'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "question": question,
      "options": options.map((i) => i.toJson()).toList(),
      "total_voter_count": totalVoterCount,
      "recent_voter_user_ids": recentVoterUserIds.map((i) => i).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
		};
	}

  
  Poll copyWith({
    int? id,
    String? question,
    List<PollOption>? options,
    int? totalVoterCount,
    List<int>? recentVoterUserIds,
    bool? isAnonymous,
    PollType? type,
    int? openPeriod,
    int? closeDate,
    bool? isClosed,
  }) => Poll(
    id: id ?? this.id,
    question: question ?? this.question,
    options: options ?? this.options,
    totalVoterCount: totalVoterCount ?? this.totalVoterCount,
    recentVoterUserIds: recentVoterUserIds ?? this.recentVoterUserIds,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    type: type ?? this.type,
    openPeriod: openPeriod ?? this.openPeriod,
    closeDate: closeDate ?? this.closeDate,
    isClosed: isClosed ?? this.isClosed,
  );

  static const String objectType = 'poll';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
