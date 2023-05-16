part of '../tdapi.dart';

/// **ToggleSupergroupHasAggressiveAntiSpamEnabled** *(toggleSupergroupHasAggressiveAntiSpamEnabled)* - TDLib function
///
/// Toggles whether aggressive anti-spam checks are enabled in the supergroup. Can be called only if supergroupFullInfo.can_toggle_aggressive_anti_spam == true.
///
/// * [supergroupId]: The identifier of the supergroup, which isn't a broadcast group.
/// * [hasAggressiveAntiSpamEnabled]: The new value of has_aggressive_anti_spam_enabled.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupHasAggressiveAntiSpamEnabled extends TdFunction {
  
  /// **ToggleSupergroupHasAggressiveAntiSpamEnabled** *(toggleSupergroupHasAggressiveAntiSpamEnabled)* - TDLib function
  ///
  /// Toggles whether aggressive anti-spam checks are enabled in the supergroup. Can be called only if supergroupFullInfo.can_toggle_aggressive_anti_spam == true.
  ///
  /// * [supergroupId]: The identifier of the supergroup, which isn't a broadcast group.
  /// * [hasAggressiveAntiSpamEnabled]: The new value of has_aggressive_anti_spam_enabled.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupHasAggressiveAntiSpamEnabled({
    required this.supergroupId,
    required this.hasAggressiveAntiSpamEnabled,
  });
  
  /// The identifier of the supergroup, which isn't a broadcast group
  final int supergroupId;

  /// The new value of has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "has_aggressive_anti_spam_enabled": hasAggressiveAntiSpamEnabled,
      "@extra": extra,
		};
	}

  
  ToggleSupergroupHasAggressiveAntiSpamEnabled copyWith({
    int? supergroupId,
    bool? hasAggressiveAntiSpamEnabled,
  }) => ToggleSupergroupHasAggressiveAntiSpamEnabled(
    supergroupId: supergroupId ?? this.supergroupId,
    hasAggressiveAntiSpamEnabled: hasAggressiveAntiSpamEnabled ?? this.hasAggressiveAntiSpamEnabled,
  );

  static const String objectType = 'toggleSupergroupHasAggressiveAntiSpamEnabled';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
