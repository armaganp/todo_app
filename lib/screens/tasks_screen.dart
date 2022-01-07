import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/widgets.dart/task_list.dart';
import 'package:todo_app/constants.dart';
import 'add_task_screen.dart';
import 'package:todo_app/models/task_list_data.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  TextEditingController textEditingController = TextEditingController();
  TaskListData tld = TaskListData();

  updateUI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    String totalTask = tld.getTaskNumber().toString();
    return (Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.list,
                            size: 32.0,
                            color: Colors.indigo,
                          ),
                          backgroundColor: Colors.white,
                          radius: 32.0,
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Todo App',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Total Task: $totalTask',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: kBoxDecorationCheckList,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TaskList(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: const Color.fromARGB(255, 117, 117, 117),
            // isScrollControlled: true,
            context: context,
            // builder takes the current context and return a widget
            builder: (context) => AddTaskScreen(
              textEditingController: textEditingController,
              addButtonOnPressed: updateUI,
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    ));
  }
}
