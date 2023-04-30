part of '../tdapi.dart';

/// **GetDatabaseStatistics** *(getDatabaseStatistics)* - TDLib function
  ///
  /// Returns database statistics.
  ///
  /// [DatabaseStatistics] is returned on completion.
class GetDatabaseStatistics extends TdFunction {
  
  /// **GetDatabaseStatistics** *(getDatabaseStatistics)* - TDLib function
  ///
  /// Returns database statistics.
  ///
  /// [DatabaseStatistics] is returned on completion.
  const GetDatabaseStatistics();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetDatabaseStatistics copyWith() => const GetDatabaseStatistics();

  static const String constructor = 'getDatabaseStatistics';
  
  @override
  String getConstructor() => constructor;
}
