part of '../tdapi.dart';

/// **GetUserPrivacySettingRules** *(getUserPrivacySettingRules)* - TDLib function
///
/// Returns the current privacy settings.
///
/// * [setting]: The privacy setting.
///
/// [UserPrivacySettingRules] is returned on completion.
final class GetUserPrivacySettingRules extends TdFunction {
  
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
			"@type": objectType,
      "setting": setting.toJson(),
      "@extra": extra,
		};
	}

  
  GetUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
  }) => GetUserPrivacySettingRules(
    setting: setting ?? this.setting,
  );

  static const String objectType = 'getUserPrivacySettingRules';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
