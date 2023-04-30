part of '../tdapi.dart';

/// **SetChatTheme** *(setChatTheme)* - TDLib function
  ///
  /// Changes the chat theme. Supported only in private and secret chats.
  ///
  /// * [chatId]: Chat identifier.
  /// * [themeName]: Name of the new chat theme; pass an empty string to return the default theme.
  ///
  /// [Ok] is returned on completion.
class SetChatTheme extends TdFunction {
  
  /// **SetChatTheme** *(setChatTheme)* - TDLib function
  ///
  /// Changes the chat theme. Supported only in private and secret chats.
  ///
  /// * [chatId]: Chat identifier.
  /// * [themeName]: Name of the new chat theme; pass an empty string to return the default theme.
  ///
  /// [Ok] is returned on completion.
  const SetChatTheme({
    required this.chatId,
    required this.themeName,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Name of the new chat theme; pass an empty string to return the default theme
  final String themeName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "theme_name": themeName,
      "@extra": extra,
    };
  }
  
  SetChatTheme copyWith({
    int? chatId,
    String? themeName,
  }) => SetChatTheme(
    chatId: chatId ?? this.chatId,
    themeName: themeName ?? this.themeName,
  );

  static const String constructor = 'setChatTheme';
  
  @override
  String getConstructor() => constructor;
}
