part of '../tdapi.dart';

/// **ChangeImportedContacts** *(changeImportedContacts)* - TDLib function
///
/// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.. Query result depends on the result of the previous query, so only one query is possible at the same time.
///
/// * [contacts]: The new list of contacts, contact's vCard are ignored and are not imported.
///
/// [ImportedContacts] is returned on completion.
final class ChangeImportedContacts extends TdFunction {
  
  /// **ChangeImportedContacts** *(changeImportedContacts)* - TDLib function
  ///
  /// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.. Query result depends on the result of the previous query, so only one query is possible at the same time.
  ///
  /// * [contacts]: The new list of contacts, contact's vCard are ignored and are not imported.
  ///
  /// [ImportedContacts] is returned on completion.
  const ChangeImportedContacts({
    required this.contacts,
  });
  
  /// The new list of contacts, contact's vCard are ignored and are not imported
  final List<Contact> contacts;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "contacts": contacts.map((i) => i.toJson()).toList(),
      "@extra": extra,
		};
	}

  
  ChangeImportedContacts copyWith({
    List<Contact>? contacts,
  }) => ChangeImportedContacts(
    contacts: contacts ?? this.contacts,
  );

  static const String objectType = 'changeImportedContacts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
