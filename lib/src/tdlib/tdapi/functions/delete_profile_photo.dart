part of '../tdapi.dart';

/// **DeleteProfilePhoto** *(deleteProfilePhoto)* - TDLib function
  ///
  /// Deletes a profile photo.
  ///
  /// * [profilePhotoId]: Identifier of the profile photo to delete.
  ///
  /// [Ok] is returned on completion.
class DeleteProfilePhoto extends TdFunction {
  
  /// **DeleteProfilePhoto** *(deleteProfilePhoto)* - TDLib function
  ///
  /// Deletes a profile photo.
  ///
  /// * [profilePhotoId]: Identifier of the profile photo to delete.
  ///
  /// [Ok] is returned on completion.
  const DeleteProfilePhoto({
    required this.profilePhotoId,
  });
  
  /// Identifier of the profile photo to delete
  final int profilePhotoId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "profile_photo_id": profilePhotoId,
      "@extra": extra,
    };
  }
  
  DeleteProfilePhoto copyWith({
    int? profilePhotoId,
  }) => DeleteProfilePhoto(
    profilePhotoId: profilePhotoId ?? this.profilePhotoId,
  );

  static const String constructor = 'deleteProfilePhoto';
  
  @override
  String getConstructor() => constructor;
}
