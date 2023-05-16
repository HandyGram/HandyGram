part of '../tdapi.dart';

/// **ChatStatisticsInviterInfo** *(chatStatisticsInviterInfo)* - basic class
///
/// Contains statistics about number of new members invited by a user.
///
/// * [userId]: User identifier.
/// * [addedMemberCount]: Number of new members invited by the user.
final class ChatStatisticsInviterInfo extends TdObject {
  
  /// **ChatStatisticsInviterInfo** *(chatStatisticsInviterInfo)* - basic class
  ///
  /// Contains statistics about number of new members invited by a user.
  ///
  /// * [userId]: User identifier.
  /// * [addedMemberCount]: Number of new members invited by the user.
  const ChatStatisticsInviterInfo({
    required this.userId,
    required this.addedMemberCount,
  });
  
  /// User identifier
  final int userId;

  /// Number of new members invited by the user
  final int addedMemberCount;
  
  /// Parse from a json
  factory ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsInviterInfo(
    userId: json['user_id'],
    addedMemberCount: json['added_member_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "added_member_count": addedMemberCount,
		};
	}

  
  ChatStatisticsInviterInfo copyWith({
    int? userId,
    int? addedMemberCount,
  }) => ChatStatisticsInviterInfo(
    userId: userId ?? this.userId,
    addedMemberCount: addedMemberCount ?? this.addedMemberCount,
  );

  static const String objectType = 'chatStatisticsInviterInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
