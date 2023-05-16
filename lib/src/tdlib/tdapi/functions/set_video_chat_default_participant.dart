part of '../tdapi.dart';

/// **SetVideoChatDefaultParticipant** *(setVideoChatDefaultParticipant)* - TDLib function
///
/// Changes default participant identifier, on whose behalf a video chat in the chat will be joined.
///
/// * [chatId]: Chat identifier.
/// * [defaultParticipantId]: Default group call participant identifier to join the video chats.
///
/// [Ok] is returned on completion.
final class SetVideoChatDefaultParticipant extends TdFunction {
  
  /// **SetVideoChatDefaultParticipant** *(setVideoChatDefaultParticipant)* - TDLib function
  ///
  /// Changes default participant identifier, on whose behalf a video chat in the chat will be joined.
  ///
  /// * [chatId]: Chat identifier.
  /// * [defaultParticipantId]: Default group call participant identifier to join the video chats.
  ///
  /// [Ok] is returned on completion.
  const SetVideoChatDefaultParticipant({
    required this.chatId,
    required this.defaultParticipantId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Default group call participant identifier to join the video chats
  final MessageSender defaultParticipantId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "default_participant_id": defaultParticipantId.toJson(),
      "@extra": extra,
		};
	}

  
  SetVideoChatDefaultParticipant copyWith({
    int? chatId,
    MessageSender? defaultParticipantId,
  }) => SetVideoChatDefaultParticipant(
    chatId: chatId ?? this.chatId,
    defaultParticipantId: defaultParticipantId ?? this.defaultParticipantId,
  );

  static const String objectType = 'setVideoChatDefaultParticipant';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
