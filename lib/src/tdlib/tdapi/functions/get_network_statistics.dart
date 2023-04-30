part of '../tdapi.dart';

/// **GetNetworkStatistics** *(getNetworkStatistics)* - TDLib function
  ///
  /// Returns network data usage statistics. Can be called before authorization.
  ///
  /// * [onlyCurrent]: Pass true to get statistics only for the current library launch.
  ///
  /// [NetworkStatistics] is returned on completion.
class GetNetworkStatistics extends TdFunction {
  
  /// **GetNetworkStatistics** *(getNetworkStatistics)* - TDLib function
  ///
  /// Returns network data usage statistics. Can be called before authorization.
  ///
  /// * [onlyCurrent]: Pass true to get statistics only for the current library launch.
  ///
  /// [NetworkStatistics] is returned on completion.
  const GetNetworkStatistics({
    required this.onlyCurrent,
  });
  
  /// Pass true to get statistics only for the current library launch
  final bool onlyCurrent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "only_current": onlyCurrent,
      "@extra": extra,
    };
  }
  
  GetNetworkStatistics copyWith({
    bool? onlyCurrent,
  }) => GetNetworkStatistics(
    onlyCurrent: onlyCurrent ?? this.onlyCurrent,
  );

  static const String constructor = 'getNetworkStatistics';
  
  @override
  String getConstructor() => constructor;
}
