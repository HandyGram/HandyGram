part of '../tdapi.dart';

/// **SuggestUserProfilePhoto** *(suggestUserProfilePhoto)* - TDLib function
///
/// Suggests a profile photo to another regular user with common messages.
///
/// * [userId]: User identifier.
/// * [photo]: Profile photo to suggest; inputChatPhotoPrevious isn't supported in this function.
///
/// [Ok] is returned on completion.
final class SuggestUserProfilePhoto extends TdFunction {
  
  /// **SuggestUserProfilePhoto** *(suggestUserProfilePhoto)* - TDLib function
  ///
  /// Suggests a profile photo to another regular user with common messages.
  ///
  /// * [userId]: User identifier.
  /// * [photo]: Profile photo to suggest; inputChatPhotoPrevious isn't supported in this function.
  ///
  /// [Ok] is returned on completion.
  const SuggestUserProfilePhoto({
    required this.userId,
    required this.photo,
  });
  
  /// User identifier 
  final int userId;

  /// Profile photo to suggest; inputChatPhotoPrevious isn't supported in this function
  final InputChatPhoto photo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "photo": photo.toJson(),
      "@extra": extra,
		};
	}

  
  SuggestUserProfilePhoto copyWith({
    int? userId,
    InputChatPhoto? photo,
  }) => SuggestUserProfilePhoto(
    userId: userId ?? this.userId,
    photo: photo ?? this.photo,
  );

  static const String objectType = 'suggestUserProfilePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
