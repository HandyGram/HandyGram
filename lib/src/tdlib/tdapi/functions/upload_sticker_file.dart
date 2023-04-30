part of '../tdapi.dart';

/// **UploadStickerFile** *(uploadStickerFile)* - TDLib function
  ///
  /// Uploads a file with a sticker; returns the uploaded file.
  ///
  /// * [userId]: Sticker file owner; ignored for regular users.
  /// * [sticker]: Sticker file to upload.
  ///
  /// [File] is returned on completion.
class UploadStickerFile extends TdFunction {
  
  /// **UploadStickerFile** *(uploadStickerFile)* - TDLib function
  ///
  /// Uploads a file with a sticker; returns the uploaded file.
  ///
  /// * [userId]: Sticker file owner; ignored for regular users.
  /// * [sticker]: Sticker file to upload.
  ///
  /// [File] is returned on completion.
  const UploadStickerFile({
    required this.userId,
    required this.sticker,
  });
  
  /// Sticker file owner; ignored for regular users 
  final int userId;

  /// Sticker file to upload
  final InputSticker sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  UploadStickerFile copyWith({
    int? userId,
    InputSticker? sticker,
  }) => UploadStickerFile(
    userId: userId ?? this.userId,
    sticker: sticker ?? this.sticker,
  );

  static const String constructor = 'uploadStickerFile';
  
  @override
  String getConstructor() => constructor;
}
