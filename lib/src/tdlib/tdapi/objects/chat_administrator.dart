part of '../tdapi.dart';

/// **ChatAdministrator** *(chatAdministrator)* - basic class
///
/// Contains information about a chat administrator.
///
/// * [userId]: User identifier of the administrator.
/// * [customTitle]: Custom title of the administrator.
/// * [isOwner]: True, if the user is the owner of the chat.
final class ChatAdministrator extends TdObject {
  
  /// **ChatAdministrator** *(chatAdministrator)* - basic class
  ///
  /// Contains information about a chat administrator.
  ///
  /// * [userId]: User identifier of the administrator.
  /// * [customTitle]: Custom title of the administrator.
  /// * [isOwner]: True, if the user is the owner of the chat.
  const ChatAdministrator({
    required this.userId,
    required this.customTitle,
    required this.isOwner,
  });
  
  /// User identifier of the administrator 
  final int userId;

  /// Custom title of the administrator 
  final String customTitle;

  /// True, if the user is the owner of the chat
  final bool isOwner;
  
  /// Parse from a json
  factory ChatAdministrator.fromJson(Map<String, dynamic> json) => ChatAdministrator(
    userId: json['user_id'],
    customTitle: json['custom_title'],
    isOwner: json['is_owner'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "custom_title": customTitle,
      "is_owner": isOwner,
		};
	}

  
  ChatAdministrator copyWith({
    int? userId,
    String? customTitle,
    bool? isOwner,
  }) => ChatAdministrator(
    userId: userId ?? this.userId,
    customTitle: customTitle ?? this.customTitle,
    isOwner: isOwner ?? this.isOwner,
  );

  static const String objectType = 'chatAdministrator';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
