part of '../tdapi.dart';

/// **SetBotUpdatesStatus** *(setBotUpdatesStatus)* - TDLib function
///
/// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only.
///
/// * [pendingUpdateCount]: The number of pending updates.
/// * [errorMessage]: The last error message.
///
/// [Ok] is returned on completion.
final class SetBotUpdatesStatus extends TdFunction {
  
  /// **SetBotUpdatesStatus** *(setBotUpdatesStatus)* - TDLib function
  ///
  /// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only.
  ///
  /// * [pendingUpdateCount]: The number of pending updates.
  /// * [errorMessage]: The last error message.
  ///
  /// [Ok] is returned on completion.
  const SetBotUpdatesStatus({
    required this.pendingUpdateCount,
    required this.errorMessage,
  });
  
  /// The number of pending updates 
  final int pendingUpdateCount;

  /// The last error message
  final String errorMessage;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "pending_update_count": pendingUpdateCount,
      "error_message": errorMessage,
      "@extra": extra,
		};
	}

  
  SetBotUpdatesStatus copyWith({
    int? pendingUpdateCount,
    String? errorMessage,
  }) => SetBotUpdatesStatus(
    pendingUpdateCount: pendingUpdateCount ?? this.pendingUpdateCount,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  static const String objectType = 'setBotUpdatesStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
