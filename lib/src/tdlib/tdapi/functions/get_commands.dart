part of '../tdapi.dart';

/// **GetCommands** *(getCommands)* - TDLib function
  ///
  /// Returns the list of commands supported by the bot for the given user scope and language; for bots only.
  ///
  /// * [scope]: The scope to which the commands are relevant; pass null to get commands in the default bot command scope *(optional)*.
  /// * [languageCode]: A two-letter ISO 639-1 language code or an empty string.
  ///
  /// [BotCommands] is returned on completion.
class GetCommands extends TdFunction {
  
  /// **GetCommands** *(getCommands)* - TDLib function
  ///
  /// Returns the list of commands supported by the bot for the given user scope and language; for bots only.
  ///
  /// * [scope]: The scope to which the commands are relevant; pass null to get commands in the default bot command scope *(optional)*.
  /// * [languageCode]: A two-letter ISO 639-1 language code or an empty string.
  ///
  /// [BotCommands] is returned on completion.
  const GetCommands({
    this.scope,
    required this.languageCode,
  });
  
  /// The scope to which the commands are relevant; pass null to get commands in the default bot command scope
  final BotCommandScope? scope;

  /// A two-letter ISO 639-1 language code or an empty string
  final String languageCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "scope": scope?.toJson(),
      "language_code": languageCode,
      "@extra": extra,
    };
  }
  
  GetCommands copyWith({
    BotCommandScope? scope,
    String? languageCode,
  }) => GetCommands(
    scope: scope ?? this.scope,
    languageCode: languageCode ?? this.languageCode,
  );

  static const String constructor = 'getCommands';
  
  @override
  String getConstructor() => constructor;
}
