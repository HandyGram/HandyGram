part of '../tdapi.dart';

/// **GetOption** *(getOption)* - TDLib function
///
/// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization. Can be called synchronously for options "version" and "commit_hash".
///
/// * [name]: The name of the option.
///
/// [OptionValue] is returned on completion.
final class GetOption extends TdFunction {
  
  /// **GetOption** *(getOption)* - TDLib function
  ///
  /// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization. Can be called synchronously for options "version" and "commit_hash".
  ///
  /// * [name]: The name of the option.
  ///
  /// [OptionValue] is returned on completion.
  const GetOption({
    required this.name,
  });
  
  /// The name of the option
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "name": name,
      "@extra": extra,
		};
	}

  
  GetOption copyWith({
    String? name,
  }) => GetOption(
    name: name ?? this.name,
  );

  static const String objectType = 'getOption';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
