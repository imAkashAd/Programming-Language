import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY APP',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY APP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),

      body: 
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.blue.shade100, Colors.blue.shade600])
          ),
          child: 
          Padding(
            padding: EdgeInsets.all(8),
            child: Card (
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.blueAccent.withOpacity(.5),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Welcome to ANKONA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Image(image: AssetImage('assets/logo.jpg')),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade200
                          ), 
                        child: Text('Visit', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black),)),
                        ElevatedButton(
                          onPressed: () {}, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade200
                          ),
                        child: Text('Like', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black),)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ),
        ),
    );
  }
}
