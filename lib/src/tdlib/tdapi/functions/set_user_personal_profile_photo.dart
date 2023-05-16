part of '../tdapi.dart';

/// **SetUserPersonalProfilePhoto** *(setUserPersonalProfilePhoto)* - TDLib function
///
/// Changes a personal profile photo of a contact user.
///
/// * [userId]: User identifier.
/// * [photo]: Profile photo to set; pass null to delete the photo; inputChatPhotoPrevious isn't supported in this function *(optional)*.
///
/// [Ok] is returned on completion.
final class SetUserPersonalProfilePhoto extends TdFunction {
  
  /// **SetUserPersonalProfilePhoto** *(setUserPersonalProfilePhoto)* - TDLib function
  ///
  /// Changes a personal profile photo of a contact user.
  ///
  /// * [userId]: User identifier.
  /// * [photo]: Profile photo to set; pass null to delete the photo; inputChatPhotoPrevious isn't supported in this function *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetUserPersonalProfilePhoto({
    required this.userId,
    this.photo,
  });
  
  /// User identifier 
  final int userId;

  /// Profile photo to set; pass null to delete the photo; inputChatPhotoPrevious isn't supported in this function
  final InputChatPhoto? photo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "photo": photo?.toJson(),
      "@extra": extra,
		};
	}

  
  SetUserPersonalProfilePhoto copyWith({
    int? userId,
    InputChatPhoto? photo,
  }) => SetUserPersonalProfilePhoto(
    userId: userId ?? this.userId,
    photo: photo ?? this.photo,
  );

  static const String objectType = 'setUserPersonalProfilePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
