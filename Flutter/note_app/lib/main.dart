import 'package:flutter/material.dart';

void main() {
  runApp(app);
}

class Note_App extends StatelessWidget {
  const Note_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
        ),
        home: const,
    );
  }
}
