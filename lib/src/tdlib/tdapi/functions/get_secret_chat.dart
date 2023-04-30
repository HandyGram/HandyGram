part of '../tdapi.dart';

/// **GetSecretChat** *(getSecretChat)* - TDLib function
  ///
  /// Returns information about a secret chat by its identifier. This is an offline request.
  ///
  /// * [secretChatId]: Secret chat identifier.
  ///
  /// [SecretChat] is returned on completion.
class GetSecretChat extends TdFunction {
  
  /// **GetSecretChat** *(getSecretChat)* - TDLib function
  ///
  /// Returns information about a secret chat by its identifier. This is an offline request.
  ///
  /// * [secretChatId]: Secret chat identifier.
  ///
  /// [SecretChat] is returned on completion.
  const GetSecretChat({
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
  
  GetSecretChat copyWith({
    int? secretChatId,
  }) => GetSecretChat(
    secretChatId: secretChatId ?? this.secretChatId,
  );

  static const String constructor = 'getSecretChat';
  
  @override
  String getConstructor() => constructor;
}
