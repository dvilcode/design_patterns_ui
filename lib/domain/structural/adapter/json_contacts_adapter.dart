import 'dart:convert';

import 'i_contacts_adapter.dart';
import 'utils/contact.dart';
import 'utils/json_contacts_api.dart';

class JsonContactsAdapter implements IContactsAdapter {
  const JsonContactsAdapter() : _api = const JsonContactsApi();

  final JsonContactsApi _api;

  @override
  List<Contact> getContacts() {
    final contactsJson = _api.getContactsJson();
    final contactsList = _parseContactsJson(contactsJson);
    return contactsList;
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    final contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    final contactsJsonList = contactsMap['contacts'] as List;
    final contactsList = contactsJsonList
        .map(
          (json) => Contact(
            fullName: json['fullName'].toString(),
            email: json['email'].toString(),
            favourite: json['favourite'] as bool,
          ),
        )
        .toList();
      return contactsList;
  }
}
