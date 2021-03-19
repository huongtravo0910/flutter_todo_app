import 'package:flutter/material.dart';
import 'package:flutter_todo_app/provider/todos_state_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoWidget extends StatefulWidget {
  final String title;
  final int id;
  final bool isCompleted;

  const TodoWidget({Key key, this.title, this.id, this.isCompleted})
      : super(key: key);

  @override
  _TodoWidgetState createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  void _deleteTodo(int id) {
    context.read(todosStateNotifierProvider).deleteTodo(id);
  }

  void _checkTodo(int id) {
    context
        .read(todosStateNotifierProvider)
        .updateTodo(id, title: widget.title, isCompleted: true);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        constraints: BoxConstraints(minWidth: 100),
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45.withOpacity(0.2),
              offset: Offset(0.0, 3.0),
              spreadRadius: 1.0,
              blurRadius: 1.0,
            ),
          ],
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    !widget.isCompleted
                        ? Icons.casino_rounded
                        : Icons.check_circle,
                    color: !widget.isCompleted
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).secondaryHeaderColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      child: Text(
                        widget.title,
                        key: Key("text" + "${widget.id}"),
                        style: TextStyle(
                            fontSize: 14,
                            color: !widget.isCompleted
                                ? Colors.black
                                : Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  !widget.isCompleted
                      ? ElevatedButton(
                          key: Key("checkButton" + "${widget.id}"),
                          onPressed: () => _checkTodo(widget.id),
                          child: Icon(Icons.check),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Theme.of(context).secondaryHeaderColor),
                          ),
                        )
                      : SizedBox.shrink(),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).primaryColor),
                      ),
                      key: Key("deleteButton" + "${widget.id}"),
                      onPressed: () => _deleteTodo(widget.id),
                      child: Icon(Icons.delete)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
