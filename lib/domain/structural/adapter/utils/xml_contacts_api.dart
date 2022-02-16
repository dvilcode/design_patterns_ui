class XmlContactsApi {
  const XmlContactsApi() : _contactsXml = '''
  <?xml version="1.0"?>
  <contacts>
    <contact>
        <fullName>John Doe (Xml)</fullName>
        <email>johndoe@json.com</email>
        <favourite>true</favourite>
    </contact>
  </contacts>
  ''';
  final String _contactsXml;

  String getContactsXml() => _contactsXml;
}