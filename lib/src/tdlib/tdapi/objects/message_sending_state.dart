part of '../tdapi.dart';

/// **MessageSendingState** *(messageSendingState)* - parent
///
/// Contains information about the sending state of the message.
sealed class MessageSendingState extends TdObject {
  
  /// **MessageSendingState** *(messageSendingState)* - parent
  ///
  /// Contains information about the sending state of the message.
  const MessageSendingState();
  
  /// a MessageSendingState return type can be :
  /// * [MessageSendingStatePending]
  /// * [MessageSendingStateFailed]
  factory MessageSendingState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSendingStatePending.objectType:
        return MessageSendingStatePending.fromJson(json);
      case MessageSendingStateFailed.objectType:
        return MessageSendingStateFailed.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MessageSendingState)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  MessageSendingState copyWith();

  static const String objectType = 'messageSendingState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageSendingStatePending** *(messageSendingStatePending)* - child of MessageSendingState
///
/// The message is being sent now, but has not yet been delivered to the server.
final class MessageSendingStatePending extends MessageSendingState {
  
  /// **MessageSendingStatePending** *(messageSendingStatePending)* - child of MessageSendingState
  ///
  /// The message is being sent now, but has not yet been delivered to the server.
  const MessageSendingStatePending();
  
  /// Parse from a json
  factory MessageSendingStatePending.fromJson(Map<String, dynamic> json) => const MessageSendingStatePending();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MessageSendingStatePending copyWith() => const MessageSendingStatePending();

  static const String objectType = 'messageSendingStatePending';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MessageSendingStateFailed** *(messageSendingStateFailed)* - child of MessageSendingState
///
/// The message failed to be sent.
///
/// * [errorCode]: An error code; 0 if unknown.
/// * [errorMessage]: Error message.
/// * [canRetry]: True, if the message can be re-sent.
/// * [needAnotherSender]: True, if the message can be re-sent only on behalf of a different sender.
/// * [retryAfter]: Time left before the message can be re-sent, in seconds. No update is sent when this field changes.
final class MessageSendingStateFailed extends MessageSendingState {
  
  /// **MessageSendingStateFailed** *(messageSendingStateFailed)* - child of MessageSendingState
  ///
  /// The message failed to be sent.
  ///
  /// * [errorCode]: An error code; 0 if unknown.
  /// * [errorMessage]: Error message.
  /// * [canRetry]: True, if the message can be re-sent.
  /// * [needAnotherSender]: True, if the message can be re-sent only on behalf of a different sender.
  /// * [retryAfter]: Time left before the message can be re-sent, in seconds. No update is sent when this field changes.
  const MessageSendingStateFailed({
    required this.errorCode,
    required this.errorMessage,
    required this.canRetry,
    required this.needAnotherSender,
    required this.retryAfter,
  });
  
  /// An error code; 0 if unknown
  final int errorCode;

  /// Error message
  final String errorMessage;

  /// True, if the message can be re-sent
  final bool canRetry;

  /// True, if the message can be re-sent only on behalf of a different sender
  final bool needAnotherSender;

  /// Time left before the message can be re-sent, in seconds. No update is sent when this field changes
  final double retryAfter;
  
  /// Parse from a json
  factory MessageSendingStateFailed.fromJson(Map<String, dynamic> json) => MessageSendingStateFailed(
    errorCode: json['error_code'],
    errorMessage: json['error_message'],
    canRetry: json['can_retry'],
    needAnotherSender: json['need_another_sender'],
    retryAfter: json['retry_after'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "error_code": errorCode,
      "error_message": errorMessage,
      "can_retry": canRetry,
      "need_another_sender": needAnotherSender,
      "retry_after": retryAfter,
		};
	}

  
  @override
  MessageSendingStateFailed copyWith({
    int? errorCode,
    String? errorMessage,
    bool? canRetry,
    bool? needAnotherSender,
    double? retryAfter,
  }) => MessageSendingStateFailed(
    errorCode: errorCode ?? this.errorCode,
    errorMessage: errorMessage ?? this.errorMessage,
    canRetry: canRetry ?? this.canRetry,
    needAnotherSender: needAnotherSender ?? this.needAnotherSender,
    retryAfter: retryAfter ?? this.retryAfter,
  );

  static const String objectType = 'messageSendingStateFailed';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
