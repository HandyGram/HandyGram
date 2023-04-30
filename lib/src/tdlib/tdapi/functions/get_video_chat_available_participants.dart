part of '../tdapi.dart';

/// **GetVideoChatAvailableParticipants** *(getVideoChatAvailableParticipants)* - TDLib function
  ///
  /// Returns list of participant identifiers, on whose behalf a video chat in the chat can be joined.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [MessageSenders] is returned on completion.
class GetVideoChatAvailableParticipants extends TdFunction {
  
  /// **GetVideoChatAvailableParticipants** *(getVideoChatAvailableParticipants)* - TDLib function
  ///
  /// Returns list of participant identifiers, on whose behalf a video chat in the chat can be joined.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [MessageSenders] is returned on completion.
  const GetVideoChatAvailableParticipants({
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
  
  GetVideoChatAvailableParticipants copyWith({
    int? chatId,
  }) => GetVideoChatAvailableParticipants(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'getVideoChatAvailableParticipants';
  
  @override
  String getConstructor() => constructor;
}
