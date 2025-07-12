import 'package:contact_app/contact_provider.dart';
import 'package:contact_app/pages/contactdetails.dart';
import 'package:contact_app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ContactProvider(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Contact',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(context) => HomePage(),
        ContactDetails.routeName:(context) => ContactDetails(),
      },
    );
  }
}
