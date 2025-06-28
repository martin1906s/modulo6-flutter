import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/book.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;
  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  //Crea la base de datos
  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'library.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version){
        return db.execute('CREATE TABLE books(id INTEGER PRIMARY KEY, title TEXT, author TEXT, status TEXT, note TEXT)');
      }
    );
  }

  //Metodo post
  Future<void> insertBook(Book book) async{
    final db = await database;
    await db.insert('books', book.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  //Metodo get
  Future<List<Book>> getBooks () async{
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('books');
    return List.generate(maps.length, (i){
      return Book(
        id: maps[i]['id'],
        title: maps[i]['title'],
        author: maps[i]['author'],
        status: maps[i]['status'],
        note: maps[i]['note'],
      );
    });
  }

  //Metodo put
  Future<void> updateBook(Book book) async{
    final db = await database;
    await db.update('books', book.toMap(), where: 'id = ?', whereArgs: [book.id]);
  }

  //Metodo delete
  Future<void> deleteBook(int id) async{
    final db = await database;
    await db.delete('books', where: 'id = ?', whereArgs: [id]);
  }
}
