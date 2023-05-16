part of '../tdapi.dart';

/// **ToggleSupergroupIsForum** *(toggleSupergroupIsForum)* - TDLib function
///
/// Toggles whether the supergroup is a forum; requires owner privileges in the supergroup. Discussion supergroups can't be converted to forums.
///
/// * [supergroupId]: Identifier of the supergroup.
/// * [isForum]: New value of is_forum.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupIsForum extends TdFunction {
  
  /// **ToggleSupergroupIsForum** *(toggleSupergroupIsForum)* - TDLib function
  ///
  /// Toggles whether the supergroup is a forum; requires owner privileges in the supergroup. Discussion supergroups can't be converted to forums.
  ///
  /// * [supergroupId]: Identifier of the supergroup.
  /// * [isForum]: New value of is_forum.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupIsForum({
    required this.supergroupId,
    required this.isForum,
  });
  
  /// Identifier of the supergroup 
  final int supergroupId;

  /// New value of is_forum
  final bool isForum;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "is_forum": isForum,
      "@extra": extra,
		};
	}

  
  ToggleSupergroupIsForum copyWith({
    int? supergroupId,
    bool? isForum,
  }) => ToggleSupergroupIsForum(
    supergroupId: supergroupId ?? this.supergroupId,
    isForum: isForum ?? this.isForum,
  );

  static const String objectType = 'toggleSupergroupIsForum';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
