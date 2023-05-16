part of '../tdapi.dart';

/// **ToggleSupergroupIsAllHistoryAvailable** *(toggleSupergroupIsAllHistoryAvailable)* - TDLib function
///
/// Toggles whether the message history of a supergroup is available to new members; requires can_change_info administrator right.
///
/// * [supergroupId]: The identifier of the supergroup.
/// * [isAllHistoryAvailable]: The new value of is_all_history_available.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  
  /// **ToggleSupergroupIsAllHistoryAvailable** *(toggleSupergroupIsAllHistoryAvailable)* - TDLib function
  ///
  /// Toggles whether the message history of a supergroup is available to new members; requires can_change_info administrator right.
  ///
  /// * [supergroupId]: The identifier of the supergroup.
  /// * [isAllHistoryAvailable]: The new value of is_all_history_available.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupIsAllHistoryAvailable({
    required this.supergroupId,
    required this.isAllHistoryAvailable,
  });
  
  /// The identifier of the supergroup 
  final int supergroupId;

  /// The new value of is_all_history_available
  final bool isAllHistoryAvailable;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "is_all_history_available": isAllHistoryAvailable,
      "@extra": extra,
		};
	}

  
  ToggleSupergroupIsAllHistoryAvailable copyWith({
    int? supergroupId,
    bool? isAllHistoryAvailable,
  }) => ToggleSupergroupIsAllHistoryAvailable(
    supergroupId: supergroupId ?? this.supergroupId,
    isAllHistoryAvailable: isAllHistoryAvailable ?? this.isAllHistoryAvailable,
  );

  static const String objectType = 'toggleSupergroupIsAllHistoryAvailable';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
