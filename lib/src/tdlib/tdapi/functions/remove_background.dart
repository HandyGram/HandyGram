part of '../tdapi.dart';

/// **RemoveBackground** *(removeBackground)* - TDLib function
///
/// Removes background from the list of installed backgrounds.
///
/// * [backgroundId]: The background identifier.
///
/// [Ok] is returned on completion.
final class RemoveBackground extends TdFunction {
  
  /// **RemoveBackground** *(removeBackground)* - TDLib function
  ///
  /// Removes background from the list of installed backgrounds.
  ///
  /// * [backgroundId]: The background identifier.
  ///
  /// [Ok] is returned on completion.
  const RemoveBackground({
    required this.backgroundId,
  });
  
  /// The background identifier
  final int backgroundId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "background_id": backgroundId,
      "@extra": extra,
		};
	}

  
  RemoveBackground copyWith({
    int? backgroundId,
  }) => RemoveBackground(
    backgroundId: backgroundId ?? this.backgroundId,
  );

  static const String objectType = 'removeBackground';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
