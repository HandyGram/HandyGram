part of '../tdapi.dart';

/// **ReorderSupergroupActiveUsernames** *(reorderSupergroupActiveUsernames)* - TDLib function
///
/// Changes order of active usernames of a supergroup or channel, requires owner privileges in the supergroup or channel.
///
/// * [supergroupId]: Identifier of the supergroup or channel.
/// * [usernames]: The new order of active usernames. All currently active usernames must be specified.
///
/// [Ok] is returned on completion.
final class ReorderSupergroupActiveUsernames extends TdFunction {
  
  /// **ReorderSupergroupActiveUsernames** *(reorderSupergroupActiveUsernames)* - TDLib function
  ///
  /// Changes order of active usernames of a supergroup or channel, requires owner privileges in the supergroup or channel.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
  /// * [usernames]: The new order of active usernames. All currently active usernames must be specified.
  ///
  /// [Ok] is returned on completion.
  const ReorderSupergroupActiveUsernames({
    required this.supergroupId,
    required this.usernames,
  });
  
  /// Identifier of the supergroup or channel 
  final int supergroupId;

  /// The new order of active usernames. All currently active usernames must be specified
  final List<String> usernames;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "usernames": usernames.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  ReorderSupergroupActiveUsernames copyWith({
    int? supergroupId,
    List<String>? usernames,
  }) => ReorderSupergroupActiveUsernames(
    supergroupId: supergroupId ?? this.supergroupId,
    usernames: usernames ?? this.usernames,
  );

  static const String objectType = 'reorderSupergroupActiveUsernames';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
