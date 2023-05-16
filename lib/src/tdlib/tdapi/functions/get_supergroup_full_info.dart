part of '../tdapi.dart';

/// **GetSupergroupFullInfo** *(getSupergroupFullInfo)* - TDLib function
///
/// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute.
///
/// * [supergroupId]: Supergroup or channel identifier.
///
/// [SupergroupFullInfo] is returned on completion.
final class GetSupergroupFullInfo extends TdFunction {
  
  /// **GetSupergroupFullInfo** *(getSupergroupFullInfo)* - TDLib function
  ///
  /// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute.
  ///
  /// * [supergroupId]: Supergroup or channel identifier.
  ///
  /// [SupergroupFullInfo] is returned on completion.
  const GetSupergroupFullInfo({
    required this.supergroupId,
  });
  
  /// Supergroup or channel identifier
  final int supergroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "@extra": extra,
		};
	}

  
  GetSupergroupFullInfo copyWith({
    int? supergroupId,
  }) => GetSupergroupFullInfo(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const String objectType = 'getSupergroupFullInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
