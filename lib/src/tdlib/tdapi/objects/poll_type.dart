part of '../tdapi.dart';

/// **PollType** *(pollType)* - parent
///
/// Describes the type of a poll.
sealed class PollType extends TdObject {
  
  /// **PollType** *(pollType)* - parent
  ///
  /// Describes the type of a poll.
  const PollType();
  
  /// a PollType return type can be :
  /// * [PollTypeRegular]
  /// * [PollTypeQuiz]
  factory PollType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PollTypeRegular.objectType:
        return PollTypeRegular.fromJson(json);
      case PollTypeQuiz.objectType:
        return PollTypeQuiz.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PollType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PollType copyWith();

  static const String objectType = 'pollType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PollTypeRegular** *(pollTypeRegular)* - child of PollType
///
/// A regular poll.
///
/// * [allowMultipleAnswers]: True, if multiple answer options can be chosen simultaneously.
final class PollTypeRegular extends PollType {
  
  /// **PollTypeRegular** *(pollTypeRegular)* - child of PollType
  ///
  /// A regular poll.
  ///
  /// * [allowMultipleAnswers]: True, if multiple answer options can be chosen simultaneously.
  const PollTypeRegular({
    required this.allowMultipleAnswers,
  });
  
  /// True, if multiple answer options can be chosen simultaneously
  final bool allowMultipleAnswers;
  
  /// Parse from a json
  factory PollTypeRegular.fromJson(Map<String, dynamic> json) => PollTypeRegular(
    allowMultipleAnswers: json['allow_multiple_answers'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "allow_multiple_answers": allowMultipleAnswers,
		};
	}

  
  @override
  PollTypeRegular copyWith({
    bool? allowMultipleAnswers,
  }) => PollTypeRegular(
    allowMultipleAnswers: allowMultipleAnswers ?? this.allowMultipleAnswers,
  );

  static const String objectType = 'pollTypeRegular';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PollTypeQuiz** *(pollTypeQuiz)* - child of PollType
///
/// A poll in quiz mode, which has exactly one correct answer option and can be answered only once.
///
/// * [correctOptionId]: 0-based identifier of the correct answer option; -1 for a yet unanswered poll.
/// * [explanation]: Text that is shown when the user chooses an incorrect answer or taps on the lamp icon; 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll.
final class PollTypeQuiz extends PollType {
  
  /// **PollTypeQuiz** *(pollTypeQuiz)* - child of PollType
  ///
  /// A poll in quiz mode, which has exactly one correct answer option and can be answered only once.
  ///
  /// * [correctOptionId]: 0-based identifier of the correct answer option; -1 for a yet unanswered poll.
  /// * [explanation]: Text that is shown when the user chooses an incorrect answer or taps on the lamp icon; 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll.
  const PollTypeQuiz({
    required this.correctOptionId,
    required this.explanation,
  });
  
  /// 0-based identifier of the correct answer option; -1 for a yet unanswered poll
  final int correctOptionId;

  /// Text that is shown when the user chooses an incorrect answer or taps on the lamp icon; 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll
  final FormattedText explanation;
  
  /// Parse from a json
  factory PollTypeQuiz.fromJson(Map<String, dynamic> json) => PollTypeQuiz(
    correctOptionId: json['correct_option_id'],
    explanation: FormattedText.fromJson(json['explanation']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "correct_option_id": correctOptionId,
      "explanation": explanation.toJson(),
		};
	}

  
  @override
  PollTypeQuiz copyWith({
    int? correctOptionId,
    FormattedText? explanation,
  }) => PollTypeQuiz(
    correctOptionId: correctOptionId ?? this.correctOptionId,
    explanation: explanation ?? this.explanation,
  );

  static const String objectType = 'pollTypeQuiz';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
