part of '../tdapi.dart';

/// **CreateNewSecretChat** *(createNewSecretChat)* - TDLib function
  ///
  /// Creates a new secret chat. Returns the newly created chat.
  ///
  /// * [userId]: Identifier of the target user.
  ///
  /// [Chat] is returned on completion.
class CreateNewSecretChat extends TdFunction {
  
  /// **CreateNewSecretChat** *(createNewSecretChat)* - TDLib function
  ///
  /// Creates a new secret chat. Returns the newly created chat.
  ///
  /// * [userId]: Identifier of the target user.
  ///
  /// [Chat] is returned on completion.
  const CreateNewSecretChat({
    required this.userId,
  });
  
  /// Identifier of the target user
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
      "@extra": extra,
    };
  }
  
  CreateNewSecretChat copyWith({
    int? userId,
  }) => CreateNewSecretChat(
    userId: userId ?? this.userId,
  );

  static const String constructor = 'createNewSecretChat';
  
  @override
  String getConstructor() => constructor;
}
