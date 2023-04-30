part of '../tdapi.dart';

/// **BotCommandScope** *(botCommandScope)* - parent
  ///
  /// Represents the scope to which bot commands are relevant.
class BotCommandScope extends TdObject {
  
  /// **BotCommandScope** *(botCommandScope)* - parent
  ///
  /// Represents the scope to which bot commands are relevant.
  const BotCommandScope();
  
  /// a BotCommandScope return type can be :
  /// * [BotCommandScopeDefault]
  /// * [BotCommandScopeAllPrivateChats]
  /// * [BotCommandScopeAllGroupChats]
  /// * [BotCommandScopeAllChatAdministrators]
  /// * [BotCommandScopeChat]
  /// * [BotCommandScopeChatAdministrators]
  /// * [BotCommandScopeChatMember]
  factory BotCommandScope.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BotCommandScopeDefault.constructor:
        return BotCommandScopeDefault.fromJson(json);
      case BotCommandScopeAllPrivateChats.constructor:
        return BotCommandScopeAllPrivateChats.fromJson(json);
      case BotCommandScopeAllGroupChats.constructor:
        return BotCommandScopeAllGroupChats.fromJson(json);
      case BotCommandScopeAllChatAdministrators.constructor:
        return BotCommandScopeAllChatAdministrators.fromJson(json);
      case BotCommandScopeChat.constructor:
        return BotCommandScopeChat.fromJson(json);
      case BotCommandScopeChatAdministrators.constructor:
        return BotCommandScopeChatAdministrators.fromJson(json);
      case BotCommandScopeChatMember.constructor:
        return BotCommandScopeChatMember.fromJson(json);
      default:
        return const BotCommandScope();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  BotCommandScope copyWith() => const BotCommandScope();

  static const String constructor = 'botCommandScope';
  
  @override
  String getConstructor() => constructor;
}


/// **BotCommandScopeDefault** *(botCommandScopeDefault)* - child of BotCommandScope
  ///
  /// A scope covering all users.
class BotCommandScopeDefault extends BotCommandScope {
  
  /// **BotCommandScopeDefault** *(botCommandScopeDefault)* - child of BotCommandScope
  ///
  /// A scope covering all users.
  const BotCommandScopeDefault();
  
  /// Parse from a json
  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) => const BotCommandScopeDefault();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  BotCommandScopeDefault copyWith() => const BotCommandScopeDefault();

  static const String constructor = 'botCommandScopeDefault';
  
  @override
  String getConstructor() => constructor;
}


/// **BotCommandScopeAllPrivateChats** *(botCommandScopeAllPrivateChats)* - child of BotCommandScope
  ///
  /// A scope covering all private chats.
class BotCommandScopeAllPrivateChats extends BotCommandScope {
  
  /// **BotCommandScopeAllPrivateChats** *(botCommandScopeAllPrivateChats)* - child of BotCommandScope
  ///
  /// A scope covering all private chats.
  const BotCommandScopeAllPrivateChats();
  
  /// Parse from a json
  factory BotCommandScopeAllPrivateChats.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllPrivateChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  BotCommandScopeAllPrivateChats copyWith() => const BotCommandScopeAllPrivateChats();

  static const String constructor = 'botCommandScopeAllPrivateChats';
  
  @override
  String getConstructor() => constructor;
}


/// **BotCommandScopeAllGroupChats** *(botCommandScopeAllGroupChats)* - child of BotCommandScope
  ///
  /// A scope covering all group and supergroup chats.
class BotCommandScopeAllGroupChats extends BotCommandScope {
  
  /// **BotCommandScopeAllGroupChats** *(botCommandScopeAllGroupChats)* - child of BotCommandScope
  ///
  /// A scope covering all group and supergroup chats.
  const BotCommandScopeAllGroupChats();
  
  /// Parse from a json
  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllGroupChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  BotCommandScopeAllGroupChats copyWith() => const BotCommandScopeAllGroupChats();

  static const String constructor = 'botCommandScopeAllGroupChats';
  
  @override
  String getConstructor() => constructor;
}


/// **BotCommandScopeAllChatAdministrators** *(botCommandScopeAllChatAdministrators)* - child of BotCommandScope
  ///
  /// A scope covering all group and supergroup chat administrators.
class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  
  /// **BotCommandScopeAllChatAdministrators** *(botCommandScopeAllChatAdministrators)* - child of BotCommandScope
  ///
  /// A scope covering all group and supergroup chat administrators.
  const BotCommandScopeAllChatAdministrators();
  
  /// Parse from a json
  factory BotCommandScopeAllChatAdministrators.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllChatAdministrators();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  BotCommandScopeAllChatAdministrators copyWith() => const BotCommandScopeAllChatAdministrators();

  static const String constructor = 'botCommandScopeAllChatAdministrators';
  
  @override
  String getConstructor() => constructor;
}


/// **BotCommandScopeChat** *(botCommandScopeChat)* - child of BotCommandScope
  ///
  /// A scope covering all members of a chat.
  ///
  /// * [chatId]: Chat identifier.
class BotCommandScopeChat extends BotCommandScope {
  
  /// **BotCommandScopeChat** *(botCommandScopeChat)* - child of BotCommandScope
  ///
  /// A scope covering all members of a chat.
  ///
  /// * [chatId]: Chat identifier.
  const BotCommandScopeChat({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  /// Parse from a json
  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) => BotCommandScopeChat(
    chatId: json['chat_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
    };
  }
  
  @override
  BotCommandScopeChat copyWith({
    int? chatId,
  }) => BotCommandScopeChat(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'botCommandScopeChat';
  
  @override
  String getConstructor() => constructor;
}


/// **BotCommandScopeChatAdministrators** *(botCommandScopeChatAdministrators)* - child of BotCommandScope
  ///
  /// A scope covering all administrators of a chat.
  ///
  /// * [chatId]: Chat identifier.
class BotCommandScopeChatAdministrators extends BotCommandScope {
  
  /// **BotCommandScopeChatAdministrators** *(botCommandScopeChatAdministrators)* - child of BotCommandScope
  ///
  /// A scope covering all administrators of a chat.
  ///
  /// * [chatId]: Chat identifier.
  const BotCommandScopeChatAdministrators({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  /// Parse from a json
  factory BotCommandScopeChatAdministrators.fromJson(Map<String, dynamic> json) => BotCommandScopeChatAdministrators(
    chatId: json['chat_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
    };
  }
  
  @override
  BotCommandScopeChatAdministrators copyWith({
    int? chatId,
  }) => BotCommandScopeChatAdministrators(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'botCommandScopeChatAdministrators';
  
  @override
  String getConstructor() => constructor;
}


/// **BotCommandScopeChatMember** *(botCommandScopeChatMember)* - child of BotCommandScope
  ///
  /// A scope covering a member of a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [userId]: User identifier.
class BotCommandScopeChatMember extends BotCommandScope {
  
  /// **BotCommandScopeChatMember** *(botCommandScopeChatMember)* - child of BotCommandScope
  ///
  /// A scope covering a member of a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [userId]: User identifier.
  const BotCommandScopeChatMember({
    required this.chatId,
    required this.userId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// User identifier
  final int userId;
  
  /// Parse from a json
  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) => BotCommandScopeChatMember(
    chatId: json['chat_id'],
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "user_id": userId,
    };
  }
  
  @override
  BotCommandScopeChatMember copyWith({
    int? chatId,
    int? userId,
  }) => BotCommandScopeChatMember(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
  );

  static const String constructor = 'botCommandScopeChatMember';
  
  @override
  String getConstructor() => constructor;
}
