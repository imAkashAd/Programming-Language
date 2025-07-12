import 'dart:io';

import 'package:contact_app/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactDetails extends StatelessWidget {
  static const String routeName = '/details';
  const ContactDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final contact = ModalRoute.of(context)!.settings.arguments as ContactModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name, style: const TextStyle(
          fontWeight: FontWeight.bold, 
          color: Colors.white, 
          shadows: [Shadow(offset:Offset(1.0,1.0), blurRadius: 1.0,color: Colors.black), 
          ] 
          ),
          ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Image.asset(
            contact.image!,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(contact.mobile),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    callContact(contact.mobile);
                  },
                  icon: Icon(Icons.call),
                ),
                IconButton(
                  onPressed: () {
                    sendSms(contact.mobile);
                  },
                  icon: Icon(Icons.sms),
                )
              ],
            ),
          ),
          ListTile(
              title: Text(contact.email!),
              trailing: IconButton(
                onPressed: () {
                  sentEmail(contact.email!);
                },
                icon: Icon(Icons.email),
              )),
          ListTile(
              title: Text(contact.streetAddress!),
              trailing: IconButton(
                onPressed: () {
                  showMap(contact.streetAddress!);
                },
                icon: Icon(Icons.location_on),
              )),
          ListTile(
              title: Text(contact.website!),
              trailing: IconButton(
                onPressed: () {
                  visitWeb(contact.website!);
                },
                icon: Icon(Icons.web),
              ))
        ],
      ),
    );
  }

  void callContact(String mobile) async {
    final urlString = 'tel:$mobile';
    if (await canLaunchUrlString(urlString)) {
      await launchUrlString(urlString);
    } else {
      throw 'Cannot perform action';
    }
  }

  void showMap(String streetAddress) async {
    String urlString = '';
    if (Platform.isAndroid) {
      urlString = 'geo:0,0?q=$streetAddress';
    } else if (Platform.isIOS) {
      urlString = 'http://maps.apple.com/q=$streetAddress';
    }
    if (await canLaunchUrlString(urlString)) {
      await launchUrlString(urlString);
    } else {
      throw 'cannot perform this action';
    }
  }
}

void sendSms(String sms) async{
  final urlString = 'sms:$sms';
    if (await canLaunchUrlString(urlString)) {
      await launchUrlString(urlString);
    } else {
      throw 'Cannot perform action';
    }
}

void visitWeb(String website) async {
  final urlString = 'http://$website';
  if (await canLaunchUrlString(urlString)) {
    await launchUrlString(urlString);
  } else {
    throw 'Cannot perform action';
  }
}

void sentEmail(String email) async {
  final urlString = 'mailto:$email';
  if (await canLaunchUrlString(urlString)) {
    await launchUrlString(urlString);
  } else {
    throw 'Cannot perform action';
  }
}
