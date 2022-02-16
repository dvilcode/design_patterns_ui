import 'package:flutter/material.dart';

import '../../../domain/structural/adapter/utils/contact.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({required this.contact, Key? key}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.fullName),
        subtitle: Text(contact.email),
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white,
          child: Text(contact.fullName[0]),
        ),
        trailing: Icon(contact.favourite ? Icons.star : Icons.star_border),
      ),
    );
  }
}
