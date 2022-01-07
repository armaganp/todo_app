import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChanged;
  final String taskTitle;
  final Function(bool) onChangedCallBack;

  TaskTile(
      {required this.isChanged,
      required this.taskTitle,
      required this.onChangedCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChanged ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.indigo,
        value: isChanged,
        onChanged: (value) => onChangedCallBack(value!),
      ),
    );
  }
}
