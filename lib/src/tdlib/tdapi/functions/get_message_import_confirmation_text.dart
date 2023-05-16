part of '../tdapi.dart';

/// **GetMessageImportConfirmationText** *(getMessageImportConfirmationText)* - TDLib function
///
/// Returns a confirmation text to be shown to the user before starting message import.
///
/// * [chatId]: Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right.
///
/// [Text] is returned on completion.
final class GetMessageImportConfirmationText extends TdFunction {
  
  /// **GetMessageImportConfirmationText** *(getMessageImportConfirmationText)* - TDLib function
  ///
  /// Returns a confirmation text to be shown to the user before starting message import.
  ///
  /// * [chatId]: Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right.
  ///
  /// [Text] is returned on completion.
  const GetMessageImportConfirmationText({
    required this.chatId,
  });
  
  /// Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  GetMessageImportConfirmationText copyWith({
    int? chatId,
  }) => GetMessageImportConfirmationText(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'getMessageImportConfirmationText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
