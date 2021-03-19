import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/provider/todos_state_notifier_provider.dart';
import 'package:flutter_todo_app/provider/todos_repository_provider.dart';
import 'package:flutter_todo_app/repositories/i_todos_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Provider CRUD Todos", () {
    test("default is empty", () {
      final container = ProviderContainer();
      final value = container.read(todosStateNotifierProvider.state);
      expect(value, []);
    });

    test("add todo", () {
      final container = ProviderContainer(
        overrides: [
          todosRepositoryProvider
              .overrideWithProvider(Provider((ref) => MockTodosRepository()))
        ],
      );

      // final container = ProviderContainer();
      String title = "title";
      container.read(todosStateNotifierProvider).createTodo(title);
      debugPrint("title : " +
          container.read(todosStateNotifierProvider.state)[0].getTitle);
      debugPrint("id : " +
          container.read(todosStateNotifierProvider.state)[0].getId.toString());
      expect(container.read(todosStateNotifierProvider.state).length, 1);
      expect(container.read(todosStateNotifierProvider.state).first.getTitle,
          title);
    });

    test("delete todo", () {
      final container = ProviderContainer(
        overrides: [
          todosRepositoryProvider
              .overrideWithProvider(Provider((ref) => MockTodosRepository()))
        ],
      );
      // final container = ProviderContainer();
      container.read(todosStateNotifierProvider).createTodo("title1");
      container.read(todosStateNotifierProvider).createTodo("title2");
      container.read(todosStateNotifierProvider).createTodo("title3");
      debugPrint("state length" +
          container.read(todosStateNotifierProvider.state).length.toString());
      debugPrint("title1 " +
          container.read(todosStateNotifierProvider.state)[0].getTitle);
      debugPrint("title2 " +
          container.read(todosStateNotifierProvider.state)[1].getTitle);
      debugPrint("list " +
          container
              .read(todosStateNotifierProvider.state)
              .map((e) => e.getTitle)
              .toList()
              .toString());
      container.read(todosStateNotifierProvider).deleteTodo(1);
      debugPrint("state length after" +
          container.read(todosStateNotifierProvider.state).length.toString());
      debugPrint("title2 " +
          container.read(todosStateNotifierProvider.state)[0].getTitle);
      debugPrint("list after" +
          container
              .read(todosStateNotifierProvider.state)
              .map((e) => e.getTitle)
              .toList()
              .toString());
      expect(container.read(todosStateNotifierProvider.state).length, 2);
    });

    test("fetch data", () async {
      final container = ProviderContainer(
        overrides: [
          todosRepositoryProvider
              .overrideWithProvider(Provider((ref) => MockTodosRepository()))
        ],
      );
      await container.read(todosStateNotifierProvider).getTodos();

      expect(container.read(todosStateNotifierProvider.state).length, 1);
    });
  });
}

class MockTodosRepository implements ITodosRepository {
  @override
  Future<void> deleteTodo(int index) {}

  @override
  Future<List<Todo>> getTodos() async {
    return [Todo(1, "title1")];
  }

  @override
  Future<void> insertTodo(Todo todo) {}

  @override
  Future<void> updateTodo(Todo todo) {}
}
