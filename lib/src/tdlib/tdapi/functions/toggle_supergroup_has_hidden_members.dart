part of '../tdapi.dart';

/// **ToggleSupergroupHasHiddenMembers** *(toggleSupergroupHasHiddenMembers)* - TDLib function
///
/// Toggles whether non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers. Can be called only if supergroupFullInfo.can_hide_members == true.
///
/// * [supergroupId]: Identifier of the supergroup.
/// * [hasHiddenMembers]: New value of has_hidden_members.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupHasHiddenMembers extends TdFunction {
  
  /// **ToggleSupergroupHasHiddenMembers** *(toggleSupergroupHasHiddenMembers)* - TDLib function
  ///
  /// Toggles whether non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers. Can be called only if supergroupFullInfo.can_hide_members == true.
  ///
  /// * [supergroupId]: Identifier of the supergroup.
  /// * [hasHiddenMembers]: New value of has_hidden_members.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupHasHiddenMembers({
    required this.supergroupId,
    required this.hasHiddenMembers,
  });
  
  /// Identifier of the supergroup
  final int supergroupId;

  /// New value of has_hidden_members
  final bool hasHiddenMembers;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "has_hidden_members": hasHiddenMembers,
      "@extra": extra,
		};
	}

  
  ToggleSupergroupHasHiddenMembers copyWith({
    int? supergroupId,
    bool? hasHiddenMembers,
  }) => ToggleSupergroupHasHiddenMembers(
    supergroupId: supergroupId ?? this.supergroupId,
    hasHiddenMembers: hasHiddenMembers ?? this.hasHiddenMembers,
  );

  static const String objectType = 'toggleSupergroupHasHiddenMembers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
