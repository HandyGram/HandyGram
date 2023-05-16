part of '../tdapi.dart';

/// **SendCallRating** *(sendCallRating)* - TDLib function
///
/// Sends a call rating.
///
/// * [callId]: Call identifier.
/// * [rating]: Call rating; 1-5.
/// * [comment]: An optional user comment if the rating is less than 5.
/// * [problems]: List of the exact types of problems with the call, specified by the user.
///
/// [Ok] is returned on completion.
final class SendCallRating extends TdFunction {
  
  /// **SendCallRating** *(sendCallRating)* - TDLib function
  ///
  /// Sends a call rating.
  ///
  /// * [callId]: Call identifier.
  /// * [rating]: Call rating; 1-5.
  /// * [comment]: An optional user comment if the rating is less than 5.
  /// * [problems]: List of the exact types of problems with the call, specified by the user.
  ///
  /// [Ok] is returned on completion.
  const SendCallRating({
    required this.callId,
    required this.rating,
    required this.comment,
    required this.problems,
  });
  
  /// Call identifier
  final int callId;

  /// Call rating; 1-5
  final int rating;

  /// An optional user comment if the rating is less than 5
  final String comment;

  /// List of the exact types of problems with the call, specified by the user
  final List<CallProblem> problems;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "call_id": callId,
      "rating": rating,
      "comment": comment,
      "problems": problems.map((i) => i.toJson()).toList(),
      "@extra": extra,
		};
	}

  
  SendCallRating copyWith({
    int? callId,
    int? rating,
    String? comment,
    List<CallProblem>? problems,
  }) => SendCallRating(
    callId: callId ?? this.callId,
    rating: rating ?? this.rating,
    comment: comment ?? this.comment,
    problems: problems ?? this.problems,
  );

  static const String objectType = 'sendCallRating';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
