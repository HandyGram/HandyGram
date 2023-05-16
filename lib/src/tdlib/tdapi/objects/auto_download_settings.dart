part of '../tdapi.dart';

/// **AutoDownloadSettings** *(autoDownloadSettings)* - basic class
///
/// Contains auto-download settings.
///
/// * [isAutoDownloadEnabled]: True, if the auto-download is enabled.
/// * [maxPhotoFileSize]: The maximum size of a photo file to be auto-downloaded, in bytes.
/// * [maxVideoFileSize]: The maximum size of a video file to be auto-downloaded, in bytes.
/// * [maxOtherFileSize]: The maximum size of other file types to be auto-downloaded, in bytes.
/// * [videoUploadBitrate]: The maximum suggested bitrate for uploaded videos, in kbit/s.
/// * [preloadLargeVideos]: True, if the beginning of video files needs to be preloaded for instant playback.
/// * [preloadNextAudio]: True, if the next audio track needs to be preloaded while the user is listening to an audio file.
/// * [useLessDataForCalls]: True, if "use less data for calls" option needs to be enabled.
final class AutoDownloadSettings extends TdObject {
  
  /// **AutoDownloadSettings** *(autoDownloadSettings)* - basic class
  ///
  /// Contains auto-download settings.
  ///
  /// * [isAutoDownloadEnabled]: True, if the auto-download is enabled.
  /// * [maxPhotoFileSize]: The maximum size of a photo file to be auto-downloaded, in bytes.
  /// * [maxVideoFileSize]: The maximum size of a video file to be auto-downloaded, in bytes.
  /// * [maxOtherFileSize]: The maximum size of other file types to be auto-downloaded, in bytes.
  /// * [videoUploadBitrate]: The maximum suggested bitrate for uploaded videos, in kbit/s.
  /// * [preloadLargeVideos]: True, if the beginning of video files needs to be preloaded for instant playback.
  /// * [preloadNextAudio]: True, if the next audio track needs to be preloaded while the user is listening to an audio file.
  /// * [useLessDataForCalls]: True, if "use less data for calls" option needs to be enabled.
  const AutoDownloadSettings({
    required this.isAutoDownloadEnabled,
    required this.maxPhotoFileSize,
    required this.maxVideoFileSize,
    required this.maxOtherFileSize,
    required this.videoUploadBitrate,
    required this.preloadLargeVideos,
    required this.preloadNextAudio,
    required this.useLessDataForCalls,
  });
  
  /// True, if the auto-download is enabled
  final bool isAutoDownloadEnabled;

  /// The maximum size of a photo file to be auto-downloaded, in bytes
  final int maxPhotoFileSize;

  /// The maximum size of a video file to be auto-downloaded, in bytes
  final int maxVideoFileSize;

  /// The maximum size of other file types to be auto-downloaded, in bytes
  final int maxOtherFileSize;

  /// The maximum suggested bitrate for uploaded videos, in kbit/s
  final int videoUploadBitrate;

  /// True, if the beginning of video files needs to be preloaded for instant playback
  final bool preloadLargeVideos;

  /// True, if the next audio track needs to be preloaded while the user is listening to an audio file
  final bool preloadNextAudio;

  /// True, if "use less data for calls" option needs to be enabled
  final bool useLessDataForCalls;
  
  /// Parse from a json
  factory AutoDownloadSettings.fromJson(Map<String, dynamic> json) => AutoDownloadSettings(
    isAutoDownloadEnabled: json['is_auto_download_enabled'],
    maxPhotoFileSize: json['max_photo_file_size'],
    maxVideoFileSize: json['max_video_file_size'],
    maxOtherFileSize: json['max_other_file_size'],
    videoUploadBitrate: json['video_upload_bitrate'],
    preloadLargeVideos: json['preload_large_videos'],
    preloadNextAudio: json['preload_next_audio'],
    useLessDataForCalls: json['use_less_data_for_calls'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_auto_download_enabled": isAutoDownloadEnabled,
      "max_photo_file_size": maxPhotoFileSize,
      "max_video_file_size": maxVideoFileSize,
      "max_other_file_size": maxOtherFileSize,
      "video_upload_bitrate": videoUploadBitrate,
      "preload_large_videos": preloadLargeVideos,
      "preload_next_audio": preloadNextAudio,
      "use_less_data_for_calls": useLessDataForCalls,
		};
	}

  
  AutoDownloadSettings copyWith({
    bool? isAutoDownloadEnabled,
    int? maxPhotoFileSize,
    int? maxVideoFileSize,
    int? maxOtherFileSize,
    int? videoUploadBitrate,
    bool? preloadLargeVideos,
    bool? preloadNextAudio,
    bool? useLessDataForCalls,
  }) => AutoDownloadSettings(
    isAutoDownloadEnabled: isAutoDownloadEnabled ?? this.isAutoDownloadEnabled,
    maxPhotoFileSize: maxPhotoFileSize ?? this.maxPhotoFileSize,
    maxVideoFileSize: maxVideoFileSize ?? this.maxVideoFileSize,
    maxOtherFileSize: maxOtherFileSize ?? this.maxOtherFileSize,
    videoUploadBitrate: videoUploadBitrate ?? this.videoUploadBitrate,
    preloadLargeVideos: preloadLargeVideos ?? this.preloadLargeVideos,
    preloadNextAudio: preloadNextAudio ?? this.preloadNextAudio,
    useLessDataForCalls: useLessDataForCalls ?? this.useLessDataForCalls,
  );

  static const String objectType = 'autoDownloadSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
