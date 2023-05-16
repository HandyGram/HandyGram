part of '../tdapi.dart';

/// **GetSupergroupMembers** *(getSupergroupMembers)* - TDLib function
///
/// Returns information about members or banned users in a supergroup or channel. Can be used only if supergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters.
///
/// * [supergroupId]: Identifier of the supergroup or channel.
/// * [filter]: The type of users to return; pass null to use supergroupMembersFilterRecent *(optional)*.
/// * [offset]: Number of users to skip.
/// * [limit]: The maximum number of users be returned; up to 200.
///
/// [ChatMembers] is returned on completion.
final class GetSupergroupMembers extends TdFunction {
  
  /// **GetSupergroupMembers** *(getSupergroupMembers)* - TDLib function
  ///
  /// Returns information about members or banned users in a supergroup or channel. Can be used only if supergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
  /// * [filter]: The type of users to return; pass null to use supergroupMembersFilterRecent *(optional)*.
  /// * [offset]: Number of users to skip.
  /// * [limit]: The maximum number of users be returned; up to 200.
  ///
  /// [ChatMembers] is returned on completion.
  const GetSupergroupMembers({
    required this.supergroupId,
    this.filter,
    required this.offset,
    required this.limit,
  });
  
  /// Identifier of the supergroup or channel
  final int supergroupId;

  /// The type of users to return; pass null to use supergroupMembersFilterRecent
  final SupergroupMembersFilter? filter;

  /// Number of users to skip
  final int offset;

  /// The maximum number of users be returned; up to 200
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "filter": filter?.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetSupergroupMembers copyWith({
    int? supergroupId,
    SupergroupMembersFilter? filter,
    int? offset,
    int? limit,
  }) => GetSupergroupMembers(
    supergroupId: supergroupId ?? this.supergroupId,
    filter: filter ?? this.filter,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getSupergroupMembers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
