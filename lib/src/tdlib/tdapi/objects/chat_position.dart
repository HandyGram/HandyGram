part of '../tdapi.dart';

/// **ChatPosition** *(chatPosition)* - basic class
///
/// Describes a position of a chat in a chat list.
///
/// * [list]: The chat list.
/// * [order]: A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order.
/// * [isPinned]: True, if the chat is pinned in the chat list.
/// * [source]: Source of the chat in the chat list; may be null *(optional)*.
final class ChatPosition extends TdObject {
  
  /// **ChatPosition** *(chatPosition)* - basic class
  ///
  /// Describes a position of a chat in a chat list.
  ///
  /// * [list]: The chat list.
  /// * [order]: A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order.
  /// * [isPinned]: True, if the chat is pinned in the chat list.
  /// * [source]: Source of the chat in the chat list; may be null *(optional)*.
  const ChatPosition({
    required this.list,
    required this.order,
    required this.isPinned,
    this.source,
  });
  
  /// The chat list
  final ChatList list;

  /// A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order
  final int order;

  /// True, if the chat is pinned in the chat list
  final bool isPinned;

  /// Source of the chat in the chat list; may be null
  final ChatSource? source;
  
  /// Parse from a json
  factory ChatPosition.fromJson(Map<String, dynamic> json) => ChatPosition(
    list: ChatList.fromJson(json['list']),
    order: int.parse(json['order']),
    isPinned: json['is_pinned'],
    source: json['source'] == null ? null : ChatSource.fromJson(json['source']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "list": list.toJson(),
      "order": order,
      "is_pinned": isPinned,
      "source": source?.toJson(),
		};
	}

  
  ChatPosition copyWith({
    ChatList? list,
    int? order,
    bool? isPinned,
    ChatSource? source,
  }) => ChatPosition(
    list: list ?? this.list,
    order: order ?? this.order,
    isPinned: isPinned ?? this.isPinned,
    source: source ?? this.source,
  );

  static const String objectType = 'chatPosition';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
