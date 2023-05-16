part of '../tdapi.dart';

/// **DisableAllSupergroupUsernames** *(disableAllSupergroupUsernames)* - TDLib function
///
/// Disables all active non-editable usernames of a supergroup or channel, requires owner privileges in the supergroup or channel.
///
/// * [supergroupId]: Identifier of the supergroup or channel.
///
/// [Ok] is returned on completion.
final class DisableAllSupergroupUsernames extends TdFunction {
  
  /// **DisableAllSupergroupUsernames** *(disableAllSupergroupUsernames)* - TDLib function
  ///
  /// Disables all active non-editable usernames of a supergroup or channel, requires owner privileges in the supergroup or channel.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
  ///
  /// [Ok] is returned on completion.
  const DisableAllSupergroupUsernames({
    required this.supergroupId,
  });
  
  /// Identifier of the supergroup or channel
  final int supergroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "@extra": extra,
		};
	}

  
  DisableAllSupergroupUsernames copyWith({
    int? supergroupId,
  }) => DisableAllSupergroupUsernames(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const String objectType = 'disableAllSupergroupUsernames';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
