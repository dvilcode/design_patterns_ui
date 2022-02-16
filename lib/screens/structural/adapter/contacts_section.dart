import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../domain/structural/adapter/i_contacts_adapter.dart';
import '../../../domain/structural/adapter/utils/contact.dart';
import '../../../widgets/platform_button.dart';
import 'contact_card.dart';

class ContactsSection extends StatefulWidget {
  const ContactsSection({
    required this.adapter,
    required this.headerText,
    Key? key,
  }) : super(key: key);

  final IContactsAdapter adapter;
  final String headerText;

  @override
  _ContactsSectionState createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  _ContactsSectionState() : _contacts = [];

  final List<Contact> _contacts;

  void _getContacts() {
    setState(() {
      _contacts.addAll(widget.adapter.getContacts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.headerText),
        const SizedBox(height: spaceM),
        Stack(
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: _contacts.isNotEmpty ? 1.0 : 0.0,
              child: Column(
                children: [
                  for (final contact in _contacts)
                    ContactCard(
                      contact: contact,
                    ),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 250),
              opacity: _contacts.isNotEmpty ? 0.0 : 1.0,
              child: PlatformButton(
                child: const Text('Get Contacts'),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: _getContacts,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
