part of '../tdapi.dart';

/// **MessageCalendarDay** *(messageCalendarDay)* - basic class
  ///
  /// Contains information about found messages sent on a specific day.
  ///
  /// * [totalCount]: Total number of found messages sent on the day.
  /// * [message]: First message sent on the day.
class MessageCalendarDay extends TdObject {
  
  /// **MessageCalendarDay** *(messageCalendarDay)* - basic class
  ///
  /// Contains information about found messages sent on a specific day.
  ///
  /// * [totalCount]: Total number of found messages sent on the day.
  /// * [message]: First message sent on the day.
  const MessageCalendarDay({
    required this.totalCount,
    required this.message,
  });
  
  /// Total number of found messages sent on the day 
  final int totalCount;

  /// First message sent on the day
  final Message message;
  
  /// Parse from a json
  factory MessageCalendarDay.fromJson(Map<String, dynamic> json) => MessageCalendarDay(
    totalCount: json['total_count'],
    message: Message.fromJson(json['message']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "total_count": totalCount,
      "message": message.toJson(),
    };
  }
  
  MessageCalendarDay copyWith({
    int? totalCount,
    Message? message,
  }) => MessageCalendarDay(
    totalCount: totalCount ?? this.totalCount,
    message: message ?? this.message,
  );

  static const String constructor = 'messageCalendarDay';
  
  @override
  String getConstructor() => constructor;
}
