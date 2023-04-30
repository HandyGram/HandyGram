part of '../tdapi.dart';

/// **SetAutoDownloadSettings** *(setAutoDownloadSettings)* - TDLib function
  ///
  /// Sets auto-download settings.
  ///
  /// * [settings]: New user auto-download settings.
  /// * [type]: Type of the network for which the new settings are relevant.
  ///
  /// [Ok] is returned on completion.
class SetAutoDownloadSettings extends TdFunction {
  
  /// **SetAutoDownloadSettings** *(setAutoDownloadSettings)* - TDLib function
  ///
  /// Sets auto-download settings.
  ///
  /// * [settings]: New user auto-download settings.
  /// * [type]: Type of the network for which the new settings are relevant.
  ///
  /// [Ok] is returned on completion.
  const SetAutoDownloadSettings({
    required this.settings,
    required this.type,
  });
  
  /// New user auto-download settings 
  final AutoDownloadSettings settings;

  /// Type of the network for which the new settings are relevant
  final NetworkType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "settings": settings.toJson(),
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  SetAutoDownloadSettings copyWith({
    AutoDownloadSettings? settings,
    NetworkType? type,
  }) => SetAutoDownloadSettings(
    settings: settings ?? this.settings,
    type: type ?? this.type,
  );

  static const String constructor = 'setAutoDownloadSettings';
  
  @override
  String getConstructor() => constructor;
}
