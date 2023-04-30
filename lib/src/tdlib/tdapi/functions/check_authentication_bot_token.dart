part of '../tdapi.dart';

/// **CheckAuthenticationBotToken** *(checkAuthenticationBotToken)* - TDLib function
  ///
  /// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in.
  ///
  /// * [token]: The bot token.
  ///
  /// [Ok] is returned on completion.
class CheckAuthenticationBotToken extends TdFunction {
  
  /// **CheckAuthenticationBotToken** *(checkAuthenticationBotToken)* - TDLib function
  ///
  /// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in.
  ///
  /// * [token]: The bot token.
  ///
  /// [Ok] is returned on completion.
  const CheckAuthenticationBotToken({
    required this.token,
  });
  
  /// The bot token
  final String token;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "token": token,
      "@extra": extra,
    };
  }
  
  CheckAuthenticationBotToken copyWith({
    String? token,
  }) => CheckAuthenticationBotToken(
    token: token ?? this.token,
  );

  static const String constructor = 'checkAuthenticationBotToken';
  
  @override
  String getConstructor() => constructor;
}
