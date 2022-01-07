import 'dart:developer';

class Task {
  final String name;
  bool isDone;
  Task({required this.name, this.isDone = false});
}

class TaskListData {
  TaskListData();

  static List<Task> tasks = [];
  static int taskNumber = 0;

  void addTaskListData(String data) {
    log('task_list_data > $data');
    tasks.add(Task(name: data));
  }

  void deleteTaskListData(var data) {
    log('this $data');
    tasks.removeAt(data);
    // log(tasks[1]);
  }

  List<Task> getTaskListData() => tasks;

  String getTotalTask() => tasks.length.toString();

  bool toggleCheckBox(bool c) => !c;

  int getTaskNumber() => taskNumber;

  void incrementTaskNumber() {
    taskNumber++;
  }
}
