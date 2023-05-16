part of '../tdapi.dart';

/// **HideSuggestedAction** *(hideSuggestedAction)* - TDLib function
///
/// Hides a suggested action.
///
/// * [action]: Suggested action to hide.
///
/// [Ok] is returned on completion.
final class HideSuggestedAction extends TdFunction {
  
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
			"@type": objectType,
      "action": action.toJson(),
      "@extra": extra,
		};
	}

  
  HideSuggestedAction copyWith({
    SuggestedAction? action,
  }) => HideSuggestedAction(
    action: action ?? this.action,
  );

  static const String objectType = 'hideSuggestedAction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
