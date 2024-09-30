// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) =>
    NotificationPayload(
      userId: (json['userId'] as num).toInt(),
      chatId: (json['chatId'] as num).toInt(),
      notificationsCount: (json['notificationsCount'] as num).toInt(),
      type:
          NotificationGroupType.fromJson(json['type'] as Map<String, dynamic>),
      input: json['input'] as String?,
    );

Map<String, dynamic> _$NotificationPayloadToJson(
        NotificationPayload instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'chatId': instance.chatId,
      'notificationsCount': instance.notificationsCount,
      'input': instance.input,
      'type': instance.type.toJson(),
    };
