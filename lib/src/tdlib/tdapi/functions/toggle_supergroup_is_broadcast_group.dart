part of '../tdapi.dart';

/// **ToggleSupergroupIsBroadcastGroup** *(toggleSupergroupIsBroadcastGroup)* - TDLib function
  ///
  /// Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup.
  ///
  /// * [supergroupId]: Identifier of the supergroup.
  ///
  /// [Ok] is returned on completion.
class ToggleSupergroupIsBroadcastGroup extends TdFunction {
  
  /// **ToggleSupergroupIsBroadcastGroup** *(toggleSupergroupIsBroadcastGroup)* - TDLib function
  ///
  /// Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup.
  ///
  /// * [supergroupId]: Identifier of the supergroup.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupIsBroadcastGroup({
    required this.supergroupId,
  });
  
  /// Identifier of the supergroup
  final int supergroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "supergroup_id": supergroupId,
      "@extra": extra,
    };
  }
  
  ToggleSupergroupIsBroadcastGroup copyWith({
    int? supergroupId,
  }) => ToggleSupergroupIsBroadcastGroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const String constructor = 'toggleSupergroupIsBroadcastGroup';
  
  @override
  String getConstructor() => constructor;
}
