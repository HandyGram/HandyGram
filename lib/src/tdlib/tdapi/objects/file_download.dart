part of '../tdapi.dart';

/// **FileDownload** *(fileDownload)* - basic class
///
/// Describes a file added to file download list.
///
/// * [fileId]: File identifier.
/// * [message]: The message with the file.
/// * [addDate]: Point in time (Unix timestamp) when the file was added to the download list.
/// * [completeDate]: Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed.
/// * [isPaused]: True, if downloading of the file is paused.
final class FileDownload extends TdObject {
  
  /// **FileDownload** *(fileDownload)* - basic class
  ///
  /// Describes a file added to file download list.
  ///
  /// * [fileId]: File identifier.
  /// * [message]: The message with the file.
  /// * [addDate]: Point in time (Unix timestamp) when the file was added to the download list.
  /// * [completeDate]: Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed.
  /// * [isPaused]: True, if downloading of the file is paused.
  const FileDownload({
    required this.fileId,
    required this.message,
    required this.addDate,
    required this.completeDate,
    required this.isPaused,
  });
  
  /// File identifier
  final int fileId;

  /// The message with the file
  final Message message;

  /// Point in time (Unix timestamp) when the file was added to the download list
  final int addDate;

  /// Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
  final int completeDate;

  /// True, if downloading of the file is paused
  final bool isPaused;
  
  /// Parse from a json
  factory FileDownload.fromJson(Map<String, dynamic> json) => FileDownload(
    fileId: json['file_id'],
    message: Message.fromJson(json['message']),
    addDate: json['add_date'],
    completeDate: json['complete_date'],
    isPaused: json['is_paused'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file_id": fileId,
      "message": message.toJson(),
      "add_date": addDate,
      "complete_date": completeDate,
      "is_paused": isPaused,
		};
	}

  
  FileDownload copyWith({
    int? fileId,
    Message? message,
    int? addDate,
    int? completeDate,
    bool? isPaused,
  }) => FileDownload(
    fileId: fileId ?? this.fileId,
    message: message ?? this.message,
    addDate: addDate ?? this.addDate,
    completeDate: completeDate ?? this.completeDate,
    isPaused: isPaused ?? this.isPaused,
  );

  static const String objectType = 'fileDownload';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
