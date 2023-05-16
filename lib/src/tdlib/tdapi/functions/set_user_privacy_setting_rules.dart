part of '../tdapi.dart';

/// **SetUserPrivacySettingRules** *(setUserPrivacySettingRules)* - TDLib function
///
/// Changes user privacy settings.
///
/// * [setting]: The privacy setting.
/// * [rules]: The new privacy rules.
///
/// [Ok] is returned on completion.
final class SetUserPrivacySettingRules extends TdFunction {
  
  /// **SetUserPrivacySettingRules** *(setUserPrivacySettingRules)* - TDLib function
  ///
  /// Changes user privacy settings.
  ///
  /// * [setting]: The privacy setting.
  /// * [rules]: The new privacy rules.
  ///
  /// [Ok] is returned on completion.
  const SetUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });
  
  /// The privacy setting 
  final UserPrivacySetting setting;

  /// The new privacy rules
  final UserPrivacySettingRules rules;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "setting": setting.toJson(),
      "rules": rules.toJson(),
      "@extra": extra,
		};
	}

  
  SetUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
    UserPrivacySettingRules? rules,
  }) => SetUserPrivacySettingRules(
    setting: setting ?? this.setting,
    rules: rules ?? this.rules,
  );

  static const String objectType = 'setUserPrivacySettingRules';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
