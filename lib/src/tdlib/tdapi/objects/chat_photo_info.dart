part of '../tdapi.dart';

/// **ChatPhotoInfo** *(chatPhotoInfo)* - basic class
///
/// Contains basic information about the photo of a chat.
///
/// * [small]: A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed.
/// * [big]: A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed.
/// * [minithumbnail]: Chat photo minithumbnail; may be null *(optional)*.
/// * [hasAnimation]: True, if the photo has animated variant.
/// * [isPersonal]: True, if the photo is visible only for the current user.
final class ChatPhotoInfo extends TdObject {
  
  /// **ChatPhotoInfo** *(chatPhotoInfo)* - basic class
  ///
  /// Contains basic information about the photo of a chat.
  ///
  /// * [small]: A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed.
  /// * [big]: A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed.
  /// * [minithumbnail]: Chat photo minithumbnail; may be null *(optional)*.
  /// * [hasAnimation]: True, if the photo has animated variant.
  /// * [isPersonal]: True, if the photo is visible only for the current user.
  const ChatPhotoInfo({
    required this.small,
    required this.big,
    this.minithumbnail,
    required this.hasAnimation,
    required this.isPersonal,
  });
  
  /// A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  final File small;

  /// A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  final File big;

  /// Chat photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// True, if the photo has animated variant
  final bool hasAnimation;

  /// True, if the photo is visible only for the current user
  final bool isPersonal;
  
  /// Parse from a json
  factory ChatPhotoInfo.fromJson(Map<String, dynamic> json) => ChatPhotoInfo(
    small: File.fromJson(json['small']),
    big: File.fromJson(json['big']),
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
    hasAnimation: json['has_animation'],
    isPersonal: json['is_personal'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "small": small.toJson(),
      "big": big.toJson(),
      "minithumbnail": minithumbnail?.toJson(),
      "has_animation": hasAnimation,
      "is_personal": isPersonal,
		};
	}

  
  ChatPhotoInfo copyWith({
    File? small,
    File? big,
    Minithumbnail? minithumbnail,
    bool? hasAnimation,
    bool? isPersonal,
  }) => ChatPhotoInfo(
    small: small ?? this.small,
    big: big ?? this.big,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    hasAnimation: hasAnimation ?? this.hasAnimation,
    isPersonal: isPersonal ?? this.isPersonal,
  );

  static const String objectType = 'chatPhotoInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
