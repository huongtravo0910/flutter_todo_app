import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/utils/app_theme.dart';
import 'package:flutter_todo_app/widgets/todo_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/providers/todos_state_notifier_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _titleController = TextEditingController();
  List<Todo> list = [];

  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _fetchData());
  }

  void _fetchData() {
    context.read(todosStateNotifierProvider).getTodos();
  }

  void _addTodo(String title) {
    context.read(todosStateNotifierProvider).createTodo(title);
    _titleController.clear();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        setState(() {
          _selectedIndex = 0;
        });
        break;
      case 1:
        setState(() {
          _selectedIndex = 1;
        });
        break;
      case 2:
        setState(() {
          _selectedIndex = 2;
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Consumer(builder: (context, watch, child) {
      List<Todo> list = [];
      debugPrint(list.toString());
      switch (_selectedIndex) {
        case 0:
          list = watch(todosStateNotifierProvider.state);
          break;
        case 1:
          list = watch(todosStateNotifierProvider.state)
              .where((todo) => (todo.getIsCompleted == false))
              .toList();
          break;
        case 2:
          list = watch(todosStateNotifierProvider.state)
              .where((todo) => (todo.getIsCompleted == true))
              .toList();
          break;
        default:
      }

      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.of(context).color.accentColor,
          // backgroundColor: Theme.of(context).accentColor,
          title: Center(child: Text("Todo App")),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(250, 50)),
                    child: TextFormField(
                      key: Key("title"),
                      controller: _titleController,
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppTheme.of(context).color.primaryColor),
                      // Theme.of(context).primaryColor),
                    ),
                    key: Key("addButton"),
                    onPressed: () => _addTodo(_titleController.text),
                    child: Icon(Icons.add))
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                final value = list[index];
                return TodoWidget(
                  key: Key(value.getId.toString()),
                  id: value.getId,
                  title: value.getTitle,
                  isCompleted: value.getIsCompleted,
                );
              },
              itemCount: list.length,
            )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppTheme.of(context).color.primaryColor,
          // backgroundColor: Theme.of(context).primaryColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                key: Key("allButton"),
              ),
              label: 'All',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.casino_sharp,
                key: Key("incompletedButton"),
              ),
              label: 'Incompleted',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.check,
                key: Key("completedButton"),
              ),
              label: 'Completed',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          onTap: _onItemTapped,
        ),
      );
    });
  }
}
