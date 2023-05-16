part of '../tdapi.dart';

/// **GetLocalizationTargetInfo** *(getLocalizationTargetInfo)* - TDLib function
///
/// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization.
///
/// * [onlyLocal]: Pass true to get only locally available information without sending network requests.
///
/// [LocalizationTargetInfo] is returned on completion.
final class GetLocalizationTargetInfo extends TdFunction {
  
  /// **GetLocalizationTargetInfo** *(getLocalizationTargetInfo)* - TDLib function
  ///
  /// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization.
  ///
  /// * [onlyLocal]: Pass true to get only locally available information without sending network requests.
  ///
  /// [LocalizationTargetInfo] is returned on completion.
  const GetLocalizationTargetInfo({
    required this.onlyLocal,
  });
  
  /// Pass true to get only locally available information without sending network requests
  final bool onlyLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "only_local": onlyLocal,
      "@extra": extra,
		};
	}

  
  GetLocalizationTargetInfo copyWith({
    bool? onlyLocal,
  }) => GetLocalizationTargetInfo(
    onlyLocal: onlyLocal ?? this.onlyLocal,
  );

  static const String objectType = 'getLocalizationTargetInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
