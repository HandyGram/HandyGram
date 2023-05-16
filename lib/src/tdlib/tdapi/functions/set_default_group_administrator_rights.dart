part of '../tdapi.dart';

/// **SetDefaultGroupAdministratorRights** *(setDefaultGroupAdministratorRights)* - TDLib function
///
/// Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only.
///
/// * [defaultGroupAdministratorRights]: Default administrator rights for adding the bot to basic group and supergroup chats; may be null *(optional)*.
///
/// [Ok] is returned on completion.
final class SetDefaultGroupAdministratorRights extends TdFunction {
  
  /// **SetDefaultGroupAdministratorRights** *(setDefaultGroupAdministratorRights)* - TDLib function
  ///
  /// Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only.
  ///
  /// * [defaultGroupAdministratorRights]: Default administrator rights for adding the bot to basic group and supergroup chats; may be null *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetDefaultGroupAdministratorRights({
    this.defaultGroupAdministratorRights,
  });
  
  /// Default administrator rights for adding the bot to basic group and supergroup chats; may be null
  final ChatAdministratorRights? defaultGroupAdministratorRights;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "default_group_administrator_rights": defaultGroupAdministratorRights?.toJson(),
      "@extra": extra,
		};
	}

  
  SetDefaultGroupAdministratorRights copyWith({
    ChatAdministratorRights? defaultGroupAdministratorRights,
  }) => SetDefaultGroupAdministratorRights(
    defaultGroupAdministratorRights: defaultGroupAdministratorRights ?? this.defaultGroupAdministratorRights,
  );

  static const String objectType = 'setDefaultGroupAdministratorRights';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
