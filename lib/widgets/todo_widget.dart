import 'package:flutter/material.dart';
import 'package:flutter_todo_app/providers/todos_state_notifier_provider.dart';
import 'package:flutter_todo_app/widgets/my_card.dart';
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

class _TodoWidgetState extends State<TodoWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
    final animation = Tween(
            begin: const Offset(0.0, 0.0), end: const Offset(-0.2, 0.0))
        .animate(new CurveTween(curve: Curves.decelerate).animate(_controller));
    return GestureDetector(
      key: Key("slide" + widget.id.toString()),
      onHorizontalDragUpdate: (data) {
        setState(() {
          _controller.value -= data.primaryDelta / context.size.width;
        });
      },
      onHorizontalDragEnd: (data) {
        if (data.primaryVelocity > 2500) {
          _controller.animateTo(0.0);
        } else if (_controller.value >= 0.5 || data.primaryVelocity < -2500) {
          _controller.animateTo(1.0);
        } else {
          _controller.animateTo(.0);
        }
      },
      child: Stack(
        children: [
          SlideTransition(
            position: animation,
            child: MyCard(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
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
                    Expanded(
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
                    !widget.isCompleted
                        ? ElevatedButton(
                            key: Key("checkButton" + "${widget.id}"),
                            onPressed: () => _checkTodo(widget.id),
                            child: Icon(Icons.check),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context).primaryColor),
                            ),
                          )
                        : SizedBox.shrink(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 5,
                          height: 20,
                          color: !widget.isCompleted
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).accentColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: LayoutBuilder(
              builder: (context, constraint) {
                return AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Stack(
                        children: [
                          Positioned(
                            right: -1.0,
                            top: 0.0,
                            bottom: 0.0,
                            width:
                                constraint.maxWidth * animation.value.dx * -1,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Theme.of(context).primaryColor),
                                ),
                                key: Key("deleteButton" + "${widget.id}"),
                                onPressed: () => _deleteTodo(widget.id),
                                child: Icon(Icons.delete)),
                          ),
                        ],
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
