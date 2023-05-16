part of '../tdapi.dart';

/// **ReportSupergroupAntiSpamFalsePositive** *(reportSupergroupAntiSpamFalsePositive)* - TDLib function
///
/// Reports a false deletion of a message by aggressive anti-spam checks; requires administrator rights in the supergroup. Can be called only for messages from chatEventMessageDeleted with can_report_anti_spam_false_positive == true.
///
/// * [supergroupId]: Supergroup identifier.
/// * [messageId]: Identifier of the erroneously deleted message.
///
/// [Ok] is returned on completion.
final class ReportSupergroupAntiSpamFalsePositive extends TdFunction {
  
  /// **ReportSupergroupAntiSpamFalsePositive** *(reportSupergroupAntiSpamFalsePositive)* - TDLib function
  ///
  /// Reports a false deletion of a message by aggressive anti-spam checks; requires administrator rights in the supergroup. Can be called only for messages from chatEventMessageDeleted with can_report_anti_spam_false_positive == true.
  ///
  /// * [supergroupId]: Supergroup identifier.
  /// * [messageId]: Identifier of the erroneously deleted message.
  ///
  /// [Ok] is returned on completion.
  const ReportSupergroupAntiSpamFalsePositive({
    required this.supergroupId,
    required this.messageId,
  });
  
  /// Supergroup identifier
  final int supergroupId;

  /// Identifier of the erroneously deleted message
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "message_id": messageId,
      "@extra": extra,
		};
	}

  
  ReportSupergroupAntiSpamFalsePositive copyWith({
    int? supergroupId,
    int? messageId,
  }) => ReportSupergroupAntiSpamFalsePositive(
    supergroupId: supergroupId ?? this.supergroupId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'reportSupergroupAntiSpamFalsePositive';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
