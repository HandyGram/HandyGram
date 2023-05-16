part of '../tdapi.dart';

/// **GetDatabaseStatistics** *(getDatabaseStatistics)* - TDLib function
///
/// Returns database statistics.
///
/// [DatabaseStatistics] is returned on completion.
final class GetDatabaseStatistics extends TdFunction {
  
  /// **GetDatabaseStatistics** *(getDatabaseStatistics)* - TDLib function
  ///
  /// Returns database statistics.
  ///
  /// [DatabaseStatistics] is returned on completion.
  const GetDatabaseStatistics();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetDatabaseStatistics copyWith() => const GetDatabaseStatistics();

  static const String objectType = 'getDatabaseStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
