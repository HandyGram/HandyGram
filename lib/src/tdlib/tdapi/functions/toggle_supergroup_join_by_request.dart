part of '../tdapi.dart';

/// **ToggleSupergroupJoinByRequest** *(toggleSupergroupJoinByRequest)* - TDLib function
  ///
  /// Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators; requires can_restrict_members administrator right.
  ///
  /// * [supergroupId]: Identifier of the channel.
  /// * [joinByRequest]: New value of join_by_request.
  ///
  /// [Ok] is returned on completion.
class ToggleSupergroupJoinByRequest extends TdFunction {
  
  /// **ToggleSupergroupJoinByRequest** *(toggleSupergroupJoinByRequest)* - TDLib function
  ///
  /// Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators; requires can_restrict_members administrator right.
  ///
  /// * [supergroupId]: Identifier of the channel.
  /// * [joinByRequest]: New value of join_by_request.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupJoinByRequest({
    required this.supergroupId,
    required this.joinByRequest,
  });
  
  /// Identifier of the channel 
  final int supergroupId;

  /// New value of join_by_request
  final bool joinByRequest;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "supergroup_id": supergroupId,
      "join_by_request": joinByRequest,
      "@extra": extra,
    };
  }
  
  ToggleSupergroupJoinByRequest copyWith({
    int? supergroupId,
    bool? joinByRequest,
  }) => ToggleSupergroupJoinByRequest(
    supergroupId: supergroupId ?? this.supergroupId,
    joinByRequest: joinByRequest ?? this.joinByRequest,
  );

  static const String constructor = 'toggleSupergroupJoinByRequest';
  
  @override
  String getConstructor() => constructor;
}
