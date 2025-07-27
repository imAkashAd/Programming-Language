import 'package:flutter/material.dart';
import 'package:hisabowala_app/pages/contact.dart';
import 'package:hisabowala_app/pages/home_page.dart';
import 'package:hisabowala_app/pages/login_page.dart';
import 'package:hisabowala_app/pages/note.dart';
import 'package:hisabowala_app/pages/notun_ponno.dart';
import 'package:hisabowala_app/pages/otp_page.dart';
import 'package:hisabowala_app/pages/registration_page.dart';
import 'package:hisabowala_app/pages/todays_sell.dart';
import 'package:hisabowala_app/services/listview.dart';
import 'package:hisabowala_app/services/view_registrations.dart';

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
        TodaysSell.routeName:(context)=> TodaysSell(),
        NotunPonno.routeName:(context) => NotunPonno(),
        Note.routeName:(context) => Note(),
        Contact.routeName:(context) => Contact(),
        RegistrationListPage.routeName: (context) => RegistrationListPage(),
        ViewRegistrationPage.routeName:(context) => ViewRegistrationPage(),
      },
    );
  }
}