part of '../tdapi.dart';

/// **ChatMembersFilter** *(chatMembersFilter)* - parent
  ///
  /// Specifies the kind of chat members to return in searchChatMembers.
class ChatMembersFilter extends TdObject {
  
  /// **ChatMembersFilter** *(chatMembersFilter)* - parent
  ///
  /// Specifies the kind of chat members to return in searchChatMembers.
  const ChatMembersFilter();
  
  /// a ChatMembersFilter return type can be :
  /// * [ChatMembersFilterContacts]
  /// * [ChatMembersFilterAdministrators]
  /// * [ChatMembersFilterMembers]
  /// * [ChatMembersFilterMention]
  /// * [ChatMembersFilterRestricted]
  /// * [ChatMembersFilterBanned]
  /// * [ChatMembersFilterBots]
  factory ChatMembersFilter.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatMembersFilterContacts.constructor:
        return ChatMembersFilterContacts.fromJson(json);
      case ChatMembersFilterAdministrators.constructor:
        return ChatMembersFilterAdministrators.fromJson(json);
      case ChatMembersFilterMembers.constructor:
        return ChatMembersFilterMembers.fromJson(json);
      case ChatMembersFilterMention.constructor:
        return ChatMembersFilterMention.fromJson(json);
      case ChatMembersFilterRestricted.constructor:
        return ChatMembersFilterRestricted.fromJson(json);
      case ChatMembersFilterBanned.constructor:
        return ChatMembersFilterBanned.fromJson(json);
      case ChatMembersFilterBots.constructor:
        return ChatMembersFilterBots.fromJson(json);
      default:
        return const ChatMembersFilter();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatMembersFilter copyWith() => const ChatMembersFilter();

  static const String constructor = 'chatMembersFilter';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatMembersFilterContacts** *(chatMembersFilterContacts)* - child of ChatMembersFilter
  ///
  /// Returns contacts of the user.
class ChatMembersFilterContacts extends ChatMembersFilter {
  
  /// **ChatMembersFilterContacts** *(chatMembersFilterContacts)* - child of ChatMembersFilter
  ///
  /// Returns contacts of the user.
  const ChatMembersFilterContacts();
  
  /// Parse from a json
  factory ChatMembersFilterContacts.fromJson(Map<String, dynamic> json) => const ChatMembersFilterContacts();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatMembersFilterContacts copyWith() => const ChatMembersFilterContacts();

  static const String constructor = 'chatMembersFilterContacts';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatMembersFilterAdministrators** *(chatMembersFilterAdministrators)* - child of ChatMembersFilter
  ///
  /// Returns the owner and administrators.
class ChatMembersFilterAdministrators extends ChatMembersFilter {
  
  /// **ChatMembersFilterAdministrators** *(chatMembersFilterAdministrators)* - child of ChatMembersFilter
  ///
  /// Returns the owner and administrators.
  const ChatMembersFilterAdministrators();
  
  /// Parse from a json
  factory ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json) => const ChatMembersFilterAdministrators();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatMembersFilterAdministrators copyWith() => const ChatMembersFilterAdministrators();

  static const String constructor = 'chatMembersFilterAdministrators';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatMembersFilterMembers** *(chatMembersFilterMembers)* - child of ChatMembersFilter
  ///
  /// Returns all chat members, including restricted chat members.
class ChatMembersFilterMembers extends ChatMembersFilter {
  
  /// **ChatMembersFilterMembers** *(chatMembersFilterMembers)* - child of ChatMembersFilter
  ///
  /// Returns all chat members, including restricted chat members.
  const ChatMembersFilterMembers();
  
  /// Parse from a json
  factory ChatMembersFilterMembers.fromJson(Map<String, dynamic> json) => const ChatMembersFilterMembers();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatMembersFilterMembers copyWith() => const ChatMembersFilterMembers();

  static const String constructor = 'chatMembersFilterMembers';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatMembersFilterMention** *(chatMembersFilterMention)* - child of ChatMembersFilter
  ///
  /// Returns users which can be mentioned in the chat.
  ///
  /// * [messageThreadId]: If non-zero, the identifier of the current message thread.
class ChatMembersFilterMention extends ChatMembersFilter {
  
  /// **ChatMembersFilterMention** *(chatMembersFilterMention)* - child of ChatMembersFilter
  ///
  /// Returns users which can be mentioned in the chat.
  ///
  /// * [messageThreadId]: If non-zero, the identifier of the current message thread.
  const ChatMembersFilterMention({
    required this.messageThreadId,
  });
  
  /// If non-zero, the identifier of the current message thread
  final int messageThreadId;
  
  /// Parse from a json
  factory ChatMembersFilterMention.fromJson(Map<String, dynamic> json) => ChatMembersFilterMention(
    messageThreadId: json['message_thread_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "message_thread_id": messageThreadId,
    };
  }
  
  @override
  ChatMembersFilterMention copyWith({
    int? messageThreadId,
  }) => ChatMembersFilterMention(
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String constructor = 'chatMembersFilterMention';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatMembersFilterRestricted** *(chatMembersFilterRestricted)* - child of ChatMembersFilter
  ///
  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup.
class ChatMembersFilterRestricted extends ChatMembersFilter {
  
  /// **ChatMembersFilterRestricted** *(chatMembersFilterRestricted)* - child of ChatMembersFilter
  ///
  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup.
  const ChatMembersFilterRestricted();
  
  /// Parse from a json
  factory ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json) => const ChatMembersFilterRestricted();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatMembersFilterRestricted copyWith() => const ChatMembersFilterRestricted();

  static const String constructor = 'chatMembersFilterRestricted';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatMembersFilterBanned** *(chatMembersFilterBanned)* - child of ChatMembersFilter
  ///
  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel.
class ChatMembersFilterBanned extends ChatMembersFilter {
  
  /// **ChatMembersFilterBanned** *(chatMembersFilterBanned)* - child of ChatMembersFilter
  ///
  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel.
  const ChatMembersFilterBanned();
  
  /// Parse from a json
  factory ChatMembersFilterBanned.fromJson(Map<String, dynamic> json) => const ChatMembersFilterBanned();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatMembersFilterBanned copyWith() => const ChatMembersFilterBanned();

  static const String constructor = 'chatMembersFilterBanned';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatMembersFilterBots** *(chatMembersFilterBots)* - child of ChatMembersFilter
  ///
  /// Returns bot members of the chat.
class ChatMembersFilterBots extends ChatMembersFilter {
  
  /// **ChatMembersFilterBots** *(chatMembersFilterBots)* - child of ChatMembersFilter
  ///
  /// Returns bot members of the chat.
  const ChatMembersFilterBots();
  
  /// Parse from a json
  factory ChatMembersFilterBots.fromJson(Map<String, dynamic> json) => const ChatMembersFilterBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatMembersFilterBots copyWith() => const ChatMembersFilterBots();

  static const String constructor = 'chatMembersFilterBots';
  
  @override
  String getConstructor() => constructor;
}
