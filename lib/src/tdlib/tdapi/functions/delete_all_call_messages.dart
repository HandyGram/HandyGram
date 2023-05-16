part of '../tdapi.dart';

/// **DeleteAllCallMessages** *(deleteAllCallMessages)* - TDLib function
///
/// Deletes all call messages.
///
/// * [revoke]: Pass true to delete the messages for all users.
///
/// [Ok] is returned on completion.
final class DeleteAllCallMessages extends TdFunction {
  
  /// **DeleteAllCallMessages** *(deleteAllCallMessages)* - TDLib function
  ///
  /// Deletes all call messages.
  ///
  /// * [revoke]: Pass true to delete the messages for all users.
  ///
  /// [Ok] is returned on completion.
  const DeleteAllCallMessages({
    required this.revoke,
  });
  
  /// Pass true to delete the messages for all users
  final bool revoke;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "revoke": revoke,
      "@extra": extra,
		};
	}

  
  DeleteAllCallMessages copyWith({
    bool? revoke,
  }) => DeleteAllCallMessages(
    revoke: revoke ?? this.revoke,
  );

  static const String objectType = 'deleteAllCallMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
