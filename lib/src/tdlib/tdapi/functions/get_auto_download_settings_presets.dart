part of '../tdapi.dart';

/// **GetAutoDownloadSettingsPresets** *(getAutoDownloadSettingsPresets)* - TDLib function
  ///
  /// Returns auto-download settings presets for the current user.
  ///
  /// [AutoDownloadSettingsPresets] is returned on completion.
class GetAutoDownloadSettingsPresets extends TdFunction {
  
  /// **GetAutoDownloadSettingsPresets** *(getAutoDownloadSettingsPresets)* - TDLib function
  ///
  /// Returns auto-download settings presets for the current user.
  ///
  /// [AutoDownloadSettingsPresets] is returned on completion.
  const GetAutoDownloadSettingsPresets();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetAutoDownloadSettingsPresets copyWith() => const GetAutoDownloadSettingsPresets();

  static const String constructor = 'getAutoDownloadSettingsPresets';
  
  @override
  String getConstructor() => constructor;
}
