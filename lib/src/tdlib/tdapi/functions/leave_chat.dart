part of '../tdapi.dart';

/// **LeaveChat** *(leaveChat)* - TDLib function
///
/// Removes the current user from chat members. Private and secret chats can't be left using this method.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class LeaveChat extends TdFunction {
  
  /// **LeaveChat** *(leaveChat)* - TDLib function
  ///
  /// Removes the current user from chat members. Private and secret chats can't be left using this method.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const LeaveChat({
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

  
  LeaveChat copyWith({
    int? chatId,
  }) => LeaveChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'leaveChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
