part of '../tdapi.dart';

/// **GetGroupsInCommon** *(getGroupsInCommon)* - TDLib function
///
/// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date.
///
/// * [userId]: User identifier.
/// * [offsetChatId]: Chat identifier starting from which to return chats; use 0 for the first request.
/// * [limit]: The maximum number of chats to be returned; up to 100.
///
/// [Chats] is returned on completion.
final class GetGroupsInCommon extends TdFunction {
  
  /// **GetGroupsInCommon** *(getGroupsInCommon)* - TDLib function
  ///
  /// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date.
  ///
  /// * [userId]: User identifier.
  /// * [offsetChatId]: Chat identifier starting from which to return chats; use 0 for the first request.
  /// * [limit]: The maximum number of chats to be returned; up to 100.
  ///
  /// [Chats] is returned on completion.
  const GetGroupsInCommon({
    required this.userId,
    required this.offsetChatId,
    required this.limit,
  });
  
  /// User identifier
  final int userId;

  /// Chat identifier starting from which to return chats; use 0 for the first request
  final int offsetChatId;

  /// The maximum number of chats to be returned; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "offset_chat_id": offsetChatId,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetGroupsInCommon copyWith({
    int? userId,
    int? offsetChatId,
    int? limit,
  }) => GetGroupsInCommon(
    userId: userId ?? this.userId,
    offsetChatId: offsetChatId ?? this.offsetChatId,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getGroupsInCommon';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
