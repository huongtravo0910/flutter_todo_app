import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/repositories/i_todos_repository.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

const String tableName = "todos";

class TodosRepository implements ITodosRepository {
  static final TodosRepository _instance = TodosRepository._();

  Database _database;
  factory TodosRepository() {
    return _instance;
  }

  TodosRepository._();

  Future<void> initDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'todo_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE $tableName (id INTEGER PRIMARY KEY,todoId INTEGER, title TEXT, isCompleted INTEGER)",
        );
      },
      version: 1,
    );
  }

  @override
  Future<List<Todo>> getTodos() async {
    final List<Map<String, dynamic>> maps = await _database.query(tableName);
    return List.generate(maps.length, (i) {
      return Todo(maps[i]['todoId'], maps[i]['title'],
          isCompleted: (maps[i]['isCompleted'] == 0) ? true : false);
    });
  }

  @override
  Future<void> updateTodo(Todo todo) async {
    await _database.update(
      tableName,
      Todo.toMap(todo),
      where: "todoId = ?",
      whereArgs: [todo.getId],
    );
  }

  @override
  Future<void> deleteTodo(int index) async {
    await _database.delete(
      tableName,
      where: "todoId = ?",
      whereArgs: [index],
    );
  }

  @override
  Future<void> insertTodo(Todo todo) async {
    await _database.insert(
      tableName,
      Todo.toMap(todo),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
