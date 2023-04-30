part of '../tdapi.dart';

/// **ReorderActiveUsernames** *(reorderActiveUsernames)* - TDLib function
  ///
  /// Changes order of active usernames of the current user.
  ///
  /// * [usernames]: The new order of active usernames. All currently active usernames must be specified.
  ///
  /// [Ok] is returned on completion.
class ReorderActiveUsernames extends TdFunction {
  
  /// **ReorderActiveUsernames** *(reorderActiveUsernames)* - TDLib function
  ///
  /// Changes order of active usernames of the current user.
  ///
  /// * [usernames]: The new order of active usernames. All currently active usernames must be specified.
  ///
  /// [Ok] is returned on completion.
  const ReorderActiveUsernames({
    required this.usernames,
  });
  
  /// The new order of active usernames. All currently active usernames must be specified
  final List<String> usernames;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "usernames": usernames.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  ReorderActiveUsernames copyWith({
    List<String>? usernames,
  }) => ReorderActiveUsernames(
    usernames: usernames ?? this.usernames,
  );

  static const String constructor = 'reorderActiveUsernames';
  
  @override
  String getConstructor() => constructor;
}
