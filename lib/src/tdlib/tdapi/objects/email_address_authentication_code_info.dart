part of '../tdapi.dart';

/// **EmailAddressAuthenticationCodeInfo** *(emailAddressAuthenticationCodeInfo)* - basic class
///
/// Information about the email address authentication code that was sent.
///
/// * [emailAddressPattern]: Pattern of the email address to which an authentication code was sent.
/// * [length]: Length of the code; 0 if unknown.
final class EmailAddressAuthenticationCodeInfo extends TdObject {
  
  /// **EmailAddressAuthenticationCodeInfo** *(emailAddressAuthenticationCodeInfo)* - basic class
  ///
  /// Information about the email address authentication code that was sent.
  ///
  /// * [emailAddressPattern]: Pattern of the email address to which an authentication code was sent.
  /// * [length]: Length of the code; 0 if unknown.
  const EmailAddressAuthenticationCodeInfo({
    required this.emailAddressPattern,
    required this.length,
    this.extra,
    this.clientId,
  });
  
  /// Pattern of the email address to which an authentication code was sent
  final String emailAddressPattern;

  /// Length of the code; 0 if unknown
  final int length;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory EmailAddressAuthenticationCodeInfo.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationCodeInfo(
    emailAddressPattern: json['email_address_pattern'],
    length: json['length'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "email_address_pattern": emailAddressPattern,
      "length": length,
		};
	}

  
  EmailAddressAuthenticationCodeInfo copyWith({
    String? emailAddressPattern,
    int? length,
    dynamic extra,
    int? clientId,
  }) => EmailAddressAuthenticationCodeInfo(
    emailAddressPattern: emailAddressPattern ?? this.emailAddressPattern,
    length: length ?? this.length,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'emailAddressAuthenticationCodeInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
