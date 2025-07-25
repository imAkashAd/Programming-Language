import 'package:flutter/material.dart';
import 'package:note_app/database/notes_database.dart';
import 'package:note_app/screen/notes_dialogue.dart';
import 'package:sqflite/utils/utils.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<Map<String, dynamic>> notes = [];

  @override
  void initState() {
    super.initState();
    fetchNotes();
  }

  Future<void> fetchNotes() async {
    final fetchedNotes = await NotesDatabase.instance.getNotes();
    setState(() {
      notes = fetchedNotes;
    });
  }

  final List<Color> noteColors = [
    Color(0xffb74093),
    Color(0xfff44336),
    Color(0xffe91e63),
    Color(0xffff9800),
    Color(0xff2196f3),
    Color(0xff4caf50),
    Color(0xff9c27b0),
    Color(0xff9e9e9e),
    Color(0xff795548),
    Color(0xff212121),
    Color(0xffffffff),
  ];

  void showNoteDialogue({
    int? id,
    String? title,
    String? content,
    int colorIndex = 0,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return NotesDialogue(
          colorIndex: colorIndex,
          noteColors: noteColors,
          noteId: id,
          title: title,
          content: content,
          onNotesaved:
              (newTitle, newDescription, newColorIndex, currentDate) async {
                if (id == null) {
                  await NotesDatabase.instance.addNote(
                    newTitle,
                    newDescription,
                    newColorIndex,
                    currentDate,
                  );
                } else {
                  await NotesDatabase.instance.updateNote(
                    newTitle,
                    newDescription,
                    currentDate,
                    newColorIndex,
                    id,
                  );
                }
              },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Notes',
          style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.w500,
            fontSize: 28,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showNoteDialogue();
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: Colors.black87),
      ),
      body: notes.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.note_outlined,
                    size: 80,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'No Notes Found',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: EdgeInsets.all(16),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisExtent: 16,
                  childAspectRatio: 8,
                ),
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];

                  return Text(note['tittle']);
                },
              ),
            ),
    );
  }
}
