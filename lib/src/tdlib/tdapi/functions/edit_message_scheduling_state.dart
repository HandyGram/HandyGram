part of '../tdapi.dart';

/// **EditMessageSchedulingState** *(editMessageSchedulingState)* - TDLib function
///
/// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed.
///
/// * [chatId]: The chat the message belongs to.
/// * [messageId]: Identifier of the message.
/// * [schedulingState]: The new message scheduling state; pass null to send the message immediately *(optional)*.
///
/// [Ok] is returned on completion.
final class EditMessageSchedulingState extends TdFunction {
  
  /// **EditMessageSchedulingState** *(editMessageSchedulingState)* - TDLib function
  ///
  /// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed.
  ///
  /// * [chatId]: The chat the message belongs to.
  /// * [messageId]: Identifier of the message.
  /// * [schedulingState]: The new message scheduling state; pass null to send the message immediately *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const EditMessageSchedulingState({
    required this.chatId,
    required this.messageId,
    this.schedulingState,
  });
  
  /// The chat the message belongs to
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// The new message scheduling state; pass null to send the message immediately
  final MessageSchedulingState? schedulingState;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "scheduling_state": schedulingState?.toJson(),
      "@extra": extra,
		};
	}

  
  EditMessageSchedulingState copyWith({
    int? chatId,
    int? messageId,
    MessageSchedulingState? schedulingState,
  }) => EditMessageSchedulingState(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    schedulingState: schedulingState ?? this.schedulingState,
  );

  static const String objectType = 'editMessageSchedulingState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
