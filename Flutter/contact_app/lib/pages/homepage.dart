import 'package:contact_app/contact_provider.dart';
import 'package:contact_app/customwidgets/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Contacts'),
      ),
      body: Consumer<ContactProvider>(
        builder:
            (BuildContext context, ContactProvider provider, Widget? child) =>
                ListView.builder(
          itemCount: provider.contactList.length,
          itemBuilder: (context, index) {
            final contact = provider.contactList[index];
            return ContactItem(contact: contact);
          },
        ),
      ),
    );
  }
}
