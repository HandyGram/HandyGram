part of '../tdapi.dart';

/// **ChatType** *(chatType)* - parent
  ///
  /// Describes the type of a chat.
class ChatType extends TdObject {
  
  /// **ChatType** *(chatType)* - parent
  ///
  /// Describes the type of a chat.
  const ChatType();
  
  /// a ChatType return type can be :
  /// * [ChatTypePrivate]
  /// * [ChatTypeBasicGroup]
  /// * [ChatTypeSupergroup]
  /// * [ChatTypeSecret]
  factory ChatType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatTypePrivate.constructor:
        return ChatTypePrivate.fromJson(json);
      case ChatTypeBasicGroup.constructor:
        return ChatTypeBasicGroup.fromJson(json);
      case ChatTypeSupergroup.constructor:
        return ChatTypeSupergroup.fromJson(json);
      case ChatTypeSecret.constructor:
        return ChatTypeSecret.fromJson(json);
      default:
        return const ChatType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatType copyWith() => const ChatType();

  static const String constructor = 'chatType';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatTypePrivate** *(chatTypePrivate)* - child of ChatType
  ///
  /// An ordinary chat with a user.
  ///
  /// * [userId]: User identifier.
class ChatTypePrivate extends ChatType {
  
  /// **ChatTypePrivate** *(chatTypePrivate)* - child of ChatType
  ///
  /// An ordinary chat with a user.
  ///
  /// * [userId]: User identifier.
  const ChatTypePrivate({
    required this.userId,
  });
  
  /// User identifier
  final int userId;
  
  /// Parse from a json
  factory ChatTypePrivate.fromJson(Map<String, dynamic> json) => ChatTypePrivate(
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
    };
  }
  
  @override
  ChatTypePrivate copyWith({
    int? userId,
  }) => ChatTypePrivate(
    userId: userId ?? this.userId,
  );

  static const String constructor = 'chatTypePrivate';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatTypeBasicGroup** *(chatTypeBasicGroup)* - child of ChatType
  ///
  /// A basic group (a chat with 0-200 other users).
  ///
  /// * [basicGroupId]: Basic group identifier.
class ChatTypeBasicGroup extends ChatType {
  
  /// **ChatTypeBasicGroup** *(chatTypeBasicGroup)* - child of ChatType
  ///
  /// A basic group (a chat with 0-200 other users).
  ///
  /// * [basicGroupId]: Basic group identifier.
  const ChatTypeBasicGroup({
    required this.basicGroupId,
  });
  
  /// Basic group identifier
  final int basicGroupId;
  
  /// Parse from a json
  factory ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) => ChatTypeBasicGroup(
    basicGroupId: json['basic_group_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "basic_group_id": basicGroupId,
    };
  }
  
  @override
  ChatTypeBasicGroup copyWith({
    int? basicGroupId,
  }) => ChatTypeBasicGroup(
    basicGroupId: basicGroupId ?? this.basicGroupId,
  );

  static const String constructor = 'chatTypeBasicGroup';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatTypeSupergroup** *(chatTypeSupergroup)* - child of ChatType
  ///
  /// A supergroup or channel (with unlimited members).
  ///
  /// * [supergroupId]: Supergroup or channel identifier.
  /// * [isChannel]: True, if the supergroup is a channel.
class ChatTypeSupergroup extends ChatType {
  
  /// **ChatTypeSupergroup** *(chatTypeSupergroup)* - child of ChatType
  ///
  /// A supergroup or channel (with unlimited members).
  ///
  /// * [supergroupId]: Supergroup or channel identifier.
  /// * [isChannel]: True, if the supergroup is a channel.
  const ChatTypeSupergroup({
    required this.supergroupId,
    required this.isChannel,
  });
  
  /// Supergroup or channel identifier 
  final int supergroupId;

  /// True, if the supergroup is a channel
  final bool isChannel;
  
  /// Parse from a json
  factory ChatTypeSupergroup.fromJson(Map<String, dynamic> json) => ChatTypeSupergroup(
    supergroupId: json['supergroup_id'],
    isChannel: json['is_channel'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "supergroup_id": supergroupId,
      "is_channel": isChannel,
    };
  }
  
  @override
  ChatTypeSupergroup copyWith({
    int? supergroupId,
    bool? isChannel,
  }) => ChatTypeSupergroup(
    supergroupId: supergroupId ?? this.supergroupId,
    isChannel: isChannel ?? this.isChannel,
  );

  static const String constructor = 'chatTypeSupergroup';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatTypeSecret** *(chatTypeSecret)* - child of ChatType
  ///
  /// A secret chat with a user.
  ///
  /// * [secretChatId]: Secret chat identifier.
  /// * [userId]: User identifier of the secret chat peer.
class ChatTypeSecret extends ChatType {
  
  /// **ChatTypeSecret** *(chatTypeSecret)* - child of ChatType
  ///
  /// A secret chat with a user.
  ///
  /// * [secretChatId]: Secret chat identifier.
  /// * [userId]: User identifier of the secret chat peer.
  const ChatTypeSecret({
    required this.secretChatId,
    required this.userId,
  });
  
  /// Secret chat identifier 
  final int secretChatId;

  /// User identifier of the secret chat peer
  final int userId;
  
  /// Parse from a json
  factory ChatTypeSecret.fromJson(Map<String, dynamic> json) => ChatTypeSecret(
    secretChatId: json['secret_chat_id'],
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "secret_chat_id": secretChatId,
      "user_id": userId,
    };
  }
  
  @override
  ChatTypeSecret copyWith({
    int? secretChatId,
    int? userId,
  }) => ChatTypeSecret(
    secretChatId: secretChatId ?? this.secretChatId,
    userId: userId ?? this.userId,
  );

  static const String constructor = 'chatTypeSecret';
  
  @override
  String getConstructor() => constructor;
}
