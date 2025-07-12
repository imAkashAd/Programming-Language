import 'package:flutter/material.dart';

import 'models/contact_model.dart';

class ContactProvider extends ChangeNotifier {
  List<ContactModel> contactList = [
    ContactModel(id: 1, name: 'Akash', mobile: '0170000000',email: 'akadhikary199901@gmail.com', streetAddress: '20,mirpur-6' , website: 'www.flutter.com', image:'images/contact.png' ),
    ContactModel(id: 2, name: 'Roshni', mobile: '0170000000',email: 'roshni@gmail.com', streetAddress: '20,mirpur-6' , website: 'www.sqa.com', image:'images/contact.png' ),
    ContactModel(id: 3, name: 'Riyad', mobile: '0170000000',email: 'riyad@gmail.com', streetAddress: '20,mirpur-6' , website: 'www.django.com', image:'images/contact.png' ),
  ];
}
