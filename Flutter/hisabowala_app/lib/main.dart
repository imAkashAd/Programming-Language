import 'package:flutter/material.dart';
import 'package:hisabowala_app/pages/home_page.dart';
import 'package:hisabowala_app/pages/login_page.dart';
import 'package:hisabowala_app/pages/otp_page.dart';
import 'package:hisabowala_app/pages/registration_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginPage.routeName ,
      routes: {
        LoginPage.routeName:(context) => LoginPage(),
        OtpPage.routeName:(context) => OtpPage(),
        RegistrationPage.routeName:(context) => RegistrationPage(),
        HomePage.routeName:(context) => HomePage(),
      },
    );
  }
}