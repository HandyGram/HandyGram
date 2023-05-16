part of '../tdapi.dart';

/// **ReportSupergroupSpam** *(reportSupergroupSpam)* - TDLib function
///
/// Reports messages in a supergroup as spam; requires administrator rights in the supergroup.
///
/// * [supergroupId]: Supergroup identifier.
/// * [messageIds]: Identifiers of messages to report.
///
/// [Ok] is returned on completion.
final class ReportSupergroupSpam extends TdFunction {
  
  /// **ReportSupergroupSpam** *(reportSupergroupSpam)* - TDLib function
  ///
  /// Reports messages in a supergroup as spam; requires administrator rights in the supergroup.
  ///
  /// * [supergroupId]: Supergroup identifier.
  /// * [messageIds]: Identifiers of messages to report.
  ///
  /// [Ok] is returned on completion.
  const ReportSupergroupSpam({
    required this.supergroupId,
    required this.messageIds,
  });
  
  /// Supergroup identifier 
  final int supergroupId;

  /// Identifiers of messages to report
  final List<int> messageIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "message_ids": messageIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  ReportSupergroupSpam copyWith({
    int? supergroupId,
    List<int>? messageIds,
  }) => ReportSupergroupSpam(
    supergroupId: supergroupId ?? this.supergroupId,
    messageIds: messageIds ?? this.messageIds,
  );

  static const String objectType = 'reportSupergroupSpam';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
