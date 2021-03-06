import 'package:flutter/material.dart';
import 'package:todo_app/screens/tasks_screen.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      (const MaterialApp(home: TasksScreen()));
}
