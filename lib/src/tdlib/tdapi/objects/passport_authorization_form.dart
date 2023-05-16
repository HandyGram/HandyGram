part of '../tdapi.dart';

/// **PassportAuthorizationForm** *(passportAuthorizationForm)* - basic class
///
/// Contains information about a Telegram Passport authorization form that was requested.
///
/// * [id]: Unique identifier of the authorization form.
/// * [requiredElements]: Telegram Passport elements that must be provided to complete the form.
/// * [privacyPolicyUrl]: URL for the privacy policy of the service; may be empty.
final class PassportAuthorizationForm extends TdObject {
  
  /// **PassportAuthorizationForm** *(passportAuthorizationForm)* - basic class
  ///
  /// Contains information about a Telegram Passport authorization form that was requested.
  ///
  /// * [id]: Unique identifier of the authorization form.
  /// * [requiredElements]: Telegram Passport elements that must be provided to complete the form.
  /// * [privacyPolicyUrl]: URL for the privacy policy of the service; may be empty.
  const PassportAuthorizationForm({
    required this.id,
    required this.requiredElements,
    required this.privacyPolicyUrl,
    this.extra,
    this.clientId,
  });
  
  /// Unique identifier of the authorization form
  final int id;

  /// Telegram Passport elements that must be provided to complete the form
  final List<PassportRequiredElement> requiredElements;

  /// URL for the privacy policy of the service; may be empty
  final String privacyPolicyUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportAuthorizationForm.fromJson(Map<String, dynamic> json) => PassportAuthorizationForm(
    id: json['id'],
    requiredElements: List<PassportRequiredElement>.from((json['required_elements'] ?? []).map((item) => PassportRequiredElement.fromJson(item)).toList()),
    privacyPolicyUrl: json['privacy_policy_url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "required_elements": requiredElements.map((i) => i.toJson()).toList(),
      "privacy_policy_url": privacyPolicyUrl,
		};
	}

  
  PassportAuthorizationForm copyWith({
    int? id,
    List<PassportRequiredElement>? requiredElements,
    String? privacyPolicyUrl,
    dynamic extra,
    int? clientId,
  }) => PassportAuthorizationForm(
    id: id ?? this.id,
    requiredElements: requiredElements ?? this.requiredElements,
    privacyPolicyUrl: privacyPolicyUrl ?? this.privacyPolicyUrl,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'passportAuthorizationForm';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
