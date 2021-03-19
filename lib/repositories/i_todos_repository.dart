import 'package:flutter_todo_app/models/todo.dart';

abstract class ITodosRepository {
  Future<List<Todo>> getTodos();

  Future<void> updateTodo(Todo todo);

  Future<void> insertTodo(Todo todo);

  Future<void> deleteTodo(int index);
}
