part of '../tdapi.dart';

/// **RemoveChatActionBar** *(removeChatActionBar)* - TDLib function
///
/// Removes a chat action bar without any other action.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class RemoveChatActionBar extends TdFunction {
  
  /// **RemoveChatActionBar** *(removeChatActionBar)* - TDLib function
  ///
  /// Removes a chat action bar without any other action.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const RemoveChatActionBar({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  RemoveChatActionBar copyWith({
    int? chatId,
  }) => RemoveChatActionBar(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'removeChatActionBar';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
