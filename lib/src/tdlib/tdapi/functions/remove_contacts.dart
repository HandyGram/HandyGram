part of '../tdapi.dart';

/// **RemoveContacts** *(removeContacts)* - TDLib function
  ///
  /// Removes users from the contact list.
  ///
  /// * [userIds]: Identifiers of users to be deleted.
  ///
  /// [Ok] is returned on completion.
class RemoveContacts extends TdFunction {
  
  /// **RemoveContacts** *(removeContacts)* - TDLib function
  ///
  /// Removes users from the contact list.
  ///
  /// * [userIds]: Identifiers of users to be deleted.
  ///
  /// [Ok] is returned on completion.
  const RemoveContacts({
    required this.userIds,
  });
  
  /// Identifiers of users to be deleted
  final List<int> userIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_ids": userIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  RemoveContacts copyWith({
    List<int>? userIds,
  }) => RemoveContacts(
    userIds: userIds ?? this.userIds,
  );

  static const String constructor = 'removeContacts';
  
  @override
  String getConstructor() => constructor;
}
