import 'package:flutter/material.dart';

void main() {
  runApp(Testing());
}

class Testing extends StatelessWidget {
  Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AppBody(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Testing', style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.blue),),
        centerTitle: true,
      ),
      
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            shadowColor: Colors.blueAccent.withOpacity(0.5),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Text('Welcome to My app',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, 
                  color: Colors.black),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Image(image: AssetImage('assets/logo.jpg')),
                  SizedBox(height: 20,),
                ],
              ),),
          )
        ],
      ),
      )
      );
  }
}
