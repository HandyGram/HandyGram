part of '../tdapi.dart';

/// **GetAutoDownloadSettingsPresets** *(getAutoDownloadSettingsPresets)* - TDLib function
///
/// Returns auto-download settings presets for the current user.
///
/// [AutoDownloadSettingsPresets] is returned on completion.
final class GetAutoDownloadSettingsPresets extends TdFunction {
  
  /// **GetAutoDownloadSettingsPresets** *(getAutoDownloadSettingsPresets)* - TDLib function
  ///
  /// Returns auto-download settings presets for the current user.
  ///
  /// [AutoDownloadSettingsPresets] is returned on completion.
  const GetAutoDownloadSettingsPresets();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetAutoDownloadSettingsPresets copyWith() => const GetAutoDownloadSettingsPresets();

  static const String objectType = 'getAutoDownloadSettingsPresets';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
