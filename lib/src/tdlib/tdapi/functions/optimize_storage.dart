part of '../tdapi.dart';

/// **OptimizeStorage** *(optimizeStorage)* - TDLib function
///
/// Optimizes storage usage, i.e. deletes some files and returns new storage usage statistics. Secret thumbnails can't be deleted.
///
/// * [size]: Limit on the total size of files after deletion, in bytes. Pass -1 to use the default limit.
/// * [ttl]: Limit on the time that has passed since the last time a file was accessed (or creation time for some filesystems). Pass -1 to use the default limit.
/// * [count]: Limit on the total number of files after deletion. Pass -1 to use the default limit.
/// * [immunityDelay]: The amount of time after the creation of a file during which it can't be deleted, in seconds. Pass -1 to use the default value.
/// * [fileTypes]: If non-empty, only files with the given types are considered. By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted.
/// * [chatIds]: If non-empty, only files from the given chats are considered. Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos).
/// * [excludeChatIds]: If non-empty, files from the given chats are excluded. Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos).
/// * [returnDeletedFileStatistics]: Pass true if statistics about the files that were deleted must be returned instead of the whole storage usage statistics. Affects only returned statistics.
/// * [chatLimit]: Same as in getStorageStatistics. Affects only returned statistics.
///
/// [StorageStatistics] is returned on completion.
final class OptimizeStorage extends TdFunction {
  
  /// **OptimizeStorage** *(optimizeStorage)* - TDLib function
  ///
  /// Optimizes storage usage, i.e. deletes some files and returns new storage usage statistics. Secret thumbnails can't be deleted.
  ///
  /// * [size]: Limit on the total size of files after deletion, in bytes. Pass -1 to use the default limit.
  /// * [ttl]: Limit on the time that has passed since the last time a file was accessed (or creation time for some filesystems). Pass -1 to use the default limit.
  /// * [count]: Limit on the total number of files after deletion. Pass -1 to use the default limit.
  /// * [immunityDelay]: The amount of time after the creation of a file during which it can't be deleted, in seconds. Pass -1 to use the default value.
  /// * [fileTypes]: If non-empty, only files with the given types are considered. By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted.
  /// * [chatIds]: If non-empty, only files from the given chats are considered. Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos).
  /// * [excludeChatIds]: If non-empty, files from the given chats are excluded. Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos).
  /// * [returnDeletedFileStatistics]: Pass true if statistics about the files that were deleted must be returned instead of the whole storage usage statistics. Affects only returned statistics.
  /// * [chatLimit]: Same as in getStorageStatistics. Affects only returned statistics.
  ///
  /// [StorageStatistics] is returned on completion.
  const OptimizeStorage({
    required this.size,
    required this.ttl,
    required this.count,
    required this.immunityDelay,
    required this.fileTypes,
    required this.chatIds,
    required this.excludeChatIds,
    required this.returnDeletedFileStatistics,
    required this.chatLimit,
  });
  
  /// Limit on the total size of files after deletion, in bytes. Pass -1 to use the default limit
  final int size;

  /// Limit on the time that has passed since the last time a file was accessed (or creation time for some filesystems). Pass -1 to use the default limit
  final int ttl;

  /// Limit on the total number of files after deletion. Pass -1 to use the default limit
  final int count;

  /// The amount of time after the creation of a file during which it can't be deleted, in seconds. Pass -1 to use the default value
  final int immunityDelay;

  /// If non-empty, only files with the given types are considered. By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted
  final List<FileType> fileTypes;

  /// If non-empty, only files from the given chats are considered. Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos)
  final List<int> chatIds;

  /// If non-empty, files from the given chats are excluded. Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos)
  final List<int> excludeChatIds;

  /// Pass true if statistics about the files that were deleted must be returned instead of the whole storage usage statistics. Affects only returned statistics
  final bool returnDeletedFileStatistics;

  /// Same as in getStorageStatistics. Affects only returned statistics
  final int chatLimit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "size": size,
      "ttl": ttl,
      "count": count,
      "immunity_delay": immunityDelay,
      "file_types": fileTypes.map((i) => i.toJson()).toList(),
      "chat_ids": chatIds.map((i) => i).toList(),
      "exclude_chat_ids": excludeChatIds.map((i) => i).toList(),
      "return_deleted_file_statistics": returnDeletedFileStatistics,
      "chat_limit": chatLimit,
      "@extra": extra,
		};
	}

  
  OptimizeStorage copyWith({
    int? size,
    int? ttl,
    int? count,
    int? immunityDelay,
    List<FileType>? fileTypes,
    List<int>? chatIds,
    List<int>? excludeChatIds,
    bool? returnDeletedFileStatistics,
    int? chatLimit,
  }) => OptimizeStorage(
    size: size ?? this.size,
    ttl: ttl ?? this.ttl,
    count: count ?? this.count,
    immunityDelay: immunityDelay ?? this.immunityDelay,
    fileTypes: fileTypes ?? this.fileTypes,
    chatIds: chatIds ?? this.chatIds,
    excludeChatIds: excludeChatIds ?? this.excludeChatIds,
    returnDeletedFileStatistics: returnDeletedFileStatistics ?? this.returnDeletedFileStatistics,
    chatLimit: chatLimit ?? this.chatLimit,
  );

  static const String objectType = 'optimizeStorage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
