import 'package:flutter_todo_app/providers/todos_state_notifier.dart';
import 'package:flutter_todo_app/providers/todos_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todosStateNotifierProvider =
    StateNotifierProvider<TodosStateNotifier>((ref) {
  final todosRepository = ref.read(todosRepositoryProvider);
  return TodosStateNotifier(todosRepository);
});
