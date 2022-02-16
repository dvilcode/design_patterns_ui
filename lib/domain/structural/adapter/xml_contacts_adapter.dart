import 'package:xml/xml.dart';

import 'i_contacts_adapter.dart';
import 'utils/contact.dart';
import 'utils/xml_contacts_api.dart';

class XmlContactsAdapter implements IContactsAdapter {
  const XmlContactsAdapter() : _api = const XmlContactsApi();

  final XmlContactsApi _api;

  @override
  List<Contact> getContacts() {
    final contactsXml = _api.getContactsXml();
    final contactsList = _parseContactsXml(contactsXml);
    return contactsList;
  }

  List<Contact> _parseContactsXml(String contactsXml) {
    final document = XmlDocument.parse(contactsXml);
    final contactsList = <Contact>[];

    for (final element in document.findAllElements('contact')) {
      final fullName = element.findElements('fullName').single.text;
      final email = element.findElements('email').single.text;
      final favouriteString = element.findElements('favourite').single.text;
      final favourite = favouriteString.toLowerCase() == 'true';

      contactsList.add(
        Contact(
          fullName: fullName,
          email: email,
          favourite: favourite,
        ),
      );
    }
    return contactsList;
  }
}
