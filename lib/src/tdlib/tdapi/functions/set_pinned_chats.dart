part of '../tdapi.dart';

/// **SetPinnedChats** *(setPinnedChats)* - TDLib function
///
/// Changes the order of pinned chats.
///
/// * [chatList]: Chat list in which to change the order of pinned chats.
/// * [chatIds]: The new list of pinned chats.
///
/// [Ok] is returned on completion.
final class SetPinnedChats extends TdFunction {
  
  /// **SetPinnedChats** *(setPinnedChats)* - TDLib function
  ///
  /// Changes the order of pinned chats.
  ///
  /// * [chatList]: Chat list in which to change the order of pinned chats.
  /// * [chatIds]: The new list of pinned chats.
  ///
  /// [Ok] is returned on completion.
  const SetPinnedChats({
    required this.chatList,
    required this.chatIds,
  });
  
  /// Chat list in which to change the order of pinned chats 
  final ChatList chatList;

  /// The new list of pinned chats
  final List<int> chatIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_list": chatList.toJson(),
      "chat_ids": chatIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  SetPinnedChats copyWith({
    ChatList? chatList,
    List<int>? chatIds,
  }) => SetPinnedChats(
    chatList: chatList ?? this.chatList,
    chatIds: chatIds ?? this.chatIds,
  );

  static const String objectType = 'setPinnedChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
