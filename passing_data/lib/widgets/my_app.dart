import 'package:flutter/material.dart';

import 'package:passing_data/models/todo.dart';
import 'package:passing_data/widgets/todo_screen.dart';

class MyApp extends StatelessWidget {
  final todos = List<Todo>.generate(
    20,
    (index) => Todo(
      'Todo $index',
      'A description of what needs to be done for Todo $index',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data',
      home: TodoScreen(
        todos: todos,
      ),
    );
  }
}
