part of '../tdapi.dart';

/// **SetDefaultChannelAdministratorRights** *(setDefaultChannelAdministratorRights)* - TDLib function
///
/// Sets default administrator rights for adding the bot to channel chats; for bots only.
///
/// * [defaultChannelAdministratorRights]: Default administrator rights for adding the bot to channels; may be null *(optional)*.
///
/// [Ok] is returned on completion.
final class SetDefaultChannelAdministratorRights extends TdFunction {
  
  /// **SetDefaultChannelAdministratorRights** *(setDefaultChannelAdministratorRights)* - TDLib function
  ///
  /// Sets default administrator rights for adding the bot to channel chats; for bots only.
  ///
  /// * [defaultChannelAdministratorRights]: Default administrator rights for adding the bot to channels; may be null *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetDefaultChannelAdministratorRights({
    this.defaultChannelAdministratorRights,
  });
  
  /// Default administrator rights for adding the bot to channels; may be null
  final ChatAdministratorRights? defaultChannelAdministratorRights;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "default_channel_administrator_rights": defaultChannelAdministratorRights?.toJson(),
      "@extra": extra,
		};
	}

  
  SetDefaultChannelAdministratorRights copyWith({
    ChatAdministratorRights? defaultChannelAdministratorRights,
  }) => SetDefaultChannelAdministratorRights(
    defaultChannelAdministratorRights: defaultChannelAdministratorRights ?? this.defaultChannelAdministratorRights,
  );

  static const String objectType = 'setDefaultChannelAdministratorRights';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
