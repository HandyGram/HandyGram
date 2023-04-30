part of '../tdapi.dart';

/// **RemoveSavedAnimation** *(removeSavedAnimation)* - TDLib function
  ///
  /// Removes an animation from the list of saved animations.
  ///
  /// * [animation]: Animation file to be removed.
  ///
  /// [Ok] is returned on completion.
class RemoveSavedAnimation extends TdFunction {
  
  /// **RemoveSavedAnimation** *(removeSavedAnimation)* - TDLib function
  ///
  /// Removes an animation from the list of saved animations.
  ///
  /// * [animation]: Animation file to be removed.
  ///
  /// [Ok] is returned on completion.
  const RemoveSavedAnimation({
    required this.animation,
  });
  
  /// Animation file to be removed
  final InputFile animation;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "animation": animation.toJson(),
      "@extra": extra,
    };
  }
  
  RemoveSavedAnimation copyWith({
    InputFile? animation,
  }) => RemoveSavedAnimation(
    animation: animation ?? this.animation,
  );

  static const String constructor = 'removeSavedAnimation';
  
  @override
  String getConstructor() => constructor;
}
