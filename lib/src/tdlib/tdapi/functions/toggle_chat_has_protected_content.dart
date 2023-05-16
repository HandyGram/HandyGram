part of '../tdapi.dart';

/// **ToggleChatHasProtectedContent** *(toggleChatHasProtectedContent)* - TDLib function
///
/// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges.
///
/// * [chatId]: Chat identifier.
/// * [hasProtectedContent]: New value of has_protected_content.
///
/// [Ok] is returned on completion.
final class ToggleChatHasProtectedContent extends TdFunction {
  
  /// **ToggleChatHasProtectedContent** *(toggleChatHasProtectedContent)* - TDLib function
  ///
  /// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges.
  ///
  /// * [chatId]: Chat identifier.
  /// * [hasProtectedContent]: New value of has_protected_content.
  ///
  /// [Ok] is returned on completion.
  const ToggleChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
  });
  
  /// Chat identifier
  final int chatId;

  /// New value of has_protected_content
  final bool hasProtectedContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "has_protected_content": hasProtectedContent,
      "@extra": extra,
		};
	}

  
  ToggleChatHasProtectedContent copyWith({
    int? chatId,
    bool? hasProtectedContent,
  }) => ToggleChatHasProtectedContent(
    chatId: chatId ?? this.chatId,
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
  );

  static const String objectType = 'toggleChatHasProtectedContent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
