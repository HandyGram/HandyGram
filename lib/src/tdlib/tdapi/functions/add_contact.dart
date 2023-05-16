part of '../tdapi.dart';

/// **AddContact** *(addContact)* - TDLib function
///
/// Adds a user to the contact list or edits an existing contact by their user identifier.
///
/// * [contact]: The contact to add or edit; phone number may be empty and needs to be specified only if known, vCard is ignored.
/// * [sharePhoneNumber]: Pass true to share the current user's phone number with the new contact. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed.. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number.
///
/// [Ok] is returned on completion.
final class AddContact extends TdFunction {
  
  /// **AddContact** *(addContact)* - TDLib function
  ///
  /// Adds a user to the contact list or edits an existing contact by their user identifier.
  ///
  /// * [contact]: The contact to add or edit; phone number may be empty and needs to be specified only if known, vCard is ignored.
  /// * [sharePhoneNumber]: Pass true to share the current user's phone number with the new contact. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed.. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number.
  ///
  /// [Ok] is returned on completion.
  const AddContact({
    required this.contact,
    required this.sharePhoneNumber,
  });
  
  /// The contact to add or edit; phone number may be empty and needs to be specified only if known, vCard is ignored
  final Contact contact;

  /// Pass true to share the current user's phone number with the new contact. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed.. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
  final bool sharePhoneNumber;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "contact": contact.toJson(),
      "share_phone_number": sharePhoneNumber,
      "@extra": extra,
		};
	}

  
  AddContact copyWith({
    Contact? contact,
    bool? sharePhoneNumber,
  }) => AddContact(
    contact: contact ?? this.contact,
    sharePhoneNumber: sharePhoneNumber ?? this.sharePhoneNumber,
  );

  static const String objectType = 'addContact';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
