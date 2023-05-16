part of '../tdapi.dart';

/// **ChatPhoto** *(chatPhoto)* - basic class
///
/// Describes a chat or user profile photo.
///
/// * [id]: Unique photo identifier.
/// * [addedDate]: Point in time (Unix timestamp) when the photo has been added.
/// * [minithumbnail]: Photo minithumbnail; may be null *(optional)*.
/// * [sizes]: Available variants of the photo in JPEG format, in different size.
/// * [animation]: A big (640x640) animated variant of the photo in MPEG4 format; may be null *(optional)*.
/// * [smallAnimation]: A small (160x160) animated variant of the photo in MPEG4 format; may be null even the big animation is available *(optional)*.
final class ChatPhoto extends TdObject {
  
  /// **ChatPhoto** *(chatPhoto)* - basic class
  ///
  /// Describes a chat or user profile photo.
  ///
  /// * [id]: Unique photo identifier.
  /// * [addedDate]: Point in time (Unix timestamp) when the photo has been added.
  /// * [minithumbnail]: Photo minithumbnail; may be null *(optional)*.
  /// * [sizes]: Available variants of the photo in JPEG format, in different size.
  /// * [animation]: A big (640x640) animated variant of the photo in MPEG4 format; may be null *(optional)*.
  /// * [smallAnimation]: A small (160x160) animated variant of the photo in MPEG4 format; may be null even the big animation is available *(optional)*.
  const ChatPhoto({
    required this.id,
    required this.addedDate,
    this.minithumbnail,
    required this.sizes,
    this.animation,
    this.smallAnimation,
  });
  
  /// Unique photo identifier
  final int id;

  /// Point in time (Unix timestamp) when the photo has been added
  final int addedDate;

  /// Photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// Available variants of the photo in JPEG format, in different size
  final List<PhotoSize> sizes;

  /// A big (640x640) animated variant of the photo in MPEG4 format; may be null
  final AnimatedChatPhoto? animation;

  /// A small (160x160) animated variant of the photo in MPEG4 format; may be null even the big animation is available
  final AnimatedChatPhoto? smallAnimation;
  
  /// Parse from a json
  factory ChatPhoto.fromJson(Map<String, dynamic> json) => ChatPhoto(
    id: int.parse(json['id']),
    addedDate: json['added_date'],
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
    sizes: List<PhotoSize>.from((json['sizes'] ?? []).map((item) => PhotoSize.fromJson(item)).toList()),
    animation: json['animation'] == null ? null : AnimatedChatPhoto.fromJson(json['animation']),
    smallAnimation: json['small_animation'] == null ? null : AnimatedChatPhoto.fromJson(json['small_animation']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "added_date": addedDate,
      "minithumbnail": minithumbnail?.toJson(),
      "sizes": sizes.map((i) => i.toJson()).toList(),
      "animation": animation?.toJson(),
      "small_animation": smallAnimation?.toJson(),
		};
	}

  
  ChatPhoto copyWith({
    int? id,
    int? addedDate,
    Minithumbnail? minithumbnail,
    List<PhotoSize>? sizes,
    AnimatedChatPhoto? animation,
    AnimatedChatPhoto? smallAnimation,
  }) => ChatPhoto(
    id: id ?? this.id,
    addedDate: addedDate ?? this.addedDate,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    sizes: sizes ?? this.sizes,
    animation: animation ?? this.animation,
    smallAnimation: smallAnimation ?? this.smallAnimation,
  );

  static const String objectType = 'chatPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
