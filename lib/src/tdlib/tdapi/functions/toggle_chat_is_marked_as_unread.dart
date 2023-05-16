part of '../tdapi.dart';

/// **ToggleChatIsMarkedAsUnread** *(toggleChatIsMarkedAsUnread)* - TDLib function
///
/// Changes the marked as unread state of a chat.
///
/// * [chatId]: Chat identifier.
/// * [isMarkedAsUnread]: New value of is_marked_as_unread.
///
/// [Ok] is returned on completion.
final class ToggleChatIsMarkedAsUnread extends TdFunction {
  
  /// **ToggleChatIsMarkedAsUnread** *(toggleChatIsMarkedAsUnread)* - TDLib function
  ///
  /// Changes the marked as unread state of a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [isMarkedAsUnread]: New value of is_marked_as_unread.
  ///
  /// [Ok] is returned on completion.
  const ToggleChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of is_marked_as_unread
  final bool isMarkedAsUnread;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "is_marked_as_unread": isMarkedAsUnread,
      "@extra": extra,
		};
	}

  
  ToggleChatIsMarkedAsUnread copyWith({
    int? chatId,
    bool? isMarkedAsUnread,
  }) => ToggleChatIsMarkedAsUnread(
    chatId: chatId ?? this.chatId,
    isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
  );

  static const String objectType = 'toggleChatIsMarkedAsUnread';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
