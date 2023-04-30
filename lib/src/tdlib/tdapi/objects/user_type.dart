part of '../tdapi.dart';

/// **UserType** *(userType)* - parent
  ///
  /// Represents the type of a user. The following types are possible: regular users, deleted users and bots.
class UserType extends TdObject {
  
  /// **UserType** *(userType)* - parent
  ///
  /// Represents the type of a user. The following types are possible: regular users, deleted users and bots.
  const UserType();
  
  /// a UserType return type can be :
  /// * [UserTypeRegular]
  /// * [UserTypeDeleted]
  /// * [UserTypeBot]
  /// * [UserTypeUnknown]
  factory UserType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserTypeRegular.constructor:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.constructor:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.constructor:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.constructor:
        return UserTypeUnknown.fromJson(json);
      default:
        return const UserType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  UserType copyWith() => const UserType();

  static const String constructor = 'userType';
  
  @override
  String getConstructor() => constructor;
}


/// **UserTypeRegular** *(userTypeRegular)* - child of UserType
  ///
  /// A regular user.
class UserTypeRegular extends UserType {
  
  /// **UserTypeRegular** *(userTypeRegular)* - child of UserType
  ///
  /// A regular user.
  const UserTypeRegular();
  
  /// Parse from a json
  factory UserTypeRegular.fromJson(Map<String, dynamic> json) => const UserTypeRegular();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserTypeRegular copyWith() => const UserTypeRegular();

  static const String constructor = 'userTypeRegular';
  
  @override
  String getConstructor() => constructor;
}


/// **UserTypeDeleted** *(userTypeDeleted)* - child of UserType
  ///
  /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user.
class UserTypeDeleted extends UserType {
  
  /// **UserTypeDeleted** *(userTypeDeleted)* - child of UserType
  ///
  /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user.
  const UserTypeDeleted();
  
  /// Parse from a json
  factory UserTypeDeleted.fromJson(Map<String, dynamic> json) => const UserTypeDeleted();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserTypeDeleted copyWith() => const UserTypeDeleted();

  static const String constructor = 'userTypeDeleted';
  
  @override
  String getConstructor() => constructor;
}


/// **UserTypeBot** *(userTypeBot)* - child of UserType
  ///
  /// A bot (see https://core.telegram.org/bots).
  ///
  /// * [canJoinGroups]: True, if the bot can be invited to basic group and supergroup chats.
  /// * [canReadAllGroupMessages]: True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages.
  /// * [isInline]: True, if the bot supports inline queries.
  /// * [inlineQueryPlaceholder]: Placeholder for inline queries (displayed on the application input field).
  /// * [needLocation]: True, if the location of the user is expected to be sent with every inline query to this bot.
  /// * [canBeAddedToAttachmentMenu]: True, if the bot can be added to attachment menu.
class UserTypeBot extends UserType {
  
  /// **UserTypeBot** *(userTypeBot)* - child of UserType
  ///
  /// A bot (see https://core.telegram.org/bots).
  ///
  /// * [canJoinGroups]: True, if the bot can be invited to basic group and supergroup chats.
  /// * [canReadAllGroupMessages]: True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages.
  /// * [isInline]: True, if the bot supports inline queries.
  /// * [inlineQueryPlaceholder]: Placeholder for inline queries (displayed on the application input field).
  /// * [needLocation]: True, if the location of the user is expected to be sent with every inline query to this bot.
  /// * [canBeAddedToAttachmentMenu]: True, if the bot can be added to attachment menu.
  const UserTypeBot({
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.needLocation,
    required this.canBeAddedToAttachmentMenu,
  });
  
  /// True, if the bot can be invited to basic group and supergroup chats
  final bool canJoinGroups;

  /// True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;

  /// True, if the bot supports inline queries
  final bool isInline;

  /// Placeholder for inline queries (displayed on the application input field)
  final String inlineQueryPlaceholder;

  /// True, if the location of the user is expected to be sent with every inline query to this bot
  final bool needLocation;

  /// True, if the bot can be added to attachment menu
  final bool canBeAddedToAttachmentMenu;
  
  /// Parse from a json
  factory UserTypeBot.fromJson(Map<String, dynamic> json) => UserTypeBot(
    canJoinGroups: json['can_join_groups'],
    canReadAllGroupMessages: json['can_read_all_group_messages'],
    isInline: json['is_inline'],
    inlineQueryPlaceholder: json['inline_query_placeholder'],
    needLocation: json['need_location'],
    canBeAddedToAttachmentMenu: json['can_be_added_to_attachment_menu'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "can_join_groups": canJoinGroups,
      "can_read_all_group_messages": canReadAllGroupMessages,
      "is_inline": isInline,
      "inline_query_placeholder": inlineQueryPlaceholder,
      "need_location": needLocation,
      "can_be_added_to_attachment_menu": canBeAddedToAttachmentMenu,
    };
  }
  
  @override
  UserTypeBot copyWith({
    bool? canJoinGroups,
    bool? canReadAllGroupMessages,
    bool? isInline,
    String? inlineQueryPlaceholder,
    bool? needLocation,
    bool? canBeAddedToAttachmentMenu,
  }) => UserTypeBot(
    canJoinGroups: canJoinGroups ?? this.canJoinGroups,
    canReadAllGroupMessages: canReadAllGroupMessages ?? this.canReadAllGroupMessages,
    isInline: isInline ?? this.isInline,
    inlineQueryPlaceholder: inlineQueryPlaceholder ?? this.inlineQueryPlaceholder,
    needLocation: needLocation ?? this.needLocation,
    canBeAddedToAttachmentMenu: canBeAddedToAttachmentMenu ?? this.canBeAddedToAttachmentMenu,
  );

  static const String constructor = 'userTypeBot';
  
  @override
  String getConstructor() => constructor;
}


/// **UserTypeUnknown** *(userTypeUnknown)* - child of UserType
  ///
  /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type.
class UserTypeUnknown extends UserType {
  
  /// **UserTypeUnknown** *(userTypeUnknown)* - child of UserType
  ///
  /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type.
  const UserTypeUnknown();
  
  /// Parse from a json
  factory UserTypeUnknown.fromJson(Map<String, dynamic> json) => const UserTypeUnknown();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserTypeUnknown copyWith() => const UserTypeUnknown();

  static const String constructor = 'userTypeUnknown';
  
  @override
  String getConstructor() => constructor;
}
