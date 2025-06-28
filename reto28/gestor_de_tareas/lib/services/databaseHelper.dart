import 'package:gestor_de_tareas/models/tarea.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

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
    String path = join(await getDatabasesPath(), 'tareas.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tasks('
          'id INTEGER PRIMARY KEY, '
          'title TEXT, '
          'descripcion TEXT, '
          'dueDate TEXT, '
          'status TEXT)',
        );
      },
    );
  }

  //Metodo post
  Future<void> insertTask(Tarea tarea) async {
    final db = await database;
    await db.insert(
      'tasks',
      tarea.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  //Metodo get
  Future<List<Tarea>> getTasks() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('tasks');
    return List.generate(maps.length, (i) {
      return Tarea(
        id: maps[i]['id'],
        title: maps[i]['title'],
        descripcion: maps[i]['descripcion'],
        dueDate: maps[i]['dueDate'],
        status: maps[i]['status'],
      );
    });
  }

  //Metodo put
  Future<void> updateTask(Tarea tarea) async {
    final db = await database;
    await db.update(
      'tasks',
      tarea.toMap(),
      where: 'id = ?',
      whereArgs: [tarea.id],
    );
  }

  //Metodo delete
  Future<void> deleteTasks(int id) async {
    final db = await database;
    await db.delete('tasks', where: 'id = ?', whereArgs: [id]);
  }
}
