part of '../tdapi.dart';

/// **CreateForumTopic** *(createForumTopic)* - TDLib function
///
/// Creates a topic in a forum supergroup chat; requires can_manage_topics rights in the supergroup.
///
/// * [chatId]: Identifier of the chat.
/// * [name]: Name of the topic; 1-128 characters.
/// * [icon]: Icon of the topic. Icon color must be one of 0x6FB9F0, 0xFFD67E, 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F. Telegram Premium users can use any custom emoji as topic icon, other users can use only a custom emoji returned by getForumTopicDefaultIcons.
///
/// [ForumTopicInfo] is returned on completion.
final class CreateForumTopic extends TdFunction {
  
  /// **CreateForumTopic** *(createForumTopic)* - TDLib function
  ///
  /// Creates a topic in a forum supergroup chat; requires can_manage_topics rights in the supergroup.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [name]: Name of the topic; 1-128 characters.
  /// * [icon]: Icon of the topic. Icon color must be one of 0x6FB9F0, 0xFFD67E, 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F. Telegram Premium users can use any custom emoji as topic icon, other users can use only a custom emoji returned by getForumTopicDefaultIcons.
  ///
  /// [ForumTopicInfo] is returned on completion.
  const CreateForumTopic({
    required this.chatId,
    required this.name,
    required this.icon,
  });
  
  /// Identifier of the chat
  final int chatId;

  /// Name of the topic; 1-128 characters
  final String name;

  /// Icon of the topic. Icon color must be one of 0x6FB9F0, 0xFFD67E, 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F. Telegram Premium users can use any custom emoji as topic icon, other users can use only a custom emoji returned by getForumTopicDefaultIcons
  final ForumTopicIcon icon;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "name": name,
      "icon": icon.toJson(),
      "@extra": extra,
		};
	}

  
  CreateForumTopic copyWith({
    int? chatId,
    String? name,
    ForumTopicIcon? icon,
  }) => CreateForumTopic(
    chatId: chatId ?? this.chatId,
    name: name ?? this.name,
    icon: icon ?? this.icon,
  );

  static const String objectType = 'createForumTopic';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
