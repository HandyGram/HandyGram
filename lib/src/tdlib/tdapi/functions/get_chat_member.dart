part of '../tdapi.dart';

/// **GetChatMember** *(getChatMember)* - TDLib function
  ///
  /// Returns information about a single member of a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [memberId]: Member identifier.
  ///
  /// [ChatMember] is returned on completion.
class GetChatMember extends TdFunction {
  
  /// **GetChatMember** *(getChatMember)* - TDLib function
  ///
  /// Returns information about a single member of a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [memberId]: Member identifier.
  ///
  /// [ChatMember] is returned on completion.
  const GetChatMember({
    required this.chatId,
    required this.memberId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Member identifier
  final MessageSender memberId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "member_id": memberId.toJson(),
      "@extra": extra,
    };
  }
  
  GetChatMember copyWith({
    int? chatId,
    MessageSender? memberId,
  }) => GetChatMember(
    chatId: chatId ?? this.chatId,
    memberId: memberId ?? this.memberId,
  );

  static const String constructor = 'getChatMember';
  
  @override
  String getConstructor() => constructor;
}
