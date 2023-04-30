part of '../tdapi.dart';

/// **SetDefaultReactionType** *(setDefaultReactionType)* - TDLib function
  ///
  /// Changes type of default reaction for the current user.
  ///
  /// * [reactionType]: New type of the default reaction.
  ///
  /// [Ok] is returned on completion.
class SetDefaultReactionType extends TdFunction {
  
  /// **SetDefaultReactionType** *(setDefaultReactionType)* - TDLib function
  ///
  /// Changes type of default reaction for the current user.
  ///
  /// * [reactionType]: New type of the default reaction.
  ///
  /// [Ok] is returned on completion.
  const SetDefaultReactionType({
    required this.reactionType,
  });
  
  /// New type of the default reaction
  final ReactionType reactionType;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "reaction_type": reactionType.toJson(),
      "@extra": extra,
    };
  }
  
  SetDefaultReactionType copyWith({
    ReactionType? reactionType,
  }) => SetDefaultReactionType(
    reactionType: reactionType ?? this.reactionType,
  );

  static const String constructor = 'setDefaultReactionType';
  
  @override
  String getConstructor() => constructor;
}
