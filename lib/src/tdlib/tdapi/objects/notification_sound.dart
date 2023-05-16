part of '../tdapi.dart';

/// **NotificationSound** *(notificationSound)* - basic class
///
/// Describes a notification sound in MP3 format.
///
/// * [id]: Unique identifier of the notification sound.
/// * [duration]: Duration of the sound, in seconds.
/// * [date]: Point in time (Unix timestamp) when the sound was created.
/// * [title]: Title of the notification sound.
/// * [data]: Arbitrary data, defined while the sound was uploaded.
/// * [sound]: File containing the sound.
final class NotificationSound extends TdObject {
  
  /// **NotificationSound** *(notificationSound)* - basic class
  ///
  /// Describes a notification sound in MP3 format.
  ///
  /// * [id]: Unique identifier of the notification sound.
  /// * [duration]: Duration of the sound, in seconds.
  /// * [date]: Point in time (Unix timestamp) when the sound was created.
  /// * [title]: Title of the notification sound.
  /// * [data]: Arbitrary data, defined while the sound was uploaded.
  /// * [sound]: File containing the sound.
  const NotificationSound({
    required this.id,
    required this.duration,
    required this.date,
    required this.title,
    required this.data,
    required this.sound,
    this.extra,
    this.clientId,
  });
  
  /// Unique identifier of the notification sound
  final int id;

  /// Duration of the sound, in seconds
  final int duration;

  /// Point in time (Unix timestamp) when the sound was created
  final int date;

  /// Title of the notification sound
  final String title;

  /// Arbitrary data, defined while the sound was uploaded
  final String data;

  /// File containing the sound
  final File sound;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory NotificationSound.fromJson(Map<String, dynamic> json) => NotificationSound(
    id: int.parse(json['id']),
    duration: json['duration'],
    date: json['date'],
    title: json['title'],
    data: json['data'],
    sound: File.fromJson(json['sound']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "duration": duration,
      "date": date,
      "title": title,
      "data": data,
      "sound": sound.toJson(),
		};
	}

  
  NotificationSound copyWith({
    int? id,
    int? duration,
    int? date,
    String? title,
    String? data,
    File? sound,
    dynamic extra,
    int? clientId,
  }) => NotificationSound(
    id: id ?? this.id,
    duration: duration ?? this.duration,
    date: date ?? this.date,
    title: title ?? this.title,
    data: data ?? this.data,
    sound: sound ?? this.sound,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'notificationSound';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
