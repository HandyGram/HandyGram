part of '../tdapi.dart';

/// **SpeechRecognitionResult** *(speechRecognitionResult)* - parent
  ///
  /// Describes result of speech recognition in a voice note.
class SpeechRecognitionResult extends TdObject {
  
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
      case SpeechRecognitionResultPending.constructor:
        return SpeechRecognitionResultPending.fromJson(json);
      case SpeechRecognitionResultText.constructor:
        return SpeechRecognitionResultText.fromJson(json);
      case SpeechRecognitionResultError.constructor:
        return SpeechRecognitionResultError.fromJson(json);
      default:
        return const SpeechRecognitionResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  SpeechRecognitionResult copyWith() => const SpeechRecognitionResult();

  static const String constructor = 'speechRecognitionResult';
  
  @override
  String getConstructor() => constructor;
}


/// **SpeechRecognitionResultPending** *(speechRecognitionResultPending)* - child of SpeechRecognitionResult
  ///
  /// The speech recognition is ongoing.
  ///
  /// * [partialText]: Partially recognized text.
class SpeechRecognitionResultPending extends SpeechRecognitionResult {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "partial_text": partialText,
    };
  }
  
  @override
  SpeechRecognitionResultPending copyWith({
    String? partialText,
  }) => SpeechRecognitionResultPending(
    partialText: partialText ?? this.partialText,
  );

  static const String constructor = 'speechRecognitionResultPending';
  
  @override
  String getConstructor() => constructor;
}


/// **SpeechRecognitionResultText** *(speechRecognitionResultText)* - child of SpeechRecognitionResult
  ///
  /// The speech recognition successfully finished.
  ///
  /// * [text]: Recognized text.
class SpeechRecognitionResultText extends SpeechRecognitionResult {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "text": text,
    };
  }
  
  @override
  SpeechRecognitionResultText copyWith({
    String? text,
  }) => SpeechRecognitionResultText(
    text: text ?? this.text,
  );

  static const String constructor = 'speechRecognitionResultText';
  
  @override
  String getConstructor() => constructor;
}


/// **SpeechRecognitionResultError** *(speechRecognitionResultError)* - child of SpeechRecognitionResult
  ///
  /// The speech recognition failed.
  ///
  /// * [error]: Received error.
class SpeechRecognitionResultError extends SpeechRecognitionResult {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "error": error.toJson(),
    };
  }
  
  @override
  SpeechRecognitionResultError copyWith({
    TdError? error,
  }) => SpeechRecognitionResultError(
    error: error ?? this.error,
  );

  static const String constructor = 'speechRecognitionResultError';
  
  @override
  String getConstructor() => constructor;
}
