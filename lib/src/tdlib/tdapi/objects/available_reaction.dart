part of '../tdapi.dart';

/// **AvailableReaction** *(availableReaction)* - basic class
///
/// Represents an available reaction.
///
/// * [type]: Type of the reaction.
/// * [needsPremium]: True, if Telegram Premium is needed to send the reaction.
final class AvailableReaction extends TdObject {
  
  /// **AvailableReaction** *(availableReaction)* - basic class
  ///
  /// Represents an available reaction.
  ///
  /// * [type]: Type of the reaction.
  /// * [needsPremium]: True, if Telegram Premium is needed to send the reaction.
  const AvailableReaction({
    required this.type,
    required this.needsPremium,
  });
  
  /// Type of the reaction 
  final ReactionType type;

  /// True, if Telegram Premium is needed to send the reaction
  final bool needsPremium;
  
  /// Parse from a json
  factory AvailableReaction.fromJson(Map<String, dynamic> json) => AvailableReaction(
    type: ReactionType.fromJson(json['type']),
    needsPremium: json['needs_premium'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "needs_premium": needsPremium,
		};
	}

  
  AvailableReaction copyWith({
    ReactionType? type,
    bool? needsPremium,
  }) => AvailableReaction(
    type: type ?? this.type,
    needsPremium: needsPremium ?? this.needsPremium,
  );

  static const String objectType = 'availableReaction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
