class Todo {
  final int id;
  final String title;
  final bool isCompleted;

  Todo(this.id, this.title, {this.isCompleted = false});
  String get getTitle {
    return this.title;
  }

  int get getId {
    return this.id;
  }

  bool get getIsCompleted {
    return this.isCompleted;
  }

  static Map<String, dynamic> toMap(Todo todo) {
    return {
      "todoId": todo.getId,
      "title": todo.getTitle,
      "isCompleted": (todo.getIsCompleted == true) ? 1 : 0,
    };
  }
}
