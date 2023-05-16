part of '../tdapi.dart';

/// **GetChat** *(getChat)* - TDLib function
///
/// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot.
///
/// * [chatId]: Chat identifier.
///
/// [Chat] is returned on completion.
final class GetChat extends TdFunction {
  
  /// **GetChat** *(getChat)* - TDLib function
  ///
  /// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Chat] is returned on completion.
  const GetChat({
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

  
  GetChat copyWith({
    int? chatId,
  }) => GetChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'getChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
