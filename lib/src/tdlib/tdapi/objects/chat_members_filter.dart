part of '../tdapi.dart';

/// **ChatMembersFilter** *(chatMembersFilter)* - parent
///
/// Specifies the kind of chat members to return in searchChatMembers.
sealed class ChatMembersFilter extends TdObject {
  
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
      case ChatMembersFilterContacts.objectType:
        return ChatMembersFilterContacts.fromJson(json);
      case ChatMembersFilterAdministrators.objectType:
        return ChatMembersFilterAdministrators.fromJson(json);
      case ChatMembersFilterMembers.objectType:
        return ChatMembersFilterMembers.fromJson(json);
      case ChatMembersFilterMention.objectType:
        return ChatMembersFilterMention.fromJson(json);
      case ChatMembersFilterRestricted.objectType:
        return ChatMembersFilterRestricted.fromJson(json);
      case ChatMembersFilterBanned.objectType:
        return ChatMembersFilterBanned.fromJson(json);
      case ChatMembersFilterBots.objectType:
        return ChatMembersFilterBots.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatMembersFilter)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatMembersFilter copyWith();

  static const String objectType = 'chatMembersFilter';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMembersFilterContacts** *(chatMembersFilterContacts)* - child of ChatMembersFilter
///
/// Returns contacts of the user.
final class ChatMembersFilterContacts extends ChatMembersFilter {
  
  /// **ChatMembersFilterContacts** *(chatMembersFilterContacts)* - child of ChatMembersFilter
  ///
  /// Returns contacts of the user.
  const ChatMembersFilterContacts();
  
  /// Parse from a json
  factory ChatMembersFilterContacts.fromJson(Map<String, dynamic> json) => const ChatMembersFilterContacts();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatMembersFilterContacts copyWith() => const ChatMembersFilterContacts();

  static const String objectType = 'chatMembersFilterContacts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMembersFilterAdministrators** *(chatMembersFilterAdministrators)* - child of ChatMembersFilter
///
/// Returns the owner and administrators.
final class ChatMembersFilterAdministrators extends ChatMembersFilter {
  
  /// **ChatMembersFilterAdministrators** *(chatMembersFilterAdministrators)* - child of ChatMembersFilter
  ///
  /// Returns the owner and administrators.
  const ChatMembersFilterAdministrators();
  
  /// Parse from a json
  factory ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json) => const ChatMembersFilterAdministrators();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatMembersFilterAdministrators copyWith() => const ChatMembersFilterAdministrators();

  static const String objectType = 'chatMembersFilterAdministrators';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMembersFilterMembers** *(chatMembersFilterMembers)* - child of ChatMembersFilter
///
/// Returns all chat members, including restricted chat members.
final class ChatMembersFilterMembers extends ChatMembersFilter {
  
  /// **ChatMembersFilterMembers** *(chatMembersFilterMembers)* - child of ChatMembersFilter
  ///
  /// Returns all chat members, including restricted chat members.
  const ChatMembersFilterMembers();
  
  /// Parse from a json
  factory ChatMembersFilterMembers.fromJson(Map<String, dynamic> json) => const ChatMembersFilterMembers();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatMembersFilterMembers copyWith() => const ChatMembersFilterMembers();

  static const String objectType = 'chatMembersFilterMembers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMembersFilterMention** *(chatMembersFilterMention)* - child of ChatMembersFilter
///
/// Returns users which can be mentioned in the chat.
///
/// * [messageThreadId]: If non-zero, the identifier of the current message thread.
final class ChatMembersFilterMention extends ChatMembersFilter {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message_thread_id": messageThreadId,
		};
	}

  
  @override
  ChatMembersFilterMention copyWith({
    int? messageThreadId,
  }) => ChatMembersFilterMention(
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String objectType = 'chatMembersFilterMention';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMembersFilterRestricted** *(chatMembersFilterRestricted)* - child of ChatMembersFilter
///
/// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup.
final class ChatMembersFilterRestricted extends ChatMembersFilter {
  
  /// **ChatMembersFilterRestricted** *(chatMembersFilterRestricted)* - child of ChatMembersFilter
  ///
  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup.
  const ChatMembersFilterRestricted();
  
  /// Parse from a json
  factory ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json) => const ChatMembersFilterRestricted();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatMembersFilterRestricted copyWith() => const ChatMembersFilterRestricted();

  static const String objectType = 'chatMembersFilterRestricted';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMembersFilterBanned** *(chatMembersFilterBanned)* - child of ChatMembersFilter
///
/// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel.
final class ChatMembersFilterBanned extends ChatMembersFilter {
  
  /// **ChatMembersFilterBanned** *(chatMembersFilterBanned)* - child of ChatMembersFilter
  ///
  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel.
  const ChatMembersFilterBanned();
  
  /// Parse from a json
  factory ChatMembersFilterBanned.fromJson(Map<String, dynamic> json) => const ChatMembersFilterBanned();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatMembersFilterBanned copyWith() => const ChatMembersFilterBanned();

  static const String objectType = 'chatMembersFilterBanned';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatMembersFilterBots** *(chatMembersFilterBots)* - child of ChatMembersFilter
///
/// Returns bot members of the chat.
final class ChatMembersFilterBots extends ChatMembersFilter {
  
  /// **ChatMembersFilterBots** *(chatMembersFilterBots)* - child of ChatMembersFilter
  ///
  /// Returns bot members of the chat.
  const ChatMembersFilterBots();
  
  /// Parse from a json
  factory ChatMembersFilterBots.fromJson(Map<String, dynamic> json) => const ChatMembersFilterBots();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatMembersFilterBots copyWith() => const ChatMembersFilterBots();

  static const String objectType = 'chatMembersFilterBots';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
