part of '../tdapi.dart';

/// **SetPinnedForumTopics** *(setPinnedForumTopics)* - TDLib function
///
/// Changes the order of pinned forum topics.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadIds]: The new list of pinned forum topics.
///
/// [Ok] is returned on completion.
final class SetPinnedForumTopics extends TdFunction {
  
  /// **SetPinnedForumTopics** *(setPinnedForumTopics)* - TDLib function
  ///
  /// Changes the order of pinned forum topics.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadIds]: The new list of pinned forum topics.
  ///
  /// [Ok] is returned on completion.
  const SetPinnedForumTopics({
    required this.chatId,
    required this.messageThreadIds,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The new list of pinned forum topics
  final List<int> messageThreadIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_ids": messageThreadIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  SetPinnedForumTopics copyWith({
    int? chatId,
    List<int>? messageThreadIds,
  }) => SetPinnedForumTopics(
    chatId: chatId ?? this.chatId,
    messageThreadIds: messageThreadIds ?? this.messageThreadIds,
  );

  static const String objectType = 'setPinnedForumTopics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
