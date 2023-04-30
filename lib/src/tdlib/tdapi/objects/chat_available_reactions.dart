part of '../tdapi.dart';

/// **ChatAvailableReactions** *(chatAvailableReactions)* - parent
  ///
  /// Describes reactions available in the chat.
class ChatAvailableReactions extends TdObject {
  
  /// **ChatAvailableReactions** *(chatAvailableReactions)* - parent
  ///
  /// Describes reactions available in the chat.
  const ChatAvailableReactions();
  
  /// a ChatAvailableReactions return type can be :
  /// * [ChatAvailableReactionsAll]
  /// * [ChatAvailableReactionsSome]
  factory ChatAvailableReactions.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatAvailableReactionsAll.constructor:
        return ChatAvailableReactionsAll.fromJson(json);
      case ChatAvailableReactionsSome.constructor:
        return ChatAvailableReactionsSome.fromJson(json);
      default:
        return const ChatAvailableReactions();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatAvailableReactions copyWith() => const ChatAvailableReactions();

  static const String constructor = 'chatAvailableReactions';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatAvailableReactionsAll** *(chatAvailableReactionsAll)* - child of ChatAvailableReactions
  ///
  /// All reactions are available in the chat.
class ChatAvailableReactionsAll extends ChatAvailableReactions {
  
  /// **ChatAvailableReactionsAll** *(chatAvailableReactionsAll)* - child of ChatAvailableReactions
  ///
  /// All reactions are available in the chat.
  const ChatAvailableReactionsAll();
  
  /// Parse from a json
  factory ChatAvailableReactionsAll.fromJson(Map<String, dynamic> json) => const ChatAvailableReactionsAll();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatAvailableReactionsAll copyWith() => const ChatAvailableReactionsAll();

  static const String constructor = 'chatAvailableReactionsAll';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatAvailableReactionsSome** *(chatAvailableReactionsSome)* - child of ChatAvailableReactions
  ///
  /// Only specific reactions are available in the chat.
  ///
  /// * [reactions]: The list of reactions.
class ChatAvailableReactionsSome extends ChatAvailableReactions {
  
  /// **ChatAvailableReactionsSome** *(chatAvailableReactionsSome)* - child of ChatAvailableReactions
  ///
  /// Only specific reactions are available in the chat.
  ///
  /// * [reactions]: The list of reactions.
  const ChatAvailableReactionsSome({
    required this.reactions,
  });
  
  /// The list of reactions
  final List<ReactionType> reactions;
  
  /// Parse from a json
  factory ChatAvailableReactionsSome.fromJson(Map<String, dynamic> json) => ChatAvailableReactionsSome(
    reactions: List<ReactionType>.from((json['reactions'] ?? []).map((item) => ReactionType.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "reactions": reactions.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  ChatAvailableReactionsSome copyWith({
    List<ReactionType>? reactions,
  }) => ChatAvailableReactionsSome(
    reactions: reactions ?? this.reactions,
  );

  static const String constructor = 'chatAvailableReactionsSome';
  
  @override
  String getConstructor() => constructor;
}
