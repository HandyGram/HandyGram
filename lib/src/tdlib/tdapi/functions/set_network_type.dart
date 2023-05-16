part of '../tdapi.dart';

/// **SetNetworkType** *(setNetworkType)* - TDLib function
///
/// Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks,. so it must be called whenever the network is changed, even if the network type remains the same. Network type is used to check whether the library can use the network at all and also for collecting detailed network data usage statistics.
///
/// * [type]: The new network type; pass null to set network type to networkTypeOther *(optional)*.
///
/// [Ok] is returned on completion.
final class SetNetworkType extends TdFunction {
  
  /// **SetNetworkType** *(setNetworkType)* - TDLib function
  ///
  /// Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks,. so it must be called whenever the network is changed, even if the network type remains the same. Network type is used to check whether the library can use the network at all and also for collecting detailed network data usage statistics.
  ///
  /// * [type]: The new network type; pass null to set network type to networkTypeOther *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetNetworkType({
    this.type,
  });
  
  /// The new network type; pass null to set network type to networkTypeOther
  final NetworkType? type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "type": type?.toJson(),
      "@extra": extra,
		};
	}

  
  SetNetworkType copyWith({
    NetworkType? type,
  }) => SetNetworkType(
    type: type ?? this.type,
  );

  static const String objectType = 'setNetworkType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
