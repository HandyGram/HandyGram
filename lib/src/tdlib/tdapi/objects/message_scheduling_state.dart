part of '../tdapi.dart';

/// **MessageSchedulingState** *(messageSchedulingState)* - parent
  ///
  /// Contains information about the time when a scheduled message will be sent.
class MessageSchedulingState extends TdObject {
  
  /// **MessageSchedulingState** *(messageSchedulingState)* - parent
  ///
  /// Contains information about the time when a scheduled message will be sent.
  const MessageSchedulingState();
  
  /// a MessageSchedulingState return type can be :
  /// * [MessageSchedulingStateSendAtDate]
  /// * [MessageSchedulingStateSendWhenOnline]
  factory MessageSchedulingState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSchedulingStateSendAtDate.constructor:
        return MessageSchedulingStateSendAtDate.fromJson(json);
      case MessageSchedulingStateSendWhenOnline.constructor:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);
      default:
        return const MessageSchedulingState();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageSchedulingState copyWith() => const MessageSchedulingState();

  static const String constructor = 'messageSchedulingState';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageSchedulingStateSendAtDate** *(messageSchedulingStateSendAtDate)* - child of MessageSchedulingState
  ///
  /// The message will be sent at the specified date.
  ///
  /// * [sendDate]: Date the message will be sent. The date must be within 367 days in the future.
class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  
  /// **MessageSchedulingStateSendAtDate** *(messageSchedulingStateSendAtDate)* - child of MessageSchedulingState
  ///
  /// The message will be sent at the specified date.
  ///
  /// * [sendDate]: Date the message will be sent. The date must be within 367 days in the future.
  const MessageSchedulingStateSendAtDate({
    required this.sendDate,
  });
  
  /// Date the message will be sent. The date must be within 367 days in the future
  final int sendDate;
  
  /// Parse from a json
  factory MessageSchedulingStateSendAtDate.fromJson(Map<String, dynamic> json) => MessageSchedulingStateSendAtDate(
    sendDate: json['send_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "send_date": sendDate,
    };
  }
  
  @override
  MessageSchedulingStateSendAtDate copyWith({
    int? sendDate,
  }) => MessageSchedulingStateSendAtDate(
    sendDate: sendDate ?? this.sendDate,
  );

  static const String constructor = 'messageSchedulingStateSendAtDate';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageSchedulingStateSendWhenOnline** *(messageSchedulingStateSendWhenOnline)* - child of MessageSchedulingState
  ///
  /// The message will be sent when the peer will be online. Applicable to private chats only and when the exact online status of the peer is known.
class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  
  /// **MessageSchedulingStateSendWhenOnline** *(messageSchedulingStateSendWhenOnline)* - child of MessageSchedulingState
  ///
  /// The message will be sent when the peer will be online. Applicable to private chats only and when the exact online status of the peer is known.
  const MessageSchedulingStateSendWhenOnline();
  
  /// Parse from a json
  factory MessageSchedulingStateSendWhenOnline.fromJson(Map<String, dynamic> json) => const MessageSchedulingStateSendWhenOnline();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  MessageSchedulingStateSendWhenOnline copyWith() => const MessageSchedulingStateSendWhenOnline();

  static const String constructor = 'messageSchedulingStateSendWhenOnline';
  
  @override
  String getConstructor() => constructor;
}
