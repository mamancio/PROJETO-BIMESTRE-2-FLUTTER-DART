import 'package:path/path.dart';
import 'package:app_livros/models/contact.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('app_livros.db');
    return _database!;
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE contacts (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      email TEXT NOT NULL UNIQUE,
      password TEXT NOT NULL
    )
  ''');
  }

  Future<int> save(Contact contact) async {
    final db = await database; // Obtém a instância do banco de dados
    final Map<String, dynamic> contactMap = {};
    contactMap['name'] = contact.name;
    contactMap['email'] = contact.email;
    contactMap['password'] = contact.password;

    return await db.insert('contacts', contactMap);
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }
}
