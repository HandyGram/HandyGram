part of '../tdapi.dart';

/// **HideSuggestedAction** *(hideSuggestedAction)* - TDLib function
  ///
  /// Hides a suggested action.
  ///
  /// * [action]: Suggested action to hide.
  ///
  /// [Ok] is returned on completion.
class HideSuggestedAction extends TdFunction {
  
  /// **HideSuggestedAction** *(hideSuggestedAction)* - TDLib function
  ///
  /// Hides a suggested action.
  ///
  /// * [action]: Suggested action to hide.
  ///
  /// [Ok] is returned on completion.
  const HideSuggestedAction({
    required this.action,
  });
  
  /// Suggested action to hide
  final SuggestedAction action;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "action": action.toJson(),
      "@extra": extra,
    };
  }
  
  HideSuggestedAction copyWith({
    SuggestedAction? action,
  }) => HideSuggestedAction(
    action: action ?? this.action,
  );

  static const String constructor = 'hideSuggestedAction';
  
  @override
  String getConstructor() => constructor;
}
