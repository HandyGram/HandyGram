part of '../tdapi.dart';

/// **GetMessageEmbeddingCode** *(getMessageEmbeddingCode)* - TDLib function
///
/// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [forAlbum]: Pass true to return an HTML code for embedding of the whole media album.
///
/// [Text] is returned on completion.
final class GetMessageEmbeddingCode extends TdFunction {
  
  /// **GetMessageEmbeddingCode** *(getMessageEmbeddingCode)* - TDLib function
  ///
  /// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [forAlbum]: Pass true to return an HTML code for embedding of the whole media album.
  ///
  /// [Text] is returned on completion.
  const GetMessageEmbeddingCode({
    required this.chatId,
    required this.messageId,
    required this.forAlbum,
  });
  
  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Pass true to return an HTML code for embedding of the whole media album
  final bool forAlbum;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "for_album": forAlbum,
      "@extra": extra,
		};
	}

  
  GetMessageEmbeddingCode copyWith({
    int? chatId,
    int? messageId,
    bool? forAlbum,
  }) => GetMessageEmbeddingCode(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    forAlbum: forAlbum ?? this.forAlbum,
  );

  static const String objectType = 'getMessageEmbeddingCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
