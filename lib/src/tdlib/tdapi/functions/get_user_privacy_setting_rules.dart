part of '../tdapi.dart';

/// **GetUserPrivacySettingRules** *(getUserPrivacySettingRules)* - TDLib function
  ///
  /// Returns the current privacy settings.
  ///
  /// * [setting]: The privacy setting.
  ///
  /// [UserPrivacySettingRules] is returned on completion.
class GetUserPrivacySettingRules extends TdFunction {
  
  /// **GetUserPrivacySettingRules** *(getUserPrivacySettingRules)* - TDLib function
  ///
  /// Returns the current privacy settings.
  ///
  /// * [setting]: The privacy setting.
  ///
  /// [UserPrivacySettingRules] is returned on completion.
  const GetUserPrivacySettingRules({
    required this.setting,
  });
  
  /// The privacy setting
  final UserPrivacySetting setting;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "setting": setting.toJson(),
      "@extra": extra,
    };
  }
  
  GetUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
  }) => GetUserPrivacySettingRules(
    setting: setting ?? this.setting,
  );

  static const String constructor = 'getUserPrivacySettingRules';
  
  @override
  String getConstructor() => constructor;
}
