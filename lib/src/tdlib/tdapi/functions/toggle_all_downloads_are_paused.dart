part of '../tdapi.dart';

/// **ToggleAllDownloadsArePaused** *(toggleAllDownloadsArePaused)* - TDLib function
///
/// Changes pause state of all files in the file download list.
///
/// * [arePaused]: Pass true to pause all downloads; pass false to unpause them.
///
/// [Ok] is returned on completion.
final class ToggleAllDownloadsArePaused extends TdFunction {
  
  /// **ToggleAllDownloadsArePaused** *(toggleAllDownloadsArePaused)* - TDLib function
  ///
  /// Changes pause state of all files in the file download list.
  ///
  /// * [arePaused]: Pass true to pause all downloads; pass false to unpause them.
  ///
  /// [Ok] is returned on completion.
  const ToggleAllDownloadsArePaused({
    required this.arePaused,
  });
  
  /// Pass true to pause all downloads; pass false to unpause them
  final bool arePaused;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "are_paused": arePaused,
      "@extra": extra,
		};
	}

  
  ToggleAllDownloadsArePaused copyWith({
    bool? arePaused,
  }) => ToggleAllDownloadsArePaused(
    arePaused: arePaused ?? this.arePaused,
  );

  static const String objectType = 'toggleAllDownloadsArePaused';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
