import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/models/task_list_data.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function addButtonOnPressed;
  const AddTaskScreen(
      {Key? key,
      required this.textEditingController,
      required this.addButtonOnPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecorationModalBottomSheet,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextField(
                      controller: textEditingController,
                      autofocus: true,
                      textAlign: TextAlign.center,
                      autocorrect: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Write Task Here',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Expanded(
                    child: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.indigo),
                            textStyle: MaterialStateProperty.all(
                                const TextStyle(fontSize: 20.0))),
                        onPressed: () {
                          log('add_task_screen > ${textEditingController.text}');
                          addButtonOnPressed();
                          // maybe this
                          TaskListData h = TaskListData();
                          h.incrementTaskNumber();
                          h.addTaskListData(textEditingController.text);
                          textEditingController.clear();

                          Navigator.pop(context);
                        },
                        // onPressed: () => addButtonOnPressed(),
                        child: const Text(
                          'ADD',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
