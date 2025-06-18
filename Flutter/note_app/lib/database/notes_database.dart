import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:path/path.dart';

class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase._init();

  NotesDatabase._init();

  static sqflite.Database? _database;

  Future<sqflite.Database> _initDB(String filepath) async {
    final dpPath = await sqflite.getDatabasesPath();
    final path = join(dpPath, filepath);

    return await sqflite.openDatabase(
      path,
      version: 1,
      onCreate: 
    )
  }

  Future _createDB(sqflite.Database db, int version) async{
    await db.execute(
      CREATE TABLE notes(blah)
    )
  }
}
