part of '../tdapi.dart';

/// **SetUsername** *(setUsername)* - TDLib function
///
/// Changes the editable username of the current user.
///
/// * [username]: The new value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username.
///
/// [Ok] is returned on completion.
final class SetUsername extends TdFunction {
  
  /// **SetUsername** *(setUsername)* - TDLib function
  ///
  /// Changes the editable username of the current user.
  ///
  /// * [username]: The new value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username.
  ///
  /// [Ok] is returned on completion.
  const SetUsername({
    required this.username,
  });
  
  /// The new value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username
  final String username;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "username": username,
      "@extra": extra,
		};
	}

  
  SetUsername copyWith({
    String? username,
  }) => SetUsername(
    username: username ?? this.username,
  );

  static const String objectType = 'setUsername';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
