part of '../tdapi.dart';

/// **CloseSecretChat** *(closeSecretChat)* - TDLib function
///
/// Closes a secret chat, effectively transferring its state to secretChatStateClosed.
///
/// * [secretChatId]: Secret chat identifier.
///
/// [Ok] is returned on completion.
final class CloseSecretChat extends TdFunction {
  
  /// **CloseSecretChat** *(closeSecretChat)* - TDLib function
  ///
  /// Closes a secret chat, effectively transferring its state to secretChatStateClosed.
  ///
  /// * [secretChatId]: Secret chat identifier.
  ///
  /// [Ok] is returned on completion.
  const CloseSecretChat({
    required this.secretChatId,
  });
  
  /// Secret chat identifier
  final int secretChatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "secret_chat_id": secretChatId,
      "@extra": extra,
		};
	}

  
  CloseSecretChat copyWith({
    int? secretChatId,
  }) => CloseSecretChat(
    secretChatId: secretChatId ?? this.secretChatId,
  );

  static const String objectType = 'closeSecretChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
