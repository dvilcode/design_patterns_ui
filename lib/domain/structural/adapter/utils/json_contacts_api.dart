class JsonContactsApi {
  const JsonContactsApi() : _contactsJson = '''
  {
    "contacts": [
      {
        "fullName": "John Doe (Json)",
        "email": "johndoe@json.com",
        "favourite": true
      }
    ]
  }
  ''';
  final String _contactsJson;

  String getContactsJson() => _contactsJson;
}