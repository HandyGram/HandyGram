part of '../tdapi.dart';

/// **GetStorageStatisticsFast** *(getStorageStatisticsFast)* - TDLib function
///
/// Quickly returns approximate storage usage statistics. Can be called before authorization.
///
/// [StorageStatisticsFast] is returned on completion.
final class GetStorageStatisticsFast extends TdFunction {
  
  /// **GetStorageStatisticsFast** *(getStorageStatisticsFast)* - TDLib function
  ///
  /// Quickly returns approximate storage usage statistics. Can be called before authorization.
  ///
  /// [StorageStatisticsFast] is returned on completion.
  const GetStorageStatisticsFast();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetStorageStatisticsFast copyWith() => const GetStorageStatisticsFast();

  static const String objectType = 'getStorageStatisticsFast';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
