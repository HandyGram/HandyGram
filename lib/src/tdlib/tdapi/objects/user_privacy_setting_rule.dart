part of '../tdapi.dart';

/// **UserPrivacySettingRule** *(userPrivacySettingRule)* - parent
  ///
  /// Represents a single rule for managing privacy settings.
class UserPrivacySettingRule extends TdObject {
  
  /// **UserPrivacySettingRule** *(userPrivacySettingRule)* - parent
  ///
  /// Represents a single rule for managing privacy settings.
  const UserPrivacySettingRule();
  
  /// a UserPrivacySettingRule return type can be :
  /// * [UserPrivacySettingRuleAllowAll]
  /// * [UserPrivacySettingRuleAllowContacts]
  /// * [UserPrivacySettingRuleAllowUsers]
  /// * [UserPrivacySettingRuleAllowChatMembers]
  /// * [UserPrivacySettingRuleRestrictAll]
  /// * [UserPrivacySettingRuleRestrictContacts]
  /// * [UserPrivacySettingRuleRestrictUsers]
  /// * [UserPrivacySettingRuleRestrictChatMembers]
  factory UserPrivacySettingRule.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserPrivacySettingRuleAllowAll.constructor:
        return UserPrivacySettingRuleAllowAll.fromJson(json);
      case UserPrivacySettingRuleAllowContacts.constructor:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);
      case UserPrivacySettingRuleAllowUsers.constructor:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);
      case UserPrivacySettingRuleAllowChatMembers.constructor:
        return UserPrivacySettingRuleAllowChatMembers.fromJson(json);
      case UserPrivacySettingRuleRestrictAll.constructor:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);
      case UserPrivacySettingRuleRestrictContacts.constructor:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);
      case UserPrivacySettingRuleRestrictUsers.constructor:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);
      case UserPrivacySettingRuleRestrictChatMembers.constructor:
        return UserPrivacySettingRuleRestrictChatMembers.fromJson(json);
      default:
        return const UserPrivacySettingRule();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  UserPrivacySettingRule copyWith() => const UserPrivacySettingRule();

  static const String constructor = 'userPrivacySettingRule';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingRuleAllowAll** *(userPrivacySettingRuleAllowAll)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all users to do something.
class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleAllowAll** *(userPrivacySettingRuleAllowAll)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all users to do something.
  const UserPrivacySettingRuleAllowAll();
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleAllowAll();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingRuleAllowAll copyWith() => const UserPrivacySettingRuleAllowAll();

  static const String constructor = 'userPrivacySettingRuleAllowAll';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingRuleAllowContacts** *(userPrivacySettingRuleAllowContacts)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all of a user's contacts to do something.
class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleAllowContacts** *(userPrivacySettingRuleAllowContacts)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all of a user's contacts to do something.
  const UserPrivacySettingRuleAllowContacts();
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleAllowContacts();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingRuleAllowContacts copyWith() => const UserPrivacySettingRuleAllowContacts();

  static const String constructor = 'userPrivacySettingRuleAllowContacts';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingRuleAllowUsers** *(userPrivacySettingRuleAllowUsers)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow certain specified users to do something.
  ///
  /// * [userIds]: The user identifiers, total number of users in all rules must not exceed 1000.
class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleAllowUsers** *(userPrivacySettingRuleAllowUsers)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow certain specified users to do something.
  ///
  /// * [userIds]: The user identifiers, total number of users in all rules must not exceed 1000.
  const UserPrivacySettingRuleAllowUsers({
    required this.userIds,
  });
  
  /// The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowUsers(
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }
  
  @override
  UserPrivacySettingRuleAllowUsers copyWith({
    List<int>? userIds,
  }) => UserPrivacySettingRuleAllowUsers(
    userIds: userIds ?? this.userIds,
  );

  static const String constructor = 'userPrivacySettingRuleAllowUsers';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingRuleAllowChatMembers** *(userPrivacySettingRuleAllowChatMembers)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all members of certain specified basic groups and supergroups to doing something.
  ///
  /// * [chatIds]: The chat identifiers, total number of chats in all rules must not exceed 20.
class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleAllowChatMembers** *(userPrivacySettingRuleAllowChatMembers)* - child of UserPrivacySettingRule
  ///
  /// A rule to allow all members of certain specified basic groups and supergroups to doing something.
  ///
  /// * [chatIds]: The chat identifiers, total number of chats in all rules must not exceed 20.
  const UserPrivacySettingRuleAllowChatMembers({
    required this.chatIds,
  });
  
  /// The chat identifiers, total number of chats in all rules must not exceed 20
  final List<int> chatIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowChatMembers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowChatMembers(
    chatIds: List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_ids": chatIds.map((i) => i).toList(),
    };
  }
  
  @override
  UserPrivacySettingRuleAllowChatMembers copyWith({
    List<int>? chatIds,
  }) => UserPrivacySettingRuleAllowChatMembers(
    chatIds: chatIds ?? this.chatIds,
  );

  static const String constructor = 'userPrivacySettingRuleAllowChatMembers';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingRuleRestrictAll** *(userPrivacySettingRuleRestrictAll)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all users from doing something.
class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleRestrictAll** *(userPrivacySettingRuleRestrictAll)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all users from doing something.
  const UserPrivacySettingRuleRestrictAll();
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleRestrictAll();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictAll copyWith() => const UserPrivacySettingRuleRestrictAll();

  static const String constructor = 'userPrivacySettingRuleRestrictAll';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingRuleRestrictContacts** *(userPrivacySettingRuleRestrictContacts)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all contacts of a user from doing something.
class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleRestrictContacts** *(userPrivacySettingRuleRestrictContacts)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all contacts of a user from doing something.
  const UserPrivacySettingRuleRestrictContacts();
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleRestrictContacts();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictContacts copyWith() => const UserPrivacySettingRuleRestrictContacts();

  static const String constructor = 'userPrivacySettingRuleRestrictContacts';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingRuleRestrictUsers** *(userPrivacySettingRuleRestrictUsers)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all specified users from doing something.
  ///
  /// * [userIds]: The user identifiers, total number of users in all rules must not exceed 1000.
class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleRestrictUsers** *(userPrivacySettingRuleRestrictUsers)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all specified users from doing something.
  ///
  /// * [userIds]: The user identifiers, total number of users in all rules must not exceed 1000.
  const UserPrivacySettingRuleRestrictUsers({
    required this.userIds,
  });
  
  /// The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictUsers(
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictUsers copyWith({
    List<int>? userIds,
  }) => UserPrivacySettingRuleRestrictUsers(
    userIds: userIds ?? this.userIds,
  );

  static const String constructor = 'userPrivacySettingRuleRestrictUsers';
  
  @override
  String getConstructor() => constructor;
}


/// **UserPrivacySettingRuleRestrictChatMembers** *(userPrivacySettingRuleRestrictChatMembers)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all members of specified basic groups and supergroups from doing something.
  ///
  /// * [chatIds]: The chat identifiers, total number of chats in all rules must not exceed 20.
class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {
  
  /// **UserPrivacySettingRuleRestrictChatMembers** *(userPrivacySettingRuleRestrictChatMembers)* - child of UserPrivacySettingRule
  ///
  /// A rule to restrict all members of specified basic groups and supergroups from doing something.
  ///
  /// * [chatIds]: The chat identifiers, total number of chats in all rules must not exceed 20.
  const UserPrivacySettingRuleRestrictChatMembers({
    required this.chatIds,
  });
  
  /// The chat identifiers, total number of chats in all rules must not exceed 20
  final List<int> chatIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictChatMembers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictChatMembers(
    chatIds: List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_ids": chatIds.map((i) => i).toList(),
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictChatMembers copyWith({
    List<int>? chatIds,
  }) => UserPrivacySettingRuleRestrictChatMembers(
    chatIds: chatIds ?? this.chatIds,
  );

  static const String constructor = 'userPrivacySettingRuleRestrictChatMembers';
  
  @override
  String getConstructor() => constructor;
}
