import 'package:flutter/material.dart';
import 'package:flutter_todo_app/repositories/todos_repository.dart';
import 'package:flutter_todo_app/screens/home_screen.dart';
import 'package:flutter_todo_app/utils/app_theme.dart';
import 'package:flutter_todo_app/utils/my_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TodosRepository().initDatabase();
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: "Todo App",
        theme: MyTheme().buildTheme(),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}
