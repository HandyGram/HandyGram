part of '../tdapi.dart';

/// **FoundFileDownloads** *(foundFileDownloads)* - basic class
///
/// Contains a list of downloaded files, found by a search.
///
/// * [totalCounts]: Total number of suitable files, ignoring offset.
/// * [files]: The list of files.
/// * [nextOffset]: The offset for the next request. If empty, there are no more results.
final class FoundFileDownloads extends TdObject {
  
  /// **FoundFileDownloads** *(foundFileDownloads)* - basic class
  ///
  /// Contains a list of downloaded files, found by a search.
  ///
  /// * [totalCounts]: Total number of suitable files, ignoring offset.
  /// * [files]: The list of files.
  /// * [nextOffset]: The offset for the next request. If empty, there are no more results.
  const FoundFileDownloads({
    required this.totalCounts,
    required this.files,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// Total number of suitable files, ignoring offset
  final DownloadedFileCounts totalCounts;

  /// The list of files
  final List<FileDownload> files;

  /// The offset for the next request. If empty, there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FoundFileDownloads.fromJson(Map<String, dynamic> json) => FoundFileDownloads(
    totalCounts: DownloadedFileCounts.fromJson(json['total_counts']),
    files: List<FileDownload>.from((json['files'] ?? []).map((item) => FileDownload.fromJson(item)).toList()),
    nextOffset: json['next_offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_counts": totalCounts.toJson(),
      "files": files.map((i) => i.toJson()).toList(),
      "next_offset": nextOffset,
		};
	}

  
  FoundFileDownloads copyWith({
    DownloadedFileCounts? totalCounts,
    List<FileDownload>? files,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => FoundFileDownloads(
    totalCounts: totalCounts ?? this.totalCounts,
    files: files ?? this.files,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'foundFileDownloads';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
