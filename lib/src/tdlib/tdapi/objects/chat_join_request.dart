part of '../tdapi.dart';

/// **ChatJoinRequest** *(chatJoinRequest)* - basic class
///
/// Describes a user that sent a join request and waits for administrator approval.
///
/// * [userId]: User identifier.
/// * [date]: Point in time (Unix timestamp) when the user sent the join request.
/// * [bio]: A short bio of the user.
final class ChatJoinRequest extends TdObject {
  
  /// **ChatJoinRequest** *(chatJoinRequest)* - basic class
  ///
  /// Describes a user that sent a join request and waits for administrator approval.
  ///
  /// * [userId]: User identifier.
  /// * [date]: Point in time (Unix timestamp) when the user sent the join request.
  /// * [bio]: A short bio of the user.
  const ChatJoinRequest({
    required this.userId,
    required this.date,
    required this.bio,
  });
  
  /// User identifier 
  final int userId;

  /// Point in time (Unix timestamp) when the user sent the join request 
  final int date;

  /// A short bio of the user
  final String bio;
  
  /// Parse from a json
  factory ChatJoinRequest.fromJson(Map<String, dynamic> json) => ChatJoinRequest(
    userId: json['user_id'],
    date: json['date'],
    bio: json['bio'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "date": date,
      "bio": bio,
		};
	}

  
  ChatJoinRequest copyWith({
    int? userId,
    int? date,
    String? bio,
  }) => ChatJoinRequest(
    userId: userId ?? this.userId,
    date: date ?? this.date,
    bio: bio ?? this.bio,
  );

  static const String objectType = 'chatJoinRequest';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
