part of '../tdapi.dart';

/// **LogVerbosityLevel** *(logVerbosityLevel)* - basic class
///
/// Contains a TDLib internal log verbosity level.
///
/// * [verbosityLevel]: Log verbosity level.
final class LogVerbosityLevel extends TdObject {
  
  /// **LogVerbosityLevel** *(logVerbosityLevel)* - basic class
  ///
  /// Contains a TDLib internal log verbosity level.
  ///
  /// * [verbosityLevel]: Log verbosity level.
  const LogVerbosityLevel({
    required this.verbosityLevel,
    this.extra,
    this.clientId,
  });
  
  /// Log verbosity level
  final int verbosityLevel;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LogVerbosityLevel.fromJson(Map<String, dynamic> json) => LogVerbosityLevel(
    verbosityLevel: json['verbosity_level'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "verbosity_level": verbosityLevel,
		};
	}

  
  LogVerbosityLevel copyWith({
    int? verbosityLevel,
    dynamic extra,
    int? clientId,
  }) => LogVerbosityLevel(
    verbosityLevel: verbosityLevel ?? this.verbosityLevel,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'logVerbosityLevel';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
