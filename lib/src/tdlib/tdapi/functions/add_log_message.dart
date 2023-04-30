part of '../tdapi.dart';

/// **AddLogMessage** *(addLogMessage)* - TDLib function
  ///
  /// Adds a message to TDLib internal log. Can be called synchronously.
  ///
  /// * [verbosityLevel]: The minimum verbosity level needed for the message to be logged; 0-1023.
  /// * [text]: Text of a message to log.
  ///
  /// [Ok] is returned on completion.
class AddLogMessage extends TdFunction {
  
  /// **AddLogMessage** *(addLogMessage)* - TDLib function
  ///
  /// Adds a message to TDLib internal log. Can be called synchronously.
  ///
  /// * [verbosityLevel]: The minimum verbosity level needed for the message to be logged; 0-1023.
  /// * [text]: Text of a message to log.
  ///
  /// [Ok] is returned on completion.
  const AddLogMessage({
    required this.verbosityLevel,
    required this.text,
  });
  
  /// The minimum verbosity level needed for the message to be logged; 0-1023
  final int verbosityLevel;

  /// Text of a message to log
  final String text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "verbosity_level": verbosityLevel,
      "text": text,
      "@extra": extra,
    };
  }
  
  AddLogMessage copyWith({
    int? verbosityLevel,
    String? text,
  }) => AddLogMessage(
    verbosityLevel: verbosityLevel ?? this.verbosityLevel,
    text: text ?? this.text,
  );

  static const String constructor = 'addLogMessage';
  
  @override
  String getConstructor() => constructor;
}
