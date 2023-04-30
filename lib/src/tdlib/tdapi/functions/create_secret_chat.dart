part of '../tdapi.dart';

/// **CreateSecretChat** *(createSecretChat)* - TDLib function
  ///
  /// Returns an existing chat corresponding to a known secret chat.
  ///
  /// * [secretChatId]: Secret chat identifier.
  ///
  /// [Chat] is returned on completion.
class CreateSecretChat extends TdFunction {
  
  /// **CreateSecretChat** *(createSecretChat)* - TDLib function
  ///
  /// Returns an existing chat corresponding to a known secret chat.
  ///
  /// * [secretChatId]: Secret chat identifier.
  ///
  /// [Chat] is returned on completion.
  const CreateSecretChat({
    required this.secretChatId,
  });
  
  /// Secret chat identifier
  final int secretChatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "secret_chat_id": secretChatId,
      "@extra": extra,
    };
  }
  
  CreateSecretChat copyWith({
    int? secretChatId,
  }) => CreateSecretChat(
    secretChatId: secretChatId ?? this.secretChatId,
  );

  static const String constructor = 'createSecretChat';
  
  @override
  String getConstructor() => constructor;
}
