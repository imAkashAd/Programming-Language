import 'package:flutter/material.dart';
import 'package:routing/destination_page.dart';
import 'package:routing/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.routeName: (context)=>HomePage(),
        DestinationPage.routeName: (context)=>DestinationPage(),
      },
    );
  }
}
