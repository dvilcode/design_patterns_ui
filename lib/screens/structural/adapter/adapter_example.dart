import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../domain/structural/adapter/json_contacts_adapter.dart';
import '../../../domain/structural/adapter/xml_contacts_adapter.dart';
import 'contacts_section.dart';

class AdapterExample extends StatelessWidget {
  const AdapterExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: paddingL,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ContactsSection(
              adapter: JsonContactsAdapter(),
              headerText: 'Contacts from JSON API',
            ),
            ContactsSection(
              adapter: XmlContactsAdapter(),
              headerText: 'Contacts from XML API',
            ),
          ],
        ),
      ),
    );
  }
}
