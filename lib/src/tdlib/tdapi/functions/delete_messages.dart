part of '../tdapi.dart';

/// **DeleteMessages** *(deleteMessages)* - TDLib function
///
/// Deletes messages.
///
/// * [chatId]: Chat identifier.
/// * [messageIds]: Identifiers of the messages to be deleted.
/// * [revoke]: Pass true to delete messages for all chat members. Always true for supergroups, channels and secret chats.
///
/// [Ok] is returned on completion.
final class DeleteMessages extends TdFunction {
  
  /// **DeleteMessages** *(deleteMessages)* - TDLib function
  ///
  /// Deletes messages.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageIds]: Identifiers of the messages to be deleted.
  /// * [revoke]: Pass true to delete messages for all chat members. Always true for supergroups, channels and secret chats.
  ///
  /// [Ok] is returned on completion.
  const DeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.revoke,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Identifiers of the messages to be deleted 
  final List<int> messageIds;

  /// Pass true to delete messages for all chat members. Always true for supergroups, channels and secret chats
  final bool revoke;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "revoke": revoke,
      "@extra": extra,
		};
	}

  
  DeleteMessages copyWith({
    int? chatId,
    List<int>? messageIds,
    bool? revoke,
  }) => DeleteMessages(
    chatId: chatId ?? this.chatId,
    messageIds: messageIds ?? this.messageIds,
    revoke: revoke ?? this.revoke,
  );

  static const String objectType = 'deleteMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
