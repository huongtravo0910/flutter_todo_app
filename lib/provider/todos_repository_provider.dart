import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/repositories/i_todos_repository.dart';
import 'package:flutter_todo_app/repositories/todos_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todosRepositoryProvider = Provider<ITodosRepository>((ref) {
  return TodosRepository();
});
