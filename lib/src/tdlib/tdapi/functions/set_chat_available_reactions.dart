part of '../tdapi.dart';

/// **SetChatAvailableReactions** *(setChatAvailableReactions)* - TDLib function
///
/// Changes reactions, available in a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right.
///
/// * [chatId]: Identifier of the chat.
/// * [availableReactions]: Reactions available in the chat. All emoji reactions must be active.
///
/// [Ok] is returned on completion.
final class SetChatAvailableReactions extends TdFunction {
  
  /// **SetChatAvailableReactions** *(setChatAvailableReactions)* - TDLib function
  ///
  /// Changes reactions, available in a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [availableReactions]: Reactions available in the chat. All emoji reactions must be active.
  ///
  /// [Ok] is returned on completion.
  const SetChatAvailableReactions({
    required this.chatId,
    required this.availableReactions,
  });
  
  /// Identifier of the chat 
  final int chatId;

  /// Reactions available in the chat. All emoji reactions must be active
  final ChatAvailableReactions availableReactions;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "available_reactions": availableReactions.toJson(),
      "@extra": extra,
		};
	}

  
  SetChatAvailableReactions copyWith({
    int? chatId,
    ChatAvailableReactions? availableReactions,
  }) => SetChatAvailableReactions(
    chatId: chatId ?? this.chatId,
    availableReactions: availableReactions ?? this.availableReactions,
  );

  static const String objectType = 'setChatAvailableReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
