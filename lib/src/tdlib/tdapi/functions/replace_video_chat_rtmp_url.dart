part of '../tdapi.dart';

/// **ReplaceVideoChatRtmpUrl** *(replaceVideoChatRtmpUrl)* - TDLib function
///
/// Replaces the current RTMP URL for streaming to the chat; requires creator privileges.
///
/// * [chatId]: Chat identifier.
///
/// [RtmpUrl] is returned on completion.
final class ReplaceVideoChatRtmpUrl extends TdFunction {
  
  /// **ReplaceVideoChatRtmpUrl** *(replaceVideoChatRtmpUrl)* - TDLib function
  ///
  /// Replaces the current RTMP URL for streaming to the chat; requires creator privileges.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [RtmpUrl] is returned on completion.
  const ReplaceVideoChatRtmpUrl({
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

  
  ReplaceVideoChatRtmpUrl copyWith({
    int? chatId,
  }) => ReplaceVideoChatRtmpUrl(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'replaceVideoChatRtmpUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
