part of '../tdapi.dart';

/// **ImportContacts** *(importContacts)* - TDLib function
///
/// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored.
///
/// * [contacts]: The list of contacts to import or edit; contacts' vCard are ignored and are not imported.
///
/// [ImportedContacts] is returned on completion.
final class ImportContacts extends TdFunction {
  
  /// **ImportContacts** *(importContacts)* - TDLib function
  ///
  /// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored.
  ///
  /// * [contacts]: The list of contacts to import or edit; contacts' vCard are ignored and are not imported.
  ///
  /// [ImportedContacts] is returned on completion.
  const ImportContacts({
    required this.contacts,
  });
  
  /// The list of contacts to import or edit; contacts' vCard are ignored and are not imported
  final List<Contact> contacts;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "contacts": contacts.map((i) => i.toJson()).toList(),
      "@extra": extra,
		};
	}

  
  ImportContacts copyWith({
    List<Contact>? contacts,
  }) => ImportContacts(
    contacts: contacts ?? this.contacts,
  );

  static const String objectType = 'importContacts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
