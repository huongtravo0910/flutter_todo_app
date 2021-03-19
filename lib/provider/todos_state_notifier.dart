import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/repositories/i_todos_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodosStateNotifier extends StateNotifier<List<Todo>> {
  ITodosRepository todosRepository;
  List<Todo> completeList = [];

  TodosStateNotifier(this.todosRepository) : super([]);
  int autoIncrementId = 0;
  void createTodo(String title) {
    final todo = Todo(++autoIncrementId, title);
    state.add(todo);
    state = [...state];

    todosRepository.insertTodo(todo);
  }

  void deleteTodo(int id) {
    List<Todo> newList = [];
    for (int i = 0; i < state.length; i++) {
      if (state[i].getId != id) {
        newList.add(state[i]);
      }
    }
    state = newList;

    todosRepository.deleteTodo(id);
  }

  void updateTodo(int id, {String title, bool isCompleted}) {
    int todoIndex = state.indexWhere((element) => element.id == id);
    final todo = Todo(id, title, isCompleted: isCompleted);
    state.replaceRange(todoIndex, todoIndex + 1, [todo]);
    state = [...state];

    todosRepository.updateTodo(todo);
  }

  Future<void> getTodos() async {
    state = await todosRepository.getTodos();
  }
}
