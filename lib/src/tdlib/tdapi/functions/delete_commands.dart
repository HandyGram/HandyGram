part of '../tdapi.dart';

/// **DeleteCommands** *(deleteCommands)* - TDLib function
///
/// Deletes commands supported by the bot for the given user scope and language; for bots only.
///
/// * [scope]: The scope to which the commands are relevant; pass null to delete commands in the default bot command scope *(optional)*.
/// * [languageCode]: A two-letter ISO 639-1 language code or an empty string.
///
/// [Ok] is returned on completion.
final class DeleteCommands extends TdFunction {
  
  /// **DeleteCommands** *(deleteCommands)* - TDLib function
  ///
  /// Deletes commands supported by the bot for the given user scope and language; for bots only.
  ///
  /// * [scope]: The scope to which the commands are relevant; pass null to delete commands in the default bot command scope *(optional)*.
  /// * [languageCode]: A two-letter ISO 639-1 language code or an empty string.
  ///
  /// [Ok] is returned on completion.
  const DeleteCommands({
    this.scope,
    required this.languageCode,
  });
  
  /// The scope to which the commands are relevant; pass null to delete commands in the default bot command scope
  final BotCommandScope? scope;

  /// A two-letter ISO 639-1 language code or an empty string
  final String languageCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "scope": scope?.toJson(),
      "language_code": languageCode,
      "@extra": extra,
		};
	}

  
  DeleteCommands copyWith({
    BotCommandScope? scope,
    String? languageCode,
  }) => DeleteCommands(
    scope: scope ?? this.scope,
    languageCode: languageCode ?? this.languageCode,
  );

  static const String objectType = 'deleteCommands';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
