part of '../tdapi.dart';

/// **InputChatPhoto** *(inputChatPhoto)* - parent
  ///
  /// Describes a photo to be set as a user profile or chat photo.
class InputChatPhoto extends TdObject {
  
  /// **InputChatPhoto** *(inputChatPhoto)* - parent
  ///
  /// Describes a photo to be set as a user profile or chat photo.
  const InputChatPhoto();
  
  /// a InputChatPhoto return type can be :
  /// * [InputChatPhotoPrevious]
  /// * [InputChatPhotoStatic]
  /// * [InputChatPhotoAnimation]
  factory InputChatPhoto.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputChatPhotoPrevious.constructor:
        return InputChatPhotoPrevious.fromJson(json);
      case InputChatPhotoStatic.constructor:
        return InputChatPhotoStatic.fromJson(json);
      case InputChatPhotoAnimation.constructor:
        return InputChatPhotoAnimation.fromJson(json);
      default:
        return const InputChatPhoto();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputChatPhoto copyWith() => const InputChatPhoto();

  static const String constructor = 'inputChatPhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **InputChatPhotoPrevious** *(inputChatPhotoPrevious)* - child of InputChatPhoto
  ///
  /// A previously used profile photo of the current user.
  ///
  /// * [chatPhotoId]: Identifier of the current user's profile photo to reuse.
class InputChatPhotoPrevious extends InputChatPhoto {
  
  /// **InputChatPhotoPrevious** *(inputChatPhotoPrevious)* - child of InputChatPhoto
  ///
  /// A previously used profile photo of the current user.
  ///
  /// * [chatPhotoId]: Identifier of the current user's profile photo to reuse.
  const InputChatPhotoPrevious({
    required this.chatPhotoId,
  });
  
  /// Identifier of the current user's profile photo to reuse
  final int chatPhotoId;
  
  /// Parse from a json
  factory InputChatPhotoPrevious.fromJson(Map<String, dynamic> json) => InputChatPhotoPrevious(
    chatPhotoId: int.parse(json['chat_photo_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_photo_id": chatPhotoId,
    };
  }
  
  @override
  InputChatPhotoPrevious copyWith({
    int? chatPhotoId,
  }) => InputChatPhotoPrevious(
    chatPhotoId: chatPhotoId ?? this.chatPhotoId,
  );

  static const String constructor = 'inputChatPhotoPrevious';
  
  @override
  String getConstructor() => constructor;
}


/// **InputChatPhotoStatic** *(inputChatPhotoStatic)* - child of InputChatPhoto
  ///
  /// A static photo in JPEG format.
  ///
  /// * [photo]: Photo to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed.
class InputChatPhotoStatic extends InputChatPhoto {
  
  /// **InputChatPhotoStatic** *(inputChatPhotoStatic)* - child of InputChatPhoto
  ///
  /// A static photo in JPEG format.
  ///
  /// * [photo]: Photo to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed.
  const InputChatPhotoStatic({
    required this.photo,
  });
  
  /// Photo to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed
  final InputFile photo;
  
  /// Parse from a json
  factory InputChatPhotoStatic.fromJson(Map<String, dynamic> json) => InputChatPhotoStatic(
    photo: InputFile.fromJson(json['photo']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "photo": photo.toJson(),
    };
  }
  
  @override
  InputChatPhotoStatic copyWith({
    InputFile? photo,
  }) => InputChatPhotoStatic(
    photo: photo ?? this.photo,
  );

  static const String constructor = 'inputChatPhotoStatic';
  
  @override
  String getConstructor() => constructor;
}


/// **InputChatPhotoAnimation** *(inputChatPhotoAnimation)* - child of InputChatPhoto
  ///
  /// An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 800 and be at most 2MB in size.
  ///
  /// * [animation]: Animation to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed.
  /// * [mainFrameTimestamp]: Timestamp of the frame, which will be used as static chat photo.
class InputChatPhotoAnimation extends InputChatPhoto {
  
  /// **InputChatPhotoAnimation** *(inputChatPhotoAnimation)* - child of InputChatPhoto
  ///
  /// An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 800 and be at most 2MB in size.
  ///
  /// * [animation]: Animation to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed.
  /// * [mainFrameTimestamp]: Timestamp of the frame, which will be used as static chat photo.
  const InputChatPhotoAnimation({
    required this.animation,
    required this.mainFrameTimestamp,
  });
  
  /// Animation to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed
  final InputFile animation;

  /// Timestamp of the frame, which will be used as static chat photo
  final double mainFrameTimestamp;
  
  /// Parse from a json
  factory InputChatPhotoAnimation.fromJson(Map<String, dynamic> json) => InputChatPhotoAnimation(
    animation: InputFile.fromJson(json['animation']),
    mainFrameTimestamp: json['main_frame_timestamp'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "animation": animation.toJson(),
      "main_frame_timestamp": mainFrameTimestamp,
    };
  }
  
  @override
  InputChatPhotoAnimation copyWith({
    InputFile? animation,
    double? mainFrameTimestamp,
  }) => InputChatPhotoAnimation(
    animation: animation ?? this.animation,
    mainFrameTimestamp: mainFrameTimestamp ?? this.mainFrameTimestamp,
  );

  static const String constructor = 'inputChatPhotoAnimation';
  
  @override
  String getConstructor() => constructor;
}
