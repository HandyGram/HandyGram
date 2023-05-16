part of '../tdapi.dart';

/// **DownloadedFileCounts** *(downloadedFileCounts)* - basic class
///
/// Contains number of being downloaded and recently downloaded files found.
///
/// * [activeCount]: Number of active file downloads found, including paused.
/// * [pausedCount]: Number of paused file downloads found.
/// * [completedCount]: Number of completed file downloads found.
final class DownloadedFileCounts extends TdObject {
  
  /// **DownloadedFileCounts** *(downloadedFileCounts)* - basic class
  ///
  /// Contains number of being downloaded and recently downloaded files found.
  ///
  /// * [activeCount]: Number of active file downloads found, including paused.
  /// * [pausedCount]: Number of paused file downloads found.
  /// * [completedCount]: Number of completed file downloads found.
  const DownloadedFileCounts({
    required this.activeCount,
    required this.pausedCount,
    required this.completedCount,
  });
  
  /// Number of active file downloads found, including paused
  final int activeCount;

  /// Number of paused file downloads found
  final int pausedCount;

  /// Number of completed file downloads found
  final int completedCount;
  
  /// Parse from a json
  factory DownloadedFileCounts.fromJson(Map<String, dynamic> json) => DownloadedFileCounts(
    activeCount: json['active_count'],
    pausedCount: json['paused_count'],
    completedCount: json['completed_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "active_count": activeCount,
      "paused_count": pausedCount,
      "completed_count": completedCount,
		};
	}

  
  DownloadedFileCounts copyWith({
    int? activeCount,
    int? pausedCount,
    int? completedCount,
  }) => DownloadedFileCounts(
    activeCount: activeCount ?? this.activeCount,
    pausedCount: pausedCount ?? this.pausedCount,
    completedCount: completedCount ?? this.completedCount,
  );

  static const String objectType = 'downloadedFileCounts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
