part of '../tdapi.dart';

/// **ChatJoinRequestsInfo** *(chatJoinRequestsInfo)* - basic class
///
/// Contains information about pending join requests for a chat.
///
/// * [totalCount]: Total number of pending join requests.
/// * [userIds]: Identifiers of at most 3 users sent the newest pending join requests.
final class ChatJoinRequestsInfo extends TdObject {
  
  /// **ChatJoinRequestsInfo** *(chatJoinRequestsInfo)* - basic class
  ///
  /// Contains information about pending join requests for a chat.
  ///
  /// * [totalCount]: Total number of pending join requests.
  /// * [userIds]: Identifiers of at most 3 users sent the newest pending join requests.
  const ChatJoinRequestsInfo({
    required this.totalCount,
    required this.userIds,
  });
  
  /// Total number of pending join requests 
  final int totalCount;

  /// Identifiers of at most 3 users sent the newest pending join requests
  final List<int> userIds;
  
  /// Parse from a json
  factory ChatJoinRequestsInfo.fromJson(Map<String, dynamic> json) => ChatJoinRequestsInfo(
    totalCount: json['total_count'],
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "user_ids": userIds.map((i) => i).toList(),
		};
	}

  
  ChatJoinRequestsInfo copyWith({
    int? totalCount,
    List<int>? userIds,
  }) => ChatJoinRequestsInfo(
    totalCount: totalCount ?? this.totalCount,
    userIds: userIds ?? this.userIds,
  );

  static const String objectType = 'chatJoinRequestsInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
