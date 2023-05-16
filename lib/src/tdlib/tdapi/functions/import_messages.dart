part of '../tdapi.dart';

/// **ImportMessages** *(importMessages)* - TDLib function
///
/// Imports messages exported from another app.
///
/// * [chatId]: Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right.
/// * [messageFile]: File with messages to import. Only inputFileLocal and inputFileGenerated are supported. The file must not be previously uploaded.
/// * [attachedFiles]: Files used in the imported messages. Only inputFileLocal and inputFileGenerated are supported. The files must not be previously uploaded.
///
/// [Ok] is returned on completion.
final class ImportMessages extends TdFunction {
  
  /// **ImportMessages** *(importMessages)* - TDLib function
  ///
  /// Imports messages exported from another app.
  ///
  /// * [chatId]: Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right.
  /// * [messageFile]: File with messages to import. Only inputFileLocal and inputFileGenerated are supported. The file must not be previously uploaded.
  /// * [attachedFiles]: Files used in the imported messages. Only inputFileLocal and inputFileGenerated are supported. The files must not be previously uploaded.
  ///
  /// [Ok] is returned on completion.
  const ImportMessages({
    required this.chatId,
    required this.messageFile,
    required this.attachedFiles,
  });
  
  /// Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
  final int chatId;

  /// File with messages to import. Only inputFileLocal and inputFileGenerated are supported. The file must not be previously uploaded
  final InputFile messageFile;

  /// Files used in the imported messages. Only inputFileLocal and inputFileGenerated are supported. The files must not be previously uploaded
  final List<InputFile> attachedFiles;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_file": messageFile.toJson(),
      "attached_files": attachedFiles.map((i) => i.toJson()).toList(),
      "@extra": extra,
		};
	}

  
  ImportMessages copyWith({
    int? chatId,
    InputFile? messageFile,
    List<InputFile>? attachedFiles,
  }) => ImportMessages(
    chatId: chatId ?? this.chatId,
    messageFile: messageFile ?? this.messageFile,
    attachedFiles: attachedFiles ?? this.attachedFiles,
  );

  static const String objectType = 'importMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
