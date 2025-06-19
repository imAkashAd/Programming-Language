import 'package:flutter/material.dart';
import 'package:note_app/screen/notes_screen.dart';

void main() {
  runApp(Note_App());
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
        debugShowCheckedModeBanner: false,
        home: NotesScreen()
    );
  }
}
