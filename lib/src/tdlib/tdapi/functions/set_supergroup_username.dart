part of '../tdapi.dart';

/// **SetSupergroupUsername** *(setSupergroupUsername)* - TDLib function
///
/// Changes the editable username of a supergroup or channel, requires owner privileges in the supergroup or channel.
///
/// * [supergroupId]: Identifier of the supergroup or channel.
/// * [username]: New value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username.
///
/// [Ok] is returned on completion.
final class SetSupergroupUsername extends TdFunction {
  
  /// **SetSupergroupUsername** *(setSupergroupUsername)* - TDLib function
  ///
  /// Changes the editable username of a supergroup or channel, requires owner privileges in the supergroup or channel.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
  /// * [username]: New value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username.
  ///
  /// [Ok] is returned on completion.
  const SetSupergroupUsername({
    required this.supergroupId,
    required this.username,
  });
  
  /// Identifier of the supergroup or channel
  final int supergroupId;

  /// New value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username
  final String username;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "username": username,
      "@extra": extra,
		};
	}

  
  SetSupergroupUsername copyWith({
    int? supergroupId,
    String? username,
  }) => SetSupergroupUsername(
    supergroupId: supergroupId ?? this.supergroupId,
    username: username ?? this.username,
  );

  static const String objectType = 'setSupergroupUsername';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
