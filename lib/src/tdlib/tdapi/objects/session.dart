part of '../tdapi.dart';

/// **Session** *(session)* - basic class
///
/// Contains information about one session in a Telegram application used by the current user. Sessions must be shown to the user in the returned order.
///
/// * [id]: Session identifier.
/// * [isCurrent]: True, if this session is the current session.
/// * [isPasswordPending]: True, if a 2-step verification password is needed to complete authorization of the session.
/// * [canAcceptSecretChats]: True, if incoming secret chats can be accepted by the session.
/// * [canAcceptCalls]: True, if incoming calls can be accepted by the session.
/// * [type]: Session type based on the system and application version, which can be used to display a corresponding icon.
/// * [apiId]: Telegram API identifier, as provided by the application.
/// * [applicationName]: Name of the application, as provided by the application.
/// * [applicationVersion]: The version of the application, as provided by the application.
/// * [isOfficialApplication]: True, if the application is an official application or uses the api_id of an official application.
/// * [deviceModel]: Model of the device the application has been run or is running on, as provided by the application.
/// * [platform]: Operating system the application has been run or is running on, as provided by the application.
/// * [systemVersion]: Version of the operating system the application has been run or is running on, as provided by the application.
/// * [logInDate]: Point in time (Unix timestamp) when the user has logged in.
/// * [lastActiveDate]: Point in time (Unix timestamp) when the session was last used.
/// * [ip]: IP address from which the session was created, in human-readable format.
/// * [country]: A two-letter country code for the country from which the session was created, based on the IP address.
/// * [region]: Region code from which the session was created, based on the IP address.
final class Session extends TdObject {
  
  /// **Session** *(session)* - basic class
  ///
  /// Contains information about one session in a Telegram application used by the current user. Sessions must be shown to the user in the returned order.
  ///
  /// * [id]: Session identifier.
  /// * [isCurrent]: True, if this session is the current session.
  /// * [isPasswordPending]: True, if a 2-step verification password is needed to complete authorization of the session.
  /// * [canAcceptSecretChats]: True, if incoming secret chats can be accepted by the session.
  /// * [canAcceptCalls]: True, if incoming calls can be accepted by the session.
  /// * [type]: Session type based on the system and application version, which can be used to display a corresponding icon.
  /// * [apiId]: Telegram API identifier, as provided by the application.
  /// * [applicationName]: Name of the application, as provided by the application.
  /// * [applicationVersion]: The version of the application, as provided by the application.
  /// * [isOfficialApplication]: True, if the application is an official application or uses the api_id of an official application.
  /// * [deviceModel]: Model of the device the application has been run or is running on, as provided by the application.
  /// * [platform]: Operating system the application has been run or is running on, as provided by the application.
  /// * [systemVersion]: Version of the operating system the application has been run or is running on, as provided by the application.
  /// * [logInDate]: Point in time (Unix timestamp) when the user has logged in.
  /// * [lastActiveDate]: Point in time (Unix timestamp) when the session was last used.
  /// * [ip]: IP address from which the session was created, in human-readable format.
  /// * [country]: A two-letter country code for the country from which the session was created, based on the IP address.
  /// * [region]: Region code from which the session was created, based on the IP address.
  const Session({
    required this.id,
    required this.isCurrent,
    required this.isPasswordPending,
    required this.canAcceptSecretChats,
    required this.canAcceptCalls,
    required this.type,
    required this.apiId,
    required this.applicationName,
    required this.applicationVersion,
    required this.isOfficialApplication,
    required this.deviceModel,
    required this.platform,
    required this.systemVersion,
    required this.logInDate,
    required this.lastActiveDate,
    required this.ip,
    required this.country,
    required this.region,
    this.extra,
    this.clientId,
  });
  
  /// Session identifier
  final int id;

  /// True, if this session is the current session
  final bool isCurrent;

  /// True, if a 2-step verification password is needed to complete authorization of the session
  final bool isPasswordPending;

  /// True, if incoming secret chats can be accepted by the session
  final bool canAcceptSecretChats;

  /// True, if incoming calls can be accepted by the session
  final bool canAcceptCalls;

  /// Session type based on the system and application version, which can be used to display a corresponding icon
  final SessionType type;

  /// Telegram API identifier, as provided by the application
  final int apiId;

  /// Name of the application, as provided by the application
  final String applicationName;

  /// The version of the application, as provided by the application
  final String applicationVersion;

  /// True, if the application is an official application or uses the api_id of an official application
  final bool isOfficialApplication;

  /// Model of the device the application has been run or is running on, as provided by the application
  final String deviceModel;

  /// Operating system the application has been run or is running on, as provided by the application
  final String platform;

  /// Version of the operating system the application has been run or is running on, as provided by the application
  final String systemVersion;

  /// Point in time (Unix timestamp) when the user has logged in
  final int logInDate;

  /// Point in time (Unix timestamp) when the session was last used
  final int lastActiveDate;

  /// IP address from which the session was created, in human-readable format
  final String ip;

  /// A two-letter country code for the country from which the session was created, based on the IP address
  final String country;

  /// Region code from which the session was created, based on the IP address
  final String region;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Session.fromJson(Map<String, dynamic> json) => Session(
    id: int.parse(json['id']),
    isCurrent: json['is_current'],
    isPasswordPending: json['is_password_pending'],
    canAcceptSecretChats: json['can_accept_secret_chats'],
    canAcceptCalls: json['can_accept_calls'],
    type: SessionType.fromJson(json['type']),
    apiId: json['api_id'],
    applicationName: json['application_name'],
    applicationVersion: json['application_version'],
    isOfficialApplication: json['is_official_application'],
    deviceModel: json['device_model'],
    platform: json['platform'],
    systemVersion: json['system_version'],
    logInDate: json['log_in_date'],
    lastActiveDate: json['last_active_date'],
    ip: json['ip'],
    country: json['country'],
    region: json['region'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "is_current": isCurrent,
      "is_password_pending": isPasswordPending,
      "can_accept_secret_chats": canAcceptSecretChats,
      "can_accept_calls": canAcceptCalls,
      "type": type.toJson(),
      "api_id": apiId,
      "application_name": applicationName,
      "application_version": applicationVersion,
      "is_official_application": isOfficialApplication,
      "device_model": deviceModel,
      "platform": platform,
      "system_version": systemVersion,
      "log_in_date": logInDate,
      "last_active_date": lastActiveDate,
      "ip": ip,
      "country": country,
      "region": region,
		};
	}

  
  Session copyWith({
    int? id,
    bool? isCurrent,
    bool? isPasswordPending,
    bool? canAcceptSecretChats,
    bool? canAcceptCalls,
    SessionType? type,
    int? apiId,
    String? applicationName,
    String? applicationVersion,
    bool? isOfficialApplication,
    String? deviceModel,
    String? platform,
    String? systemVersion,
    int? logInDate,
    int? lastActiveDate,
    String? ip,
    String? country,
    String? region,
    dynamic extra,
    int? clientId,
  }) => Session(
    id: id ?? this.id,
    isCurrent: isCurrent ?? this.isCurrent,
    isPasswordPending: isPasswordPending ?? this.isPasswordPending,
    canAcceptSecretChats: canAcceptSecretChats ?? this.canAcceptSecretChats,
    canAcceptCalls: canAcceptCalls ?? this.canAcceptCalls,
    type: type ?? this.type,
    apiId: apiId ?? this.apiId,
    applicationName: applicationName ?? this.applicationName,
    applicationVersion: applicationVersion ?? this.applicationVersion,
    isOfficialApplication: isOfficialApplication ?? this.isOfficialApplication,
    deviceModel: deviceModel ?? this.deviceModel,
    platform: platform ?? this.platform,
    systemVersion: systemVersion ?? this.systemVersion,
    logInDate: logInDate ?? this.logInDate,
    lastActiveDate: lastActiveDate ?? this.lastActiveDate,
    ip: ip ?? this.ip,
    country: country ?? this.country,
    region: region ?? this.region,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'session';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
