part of '../tdapi.dart';

/// **TopChatCategory** *(topChatCategory)* - parent
  ///
  /// Represents the categories of chats for which a list of frequently used chats can be retrieved.
class TopChatCategory extends TdObject {
  
  /// **TopChatCategory** *(topChatCategory)* - parent
  ///
  /// Represents the categories of chats for which a list of frequently used chats can be retrieved.
  const TopChatCategory();
  
  /// a TopChatCategory return type can be :
  /// * [TopChatCategoryUsers]
  /// * [TopChatCategoryBots]
  /// * [TopChatCategoryGroups]
  /// * [TopChatCategoryChannels]
  /// * [TopChatCategoryInlineBots]
  /// * [TopChatCategoryCalls]
  /// * [TopChatCategoryForwardChats]
  factory TopChatCategory.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TopChatCategoryUsers.constructor:
        return TopChatCategoryUsers.fromJson(json);
      case TopChatCategoryBots.constructor:
        return TopChatCategoryBots.fromJson(json);
      case TopChatCategoryGroups.constructor:
        return TopChatCategoryGroups.fromJson(json);
      case TopChatCategoryChannels.constructor:
        return TopChatCategoryChannels.fromJson(json);
      case TopChatCategoryInlineBots.constructor:
        return TopChatCategoryInlineBots.fromJson(json);
      case TopChatCategoryCalls.constructor:
        return TopChatCategoryCalls.fromJson(json);
      case TopChatCategoryForwardChats.constructor:
        return TopChatCategoryForwardChats.fromJson(json);
      default:
        return const TopChatCategory();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  TopChatCategory copyWith() => const TopChatCategory();

  static const String constructor = 'topChatCategory';
  
  @override
  String getConstructor() => constructor;
}


/// **TopChatCategoryUsers** *(topChatCategoryUsers)* - child of TopChatCategory
  ///
  /// A category containing frequently used private chats with non-bot users.
class TopChatCategoryUsers extends TopChatCategory {
  
  /// **TopChatCategoryUsers** *(topChatCategoryUsers)* - child of TopChatCategory
  ///
  /// A category containing frequently used private chats with non-bot users.
  const TopChatCategoryUsers();
  
  /// Parse from a json
  factory TopChatCategoryUsers.fromJson(Map<String, dynamic> json) => const TopChatCategoryUsers();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TopChatCategoryUsers copyWith() => const TopChatCategoryUsers();

  static const String constructor = 'topChatCategoryUsers';
  
  @override
  String getConstructor() => constructor;
}


/// **TopChatCategoryBots** *(topChatCategoryBots)* - child of TopChatCategory
  ///
  /// A category containing frequently used private chats with bot users.
class TopChatCategoryBots extends TopChatCategory {
  
  /// **TopChatCategoryBots** *(topChatCategoryBots)* - child of TopChatCategory
  ///
  /// A category containing frequently used private chats with bot users.
  const TopChatCategoryBots();
  
  /// Parse from a json
  factory TopChatCategoryBots.fromJson(Map<String, dynamic> json) => const TopChatCategoryBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TopChatCategoryBots copyWith() => const TopChatCategoryBots();

  static const String constructor = 'topChatCategoryBots';
  
  @override
  String getConstructor() => constructor;
}


/// **TopChatCategoryGroups** *(topChatCategoryGroups)* - child of TopChatCategory
  ///
  /// A category containing frequently used basic groups and supergroups.
class TopChatCategoryGroups extends TopChatCategory {
  
  /// **TopChatCategoryGroups** *(topChatCategoryGroups)* - child of TopChatCategory
  ///
  /// A category containing frequently used basic groups and supergroups.
  const TopChatCategoryGroups();
  
  /// Parse from a json
  factory TopChatCategoryGroups.fromJson(Map<String, dynamic> json) => const TopChatCategoryGroups();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TopChatCategoryGroups copyWith() => const TopChatCategoryGroups();

  static const String constructor = 'topChatCategoryGroups';
  
  @override
  String getConstructor() => constructor;
}


/// **TopChatCategoryChannels** *(topChatCategoryChannels)* - child of TopChatCategory
  ///
  /// A category containing frequently used channels.
class TopChatCategoryChannels extends TopChatCategory {
  
  /// **TopChatCategoryChannels** *(topChatCategoryChannels)* - child of TopChatCategory
  ///
  /// A category containing frequently used channels.
  const TopChatCategoryChannels();
  
  /// Parse from a json
  factory TopChatCategoryChannels.fromJson(Map<String, dynamic> json) => const TopChatCategoryChannels();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TopChatCategoryChannels copyWith() => const TopChatCategoryChannels();

  static const String constructor = 'topChatCategoryChannels';
  
  @override
  String getConstructor() => constructor;
}


/// **TopChatCategoryInlineBots** *(topChatCategoryInlineBots)* - child of TopChatCategory
  ///
  /// A category containing frequently used chats with inline bots sorted by their usage in inline mode.
class TopChatCategoryInlineBots extends TopChatCategory {
  
  /// **TopChatCategoryInlineBots** *(topChatCategoryInlineBots)* - child of TopChatCategory
  ///
  /// A category containing frequently used chats with inline bots sorted by their usage in inline mode.
  const TopChatCategoryInlineBots();
  
  /// Parse from a json
  factory TopChatCategoryInlineBots.fromJson(Map<String, dynamic> json) => const TopChatCategoryInlineBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TopChatCategoryInlineBots copyWith() => const TopChatCategoryInlineBots();

  static const String constructor = 'topChatCategoryInlineBots';
  
  @override
  String getConstructor() => constructor;
}


/// **TopChatCategoryCalls** *(topChatCategoryCalls)* - child of TopChatCategory
  ///
  /// A category containing frequently used chats used for calls.
class TopChatCategoryCalls extends TopChatCategory {
  
  /// **TopChatCategoryCalls** *(topChatCategoryCalls)* - child of TopChatCategory
  ///
  /// A category containing frequently used chats used for calls.
  const TopChatCategoryCalls();
  
  /// Parse from a json
  factory TopChatCategoryCalls.fromJson(Map<String, dynamic> json) => const TopChatCategoryCalls();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TopChatCategoryCalls copyWith() => const TopChatCategoryCalls();

  static const String constructor = 'topChatCategoryCalls';
  
  @override
  String getConstructor() => constructor;
}


/// **TopChatCategoryForwardChats** *(topChatCategoryForwardChats)* - child of TopChatCategory
  ///
  /// A category containing frequently used chats used to forward messages.
class TopChatCategoryForwardChats extends TopChatCategory {
  
  /// **TopChatCategoryForwardChats** *(topChatCategoryForwardChats)* - child of TopChatCategory
  ///
  /// A category containing frequently used chats used to forward messages.
  const TopChatCategoryForwardChats();
  
  /// Parse from a json
  factory TopChatCategoryForwardChats.fromJson(Map<String, dynamic> json) => const TopChatCategoryForwardChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TopChatCategoryForwardChats copyWith() => const TopChatCategoryForwardChats();

  static const String constructor = 'topChatCategoryForwardChats';
  
  @override
  String getConstructor() => constructor;
}
