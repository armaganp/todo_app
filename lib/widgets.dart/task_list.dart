import 'dart:developer';

import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'package:todo_app/models/task_list_data.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  TaskListData tld = TaskListData();
  @override
  Widget build(BuildContext context) {
    var h = tld.getTaskListData();
    return ListView.builder(
        itemCount: h.length,
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: h[index].name,
              isChanged: h[index].isDone,
              onChangedCallBack: (checkBoxState) {
                setState(() {
                  h[index].isDone = tld.toggleCheckBox(h[index].isDone);
                  log(h[index].name);
                });
              });
        });
  }
}
