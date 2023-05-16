part of '../tdapi.dart';

/// **SearchFileDownloads** *(searchFileDownloads)* - TDLib function
///
/// Searches for files in the file download list or recently downloaded files from the list.
///
/// * [query]: Query to search for; may be empty to return all downloaded files.
/// * [onlyActive]: Pass true to search only for active downloads, including paused.
/// * [onlyCompleted]: Pass true to search only for completed downloads.
/// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
/// * [limit]: The maximum number of files to be returned.
///
/// [FoundFileDownloads] is returned on completion.
final class SearchFileDownloads extends TdFunction {
  
  /// **SearchFileDownloads** *(searchFileDownloads)* - TDLib function
  ///
  /// Searches for files in the file download list or recently downloaded files from the list.
  ///
  /// * [query]: Query to search for; may be empty to return all downloaded files.
  /// * [onlyActive]: Pass true to search only for active downloads, including paused.
  /// * [onlyCompleted]: Pass true to search only for completed downloads.
  /// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
  /// * [limit]: The maximum number of files to be returned.
  ///
  /// [FoundFileDownloads] is returned on completion.
  const SearchFileDownloads({
    required this.query,
    required this.onlyActive,
    required this.onlyCompleted,
    required this.offset,
    required this.limit,
  });
  
  /// Query to search for; may be empty to return all downloaded files
  final String query;

  /// Pass true to search only for active downloads, including paused
  final bool onlyActive;

  /// Pass true to search only for completed downloads
  final bool onlyCompleted;

  /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// The maximum number of files to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "query": query,
      "only_active": onlyActive,
      "only_completed": onlyCompleted,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  SearchFileDownloads copyWith({
    String? query,
    bool? onlyActive,
    bool? onlyCompleted,
    String? offset,
    int? limit,
  }) => SearchFileDownloads(
    query: query ?? this.query,
    onlyActive: onlyActive ?? this.onlyActive,
    onlyCompleted: onlyCompleted ?? this.onlyCompleted,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'searchFileDownloads';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
