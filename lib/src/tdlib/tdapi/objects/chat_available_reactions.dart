part of '../tdapi.dart';

/// **ChatAvailableReactions** *(chatAvailableReactions)* - parent
///
/// Describes reactions available in the chat.
sealed class ChatAvailableReactions extends TdObject {
  
  /// **ChatAvailableReactions** *(chatAvailableReactions)* - parent
  ///
  /// Describes reactions available in the chat.
  const ChatAvailableReactions();
  
  /// a ChatAvailableReactions return type can be :
  /// * [ChatAvailableReactionsAll]
  /// * [ChatAvailableReactionsSome]
  factory ChatAvailableReactions.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatAvailableReactionsAll.objectType:
        return ChatAvailableReactionsAll.fromJson(json);
      case ChatAvailableReactionsSome.objectType:
        return ChatAvailableReactionsSome.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatAvailableReactions)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatAvailableReactions copyWith();

  static const String objectType = 'chatAvailableReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatAvailableReactionsAll** *(chatAvailableReactionsAll)* - child of ChatAvailableReactions
///
/// All reactions are available in the chat.
final class ChatAvailableReactionsAll extends ChatAvailableReactions {
  
  /// **ChatAvailableReactionsAll** *(chatAvailableReactionsAll)* - child of ChatAvailableReactions
  ///
  /// All reactions are available in the chat.
  const ChatAvailableReactionsAll();
  
  /// Parse from a json
  factory ChatAvailableReactionsAll.fromJson(Map<String, dynamic> json) => const ChatAvailableReactionsAll();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatAvailableReactionsAll copyWith() => const ChatAvailableReactionsAll();

  static const String objectType = 'chatAvailableReactionsAll';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatAvailableReactionsSome** *(chatAvailableReactionsSome)* - child of ChatAvailableReactions
///
/// Only specific reactions are available in the chat.
///
/// * [reactions]: The list of reactions.
final class ChatAvailableReactionsSome extends ChatAvailableReactions {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "reactions": reactions.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  ChatAvailableReactionsSome copyWith({
    List<ReactionType>? reactions,
  }) => ChatAvailableReactionsSome(
    reactions: reactions ?? this.reactions,
  );

  static const String objectType = 'chatAvailableReactionsSome';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
