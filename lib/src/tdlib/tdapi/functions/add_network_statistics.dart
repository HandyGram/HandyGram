part of '../tdapi.dart';

/// **AddNetworkStatistics** *(addNetworkStatistics)* - TDLib function
///
/// Adds the specified data to data usage statistics. Can be called before authorization.
///
/// * [entry]: The network statistics entry with the data to be added to statistics.
///
/// [Ok] is returned on completion.
final class AddNetworkStatistics extends TdFunction {
  
  /// **AddNetworkStatistics** *(addNetworkStatistics)* - TDLib function
  ///
  /// Adds the specified data to data usage statistics. Can be called before authorization.
  ///
  /// * [entry]: The network statistics entry with the data to be added to statistics.
  ///
  /// [Ok] is returned on completion.
  const AddNetworkStatistics({
    required this.entry,
  });
  
  /// The network statistics entry with the data to be added to statistics
  final NetworkStatisticsEntry entry;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "entry": entry.toJson(),
      "@extra": extra,
		};
	}

  
  AddNetworkStatistics copyWith({
    NetworkStatisticsEntry? entry,
  }) => AddNetworkStatistics(
    entry: entry ?? this.entry,
  );

  static const String objectType = 'addNetworkStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
