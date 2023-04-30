part of '../tdapi.dart';

/// **GetSupergroup** *(getSupergroup)* - TDLib function
  ///
  /// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot.
  ///
  /// * [supergroupId]: Supergroup or channel identifier.
  ///
  /// [Supergroup] is returned on completion.
class GetSupergroup extends TdFunction {
  
  /// **GetSupergroup** *(getSupergroup)* - TDLib function
  ///
  /// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot.
  ///
  /// * [supergroupId]: Supergroup or channel identifier.
  ///
  /// [Supergroup] is returned on completion.
  const GetSupergroup({
    required this.supergroupId,
  });
  
  /// Supergroup or channel identifier
  final int supergroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "supergroup_id": supergroupId,
      "@extra": extra,
    };
  }
  
  GetSupergroup copyWith({
    int? supergroupId,
  }) => GetSupergroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const String constructor = 'getSupergroup';
  
  @override
  String getConstructor() => constructor;
}
