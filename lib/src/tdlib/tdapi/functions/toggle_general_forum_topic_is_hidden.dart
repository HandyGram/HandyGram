part of '../tdapi.dart';

/// **ToggleGeneralForumTopicIsHidden** *(toggleGeneralForumTopicIsHidden)* - TDLib function
///
/// Toggles whether a General topic is hidden in a forum supergroup chat; requires can_manage_topics administrator right in the supergroup.
///
/// * [chatId]: Identifier of the chat.
/// * [isHidden]: Pass true to hide and close the General topic; pass false to unhide it.
///
/// [Ok] is returned on completion.
final class ToggleGeneralForumTopicIsHidden extends TdFunction {
  
  /// **ToggleGeneralForumTopicIsHidden** *(toggleGeneralForumTopicIsHidden)* - TDLib function
  ///
  /// Toggles whether a General topic is hidden in a forum supergroup chat; requires can_manage_topics administrator right in the supergroup.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [isHidden]: Pass true to hide and close the General topic; pass false to unhide it.
  ///
  /// [Ok] is returned on completion.
  const ToggleGeneralForumTopicIsHidden({
    required this.chatId,
    required this.isHidden,
  });
  
  /// Identifier of the chat
  final int chatId;

  /// Pass true to hide and close the General topic; pass false to unhide it
  final bool isHidden;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "is_hidden": isHidden,
      "@extra": extra,
		};
	}

  
  ToggleGeneralForumTopicIsHidden copyWith({
    int? chatId,
    bool? isHidden,
  }) => ToggleGeneralForumTopicIsHidden(
    chatId: chatId ?? this.chatId,
    isHidden: isHidden ?? this.isHidden,
  );

  static const String objectType = 'toggleGeneralForumTopicIsHidden';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
