part of '../tdapi.dart';

/// **SetDefaultGroupAdministratorRights** *(setDefaultGroupAdministratorRights)* - TDLib function
  ///
  /// Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only.
  ///
  /// * [defaultGroupAdministratorRights]: Default administrator rights for adding the bot to basic group and supergroup chats; may be null *(optional)*.
  ///
  /// [Ok] is returned on completion.
class SetDefaultGroupAdministratorRights extends TdFunction {
  
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
      "@type": constructor,
      "default_group_administrator_rights": defaultGroupAdministratorRights?.toJson(),
      "@extra": extra,
    };
  }
  
  SetDefaultGroupAdministratorRights copyWith({
    ChatAdministratorRights? defaultGroupAdministratorRights,
  }) => SetDefaultGroupAdministratorRights(
    defaultGroupAdministratorRights: defaultGroupAdministratorRights ?? this.defaultGroupAdministratorRights,
  );

  static const String constructor = 'setDefaultGroupAdministratorRights';
  
  @override
  String getConstructor() => constructor;
}
