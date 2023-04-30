part of '../tdapi.dart';

/// **GetVideoChatRtmpUrl** *(getVideoChatRtmpUrl)* - TDLib function
  ///
  /// Returns RTMP URL for streaming to the chat; requires creator privileges.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [RtmpUrl] is returned on completion.
class GetVideoChatRtmpUrl extends TdFunction {
  
  /// **GetVideoChatRtmpUrl** *(getVideoChatRtmpUrl)* - TDLib function
  ///
  /// Returns RTMP URL for streaming to the chat; requires creator privileges.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [RtmpUrl] is returned on completion.
  const GetVideoChatRtmpUrl({
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
  
  GetVideoChatRtmpUrl copyWith({
    int? chatId,
  }) => GetVideoChatRtmpUrl(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'getVideoChatRtmpUrl';
  
  @override
  String getConstructor() => constructor;
}
