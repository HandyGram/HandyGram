part of '../tdapi.dart';

/// **ChatPhotos** *(chatPhotos)* - basic class
///
/// Contains a list of chat or user profile photos.
///
/// * [totalCount]: Total number of photos.
/// * [photos]: List of photos.
final class ChatPhotos extends TdObject {
  
  /// **ChatPhotos** *(chatPhotos)* - basic class
  ///
  /// Contains a list of chat or user profile photos.
  ///
  /// * [totalCount]: Total number of photos.
  /// * [photos]: List of photos.
  const ChatPhotos({
    required this.totalCount,
    required this.photos,
    this.extra,
    this.clientId,
  });
  
  /// Total number of photos 
  final int totalCount;

  /// List of photos
  final List<ChatPhoto> photos;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatPhotos.fromJson(Map<String, dynamic> json) => ChatPhotos(
    totalCount: json['total_count'],
    photos: List<ChatPhoto>.from((json['photos'] ?? []).map((item) => ChatPhoto.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "photos": photos.map((i) => i.toJson()).toList(),
		};
	}

  
  ChatPhotos copyWith({
    int? totalCount,
    List<ChatPhoto>? photos,
    dynamic extra,
    int? clientId,
  }) => ChatPhotos(
    totalCount: totalCount ?? this.totalCount,
    photos: photos ?? this.photos,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatPhotos';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
