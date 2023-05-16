part of '../tdapi.dart';

/// **SetProfilePhoto** *(setProfilePhoto)* - TDLib function
///
/// Changes a profile photo for the current user.
///
/// * [photo]: Profile photo to set.
/// * [isPublic]: Pass true to set a public photo, which will be visible even the main photo is hidden by privacy settings.
///
/// [Ok] is returned on completion.
final class SetProfilePhoto extends TdFunction {
  
  /// **SetProfilePhoto** *(setProfilePhoto)* - TDLib function
  ///
  /// Changes a profile photo for the current user.
  ///
  /// * [photo]: Profile photo to set.
  /// * [isPublic]: Pass true to set a public photo, which will be visible even the main photo is hidden by privacy settings.
  ///
  /// [Ok] is returned on completion.
  const SetProfilePhoto({
    required this.photo,
    required this.isPublic,
  });
  
  /// Profile photo to set 
  final InputChatPhoto photo;

  /// Pass true to set a public photo, which will be visible even the main photo is hidden by privacy settings
  final bool isPublic;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "photo": photo.toJson(),
      "is_public": isPublic,
      "@extra": extra,
		};
	}

  
  SetProfilePhoto copyWith({
    InputChatPhoto? photo,
    bool? isPublic,
  }) => SetProfilePhoto(
    photo: photo ?? this.photo,
    isPublic: isPublic ?? this.isPublic,
  );

  static const String objectType = 'setProfilePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
