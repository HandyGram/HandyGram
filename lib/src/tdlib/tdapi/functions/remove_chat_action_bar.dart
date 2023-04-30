part of '../tdapi.dart';

/// **RemoveChatActionBar** *(removeChatActionBar)* - TDLib function
  ///
  /// Removes a chat action bar without any other action.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
class RemoveChatActionBar extends TdFunction {
  
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
      "@type": constructor,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  RemoveChatActionBar copyWith({
    int? chatId,
  }) => RemoveChatActionBar(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'removeChatActionBar';
  
  @override
  String getConstructor() => constructor;
}
