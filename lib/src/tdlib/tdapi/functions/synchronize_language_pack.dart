part of '../tdapi.dart';

/// **SynchronizeLanguagePack** *(synchronizeLanguagePack)* - TDLib function
///
/// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the current used/base language packs. Can be called before authorization.
///
/// * [languagePackId]: Language pack identifier.
///
/// [Ok] is returned on completion.
final class SynchronizeLanguagePack extends TdFunction {
  
  /// **SynchronizeLanguagePack** *(synchronizeLanguagePack)* - TDLib function
  ///
  /// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the current used/base language packs. Can be called before authorization.
  ///
  /// * [languagePackId]: Language pack identifier.
  ///
  /// [Ok] is returned on completion.
  const SynchronizeLanguagePack({
    required this.languagePackId,
  });
  
  /// Language pack identifier
  final String languagePackId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "language_pack_id": languagePackId,
      "@extra": extra,
		};
	}

  
  SynchronizeLanguagePack copyWith({
    String? languagePackId,
  }) => SynchronizeLanguagePack(
    languagePackId: languagePackId ?? this.languagePackId,
  );

  static const String objectType = 'synchronizeLanguagePack';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
