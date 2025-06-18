import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:path/path.dart';
import 'package:sqflite/sqlite_api.dart';

class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase._init();

  NotesDatabase._init();

  static sqflite.Database? _database;

  Future<sqflite.Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('notes.db');
    return _database!;
  }

  Future<sqflite.Database> _initDB(String filepath) async {
    final dpPath = await sqflite.getDatabasesPath();
    final path = join(dpPath, filepath);

    return await sqflite.openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(sqflite.Database db, int version) async {
    await db.execute('''
      CREATE TABLE notes(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        decription TEXT NOT NULL,
        date TEXT NOT NULL,
        color INTEGER NOT NULL DEFAULT 0

      )''');
  }

  Future<int> addNote(
    String title,
    String description,
    String date,
    int color,
  ) async {
    final db = await instance.database;

    run await db.insert('notes',{
      'title' : title,
      'descriptiom': description,
      data : data,
      color: color,
    })
  }
}
