part of '../tdapi.dart';

/// **AnimatedChatPhoto** *(animatedChatPhoto)* - basic class
  ///
  /// Animated variant of a chat photo in MPEG4 format.
  ///
  /// * [length]: Animation width and height.
  /// * [file]: Information about the animation file.
  /// * [mainFrameTimestamp]: Timestamp of the frame, used as a static chat photo.
class AnimatedChatPhoto extends TdObject {
  
  /// **AnimatedChatPhoto** *(animatedChatPhoto)* - basic class
  ///
  /// Animated variant of a chat photo in MPEG4 format.
  ///
  /// * [length]: Animation width and height.
  /// * [file]: Information about the animation file.
  /// * [mainFrameTimestamp]: Timestamp of the frame, used as a static chat photo.
  const AnimatedChatPhoto({
    required this.length,
    required this.file,
    required this.mainFrameTimestamp,
  });
  
  /// Animation width and height
  final int length;

  /// Information about the animation file
  final File file;

  /// Timestamp of the frame, used as a static chat photo
  final double mainFrameTimestamp;
  
  /// Parse from a json
  factory AnimatedChatPhoto.fromJson(Map<String, dynamic> json) => AnimatedChatPhoto(
    length: json['length'],
    file: File.fromJson(json['file']),
    mainFrameTimestamp: json['main_frame_timestamp'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "length": length,
      "file": file.toJson(),
      "main_frame_timestamp": mainFrameTimestamp,
    };
  }
  
  AnimatedChatPhoto copyWith({
    int? length,
    File? file,
    double? mainFrameTimestamp,
  }) => AnimatedChatPhoto(
    length: length ?? this.length,
    file: file ?? this.file,
    mainFrameTimestamp: mainFrameTimestamp ?? this.mainFrameTimestamp,
  );

  static const String constructor = 'animatedChatPhoto';
  
  @override
  String getConstructor() => constructor;
}
