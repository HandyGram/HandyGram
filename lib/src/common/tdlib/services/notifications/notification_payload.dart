import 'package:json_annotation/json_annotation.dart';
import 'package:handy_tdlib/api.dart';

part 'notification_payload.g.dart';

@JsonSerializable(explicitToJson: true)
class NotificationPayload {
  final int userId;
  final int chatId;
  final int notificationsCount;
  final String? input;
  final NotificationGroupType type;

  NotificationPayload copyWith({
    int? userId,
    int? chatId,
    int? notificationsCount,
    String? input,
    NotificationGroupType? type,
  }) =>
      NotificationPayload(
        userId: userId ?? this.userId,
        chatId: chatId ?? this.chatId,
        input: input ?? this.input,
        notificationsCount: notificationsCount ?? this.notificationsCount,
        type: type ?? this.type,
      );

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationPayloadToJson(this);

  @override
  int get hashCode =>
      chatId.hashCode ^
      notificationsCount.hashCode ^
      type.hashCode ^
      input.hashCode ^
      userId.hashCode;

  @override
  bool operator ==(final Object other) {
    return switch (other) {
      NotificationPayload(
        chatId: final prevChatId,
        notificationsCount: final prevNotificationsCount,
        input: final prevInput,
        type: final prevType
      ) =>
        chatId == prevChatId &&
            notificationsCount == prevNotificationsCount &&
            input == prevInput &&
            type == prevType &&
            userId == userId,
      _ => false,
    };
  }

  const NotificationPayload({
    required this.userId,
    required this.chatId,
    required this.notificationsCount,
    required this.type,
    this.input,
  });
}
