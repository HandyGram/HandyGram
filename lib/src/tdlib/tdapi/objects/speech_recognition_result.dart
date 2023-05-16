part of '../tdapi.dart';

/// **SpeechRecognitionResult** *(speechRecognitionResult)* - parent
///
/// Describes result of speech recognition in a voice note.
sealed class SpeechRecognitionResult extends TdObject {
  
  /// **SpeechRecognitionResult** *(speechRecognitionResult)* - parent
  ///
  /// Describes result of speech recognition in a voice note.
  const SpeechRecognitionResult();
  
  /// a SpeechRecognitionResult return type can be :
  /// * [SpeechRecognitionResultPending]
  /// * [SpeechRecognitionResultText]
  /// * [SpeechRecognitionResultError]
  factory SpeechRecognitionResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SpeechRecognitionResultPending.objectType:
        return SpeechRecognitionResultPending.fromJson(json);
      case SpeechRecognitionResultText.objectType:
        return SpeechRecognitionResultText.fromJson(json);
      case SpeechRecognitionResultError.objectType:
        return SpeechRecognitionResultError.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of SpeechRecognitionResult)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  SpeechRecognitionResult copyWith();

  static const String objectType = 'speechRecognitionResult';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SpeechRecognitionResultPending** *(speechRecognitionResultPending)* - child of SpeechRecognitionResult
///
/// The speech recognition is ongoing.
///
/// * [partialText]: Partially recognized text.
final class SpeechRecognitionResultPending extends SpeechRecognitionResult {
  
  /// **SpeechRecognitionResultPending** *(speechRecognitionResultPending)* - child of SpeechRecognitionResult
  ///
  /// The speech recognition is ongoing.
  ///
  /// * [partialText]: Partially recognized text.
  const SpeechRecognitionResultPending({
    required this.partialText,
  });
  
  /// Partially recognized text
  final String partialText;
  
  /// Parse from a json
  factory SpeechRecognitionResultPending.fromJson(Map<String, dynamic> json) => SpeechRecognitionResultPending(
    partialText: json['partial_text'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "partial_text": partialText,
		};
	}

  
  @override
  SpeechRecognitionResultPending copyWith({
    String? partialText,
  }) => SpeechRecognitionResultPending(
    partialText: partialText ?? this.partialText,
  );

  static const String objectType = 'speechRecognitionResultPending';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SpeechRecognitionResultText** *(speechRecognitionResultText)* - child of SpeechRecognitionResult
///
/// The speech recognition successfully finished.
///
/// * [text]: Recognized text.
final class SpeechRecognitionResultText extends SpeechRecognitionResult {
  
  /// **SpeechRecognitionResultText** *(speechRecognitionResultText)* - child of SpeechRecognitionResult
  ///
  /// The speech recognition successfully finished.
  ///
  /// * [text]: Recognized text.
  const SpeechRecognitionResultText({
    required this.text,
  });
  
  /// Recognized text
  final String text;
  
  /// Parse from a json
  factory SpeechRecognitionResultText.fromJson(Map<String, dynamic> json) => SpeechRecognitionResultText(
    text: json['text'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
		};
	}

  
  @override
  SpeechRecognitionResultText copyWith({
    String? text,
  }) => SpeechRecognitionResultText(
    text: text ?? this.text,
  );

  static const String objectType = 'speechRecognitionResultText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SpeechRecognitionResultError** *(speechRecognitionResultError)* - child of SpeechRecognitionResult
///
/// The speech recognition failed.
///
/// * [error]: Received error.
final class SpeechRecognitionResultError extends SpeechRecognitionResult {
  
  /// **SpeechRecognitionResultError** *(speechRecognitionResultError)* - child of SpeechRecognitionResult
  ///
  /// The speech recognition failed.
  ///
  /// * [error]: Received error.
  const SpeechRecognitionResultError({
    required this.error,
  });
  
  /// Received error
  final TdError error;
  
  /// Parse from a json
  factory SpeechRecognitionResultError.fromJson(Map<String, dynamic> json) => SpeechRecognitionResultError(
    error: TdError.fromJson(json['error']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "error": error.toJson(),
		};
	}

  
  @override
  SpeechRecognitionResultError copyWith({
    TdError? error,
  }) => SpeechRecognitionResultError(
    error: error ?? this.error,
  );

  static const String objectType = 'speechRecognitionResultError';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
