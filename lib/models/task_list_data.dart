import 'dart:developer';
import 'task.dart';

class TaskListData {
  TaskListData();
  static List<Task> tasks = [];

  void addTaskListData(String data) {
    log('task_list_data > $data');
    tasks.add(Task(name: data));
  }

  List<Task> getTaskListData() => tasks;

  String getTaskNumber() => tasks.length.toString();

  bool toggleCheckBox(bool c) => !c;
}
