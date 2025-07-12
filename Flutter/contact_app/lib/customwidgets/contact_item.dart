import 'package:contact_app/models/contact_model.dart';
import 'package:contact_app/pages/contactdetails.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final ContactModel contact;
  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, ContactDetails.routeName, arguments: contact),
      title: Text(contact.name),
      trailing: IconButton(
        onPressed: (){}, 
        icon: Icon(contact.favorite? Icons.favorite: Icons.favorite_border,),
    ),
    );
  }
}