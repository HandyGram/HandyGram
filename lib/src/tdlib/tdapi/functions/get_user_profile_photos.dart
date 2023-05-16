part of '../tdapi.dart';

/// **GetUserProfilePhotos** *(getUserProfilePhotos)* - TDLib function
///
/// Returns the profile photos of a user. Personal and public photo aren't returned.
///
/// * [userId]: User identifier.
/// * [offset]: The number of photos to skip; must be non-negative.
/// * [limit]: The maximum number of photos to be returned; up to 100.
///
/// [ChatPhotos] is returned on completion.
final class GetUserProfilePhotos extends TdFunction {
  
  /// **GetUserProfilePhotos** *(getUserProfilePhotos)* - TDLib function
  ///
  /// Returns the profile photos of a user. Personal and public photo aren't returned.
  ///
  /// * [userId]: User identifier.
  /// * [offset]: The number of photos to skip; must be non-negative.
  /// * [limit]: The maximum number of photos to be returned; up to 100.
  ///
  /// [ChatPhotos] is returned on completion.
  const GetUserProfilePhotos({
    required this.userId,
    required this.offset,
    required this.limit,
  });
  
  /// User identifier 
  final int userId;

  /// The number of photos to skip; must be non-negative 
  final int offset;

  /// The maximum number of photos to be returned; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetUserProfilePhotos copyWith({
    int? userId,
    int? offset,
    int? limit,
  }) => GetUserProfilePhotos(
    userId: userId ?? this.userId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getUserProfilePhotos';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
