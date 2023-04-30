part of '../tdapi.dart';

/// **ChatList** *(chatList)* - parent
  ///
  /// Describes a list of chats.
class ChatList extends TdObject {
  
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
      case ChatListMain.constructor:
        return ChatListMain.fromJson(json);
      case ChatListArchive.constructor:
        return ChatListArchive.fromJson(json);
      case ChatListFilter.constructor:
        return ChatListFilter.fromJson(json);
      default:
        return const ChatList();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatList copyWith() => const ChatList();

  static const String constructor = 'chatList';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatListMain** *(chatListMain)* - child of ChatList
  ///
  /// A main list of chats.
class ChatListMain extends ChatList {
  
  /// **ChatListMain** *(chatListMain)* - child of ChatList
  ///
  /// A main list of chats.
  const ChatListMain();
  
  /// Parse from a json
  factory ChatListMain.fromJson(Map<String, dynamic> json) => const ChatListMain();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatListMain copyWith() => const ChatListMain();

  static const String constructor = 'chatListMain';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatListArchive** *(chatListArchive)* - child of ChatList
  ///
  /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives.
class ChatListArchive extends ChatList {
  
  /// **ChatListArchive** *(chatListArchive)* - child of ChatList
  ///
  /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives.
  const ChatListArchive();
  
  /// Parse from a json
  factory ChatListArchive.fromJson(Map<String, dynamic> json) => const ChatListArchive();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatListArchive copyWith() => const ChatListArchive();

  static const String constructor = 'chatListArchive';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatListFilter** *(chatListFilter)* - child of ChatList
  ///
  /// A list of chats belonging to a chat filter.
  ///
  /// * [chatFilterId]: Chat filter identifier.
class ChatListFilter extends ChatList {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_filter_id": chatFilterId,
    };
  }
  
  @override
  ChatListFilter copyWith({
    int? chatFilterId,
  }) => ChatListFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
  );

  static const String constructor = 'chatListFilter';
  
  @override
  String getConstructor() => constructor;
}
