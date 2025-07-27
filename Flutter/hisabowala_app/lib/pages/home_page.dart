import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hisabowala_app/pages/contact.dart';
import 'package:hisabowala_app/pages/note.dart';
import 'package:hisabowala_app/pages/notun_ponno.dart';
import 'package:hisabowala_app/pages/todays_sell.dart';
import 'package:hisabowala_app/services/view_registrations.dart';
import 'package:hisabowala_app/widget/appbar.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, TodaysSell.routeName);
                      },
                      child: const Text('আজকের বিক্রি')
                      ),
                      ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NotunPonno.routeName);
                      },
                      child: const Text('কেনা')
                      ),
                      ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Note.routeName);
                      },
                      child: const Text('নোট')
                      ),
                      ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Contact.routeName);
                      },
                      child: const Text('যোগাযোগ')
                      ),
                      ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ViewRegistrationPage.routeName);
                      },
                      child: const Text('registration list')
                      )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
