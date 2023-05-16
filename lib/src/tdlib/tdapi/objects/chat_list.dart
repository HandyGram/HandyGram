part of '../tdapi.dart';

/// **ChatList** *(chatList)* - parent
///
/// Describes a list of chats.
sealed class ChatList extends TdObject {
  
  /// **ChatList** *(chatList)* - parent
  ///
  /// Describes a list of chats.
  const ChatList();
  
  /// a ChatList return type can be :
  /// * [ChatListMain]
  /// * [ChatListArchive]
  /// * [ChatListFilter]
  factory ChatList.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatListMain.objectType:
        return ChatListMain.fromJson(json);
      case ChatListArchive.objectType:
        return ChatListArchive.fromJson(json);
      case ChatListFilter.objectType:
        return ChatListFilter.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatList)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatList copyWith();

  static const String objectType = 'chatList';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatListMain** *(chatListMain)* - child of ChatList
///
/// A main list of chats.
final class ChatListMain extends ChatList {
  
  /// **ChatListMain** *(chatListMain)* - child of ChatList
  ///
  /// A main list of chats.
  const ChatListMain();
  
  /// Parse from a json
  factory ChatListMain.fromJson(Map<String, dynamic> json) => const ChatListMain();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatListMain copyWith() => const ChatListMain();

  static const String objectType = 'chatListMain';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatListArchive** *(chatListArchive)* - child of ChatList
///
/// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives.
final class ChatListArchive extends ChatList {
  
  /// **ChatListArchive** *(chatListArchive)* - child of ChatList
  ///
  /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives.
  const ChatListArchive();
  
  /// Parse from a json
  factory ChatListArchive.fromJson(Map<String, dynamic> json) => const ChatListArchive();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatListArchive copyWith() => const ChatListArchive();

  static const String objectType = 'chatListArchive';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatListFilter** *(chatListFilter)* - child of ChatList
///
/// A list of chats belonging to a chat filter.
///
/// * [chatFilterId]: Chat filter identifier.
final class ChatListFilter extends ChatList {
  
  /// **ChatListFilter** *(chatListFilter)* - child of ChatList
  ///
  /// A list of chats belonging to a chat filter.
  ///
  /// * [chatFilterId]: Chat filter identifier.
  const ChatListFilter({
    required this.chatFilterId,
  });
  
  /// Chat filter identifier
  final int chatFilterId;
  
  /// Parse from a json
  factory ChatListFilter.fromJson(Map<String, dynamic> json) => ChatListFilter(
    chatFilterId: json['chat_filter_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_filter_id": chatFilterId,
		};
	}

  
  @override
  ChatListFilter copyWith({
    int? chatFilterId,
  }) => ChatListFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
  );

  static const String objectType = 'chatListFilter';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
