import 'package:flutter/material.dart';
import 'package:todo_app/models/task_list_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChanged;
  final String taskTitle;
  final Function(bool) onChangedCallBack;
  final VoidCallback deleteButtonCallBack;

  TaskTile({
    required this.isChanged,
    required this.taskTitle,
    required this.onChangedCallBack,
    required this.deleteButtonCallBack,
  });
  TaskListData tld = TaskListData();
  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   title: Text(
    //     taskTitle,
    //     style: TextStyle(
    //       decoration: isChanged ? TextDecoration.lineThrough : null,
    //     ),
    //   ),
    //   subtitle: IconButton(
    //     onPressed: () => deleteButtonCallBack(),
    //     icon: Icon(Icons.clear),
    //     iconSize: 20.0,
    //   ),
    //   trailing: Checkbox(
    //     activeColor: Colors.indigo,
    //     value: isChanged,
    //     onChanged: (value) => onChangedCallBack(value!),
    //   ),
    // );
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  taskTitle,
                  style: TextStyle(
                    decoration: isChanged ? TextDecoration.lineThrough : null,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Checkbox(
                activeColor: Colors.indigo,
                value: isChanged,
                onChanged: (value) => onChangedCallBack(value!),
              ),
              IconButton(
                onPressed: () => deleteButtonCallBack(),
                icon: Icon(Icons.clear),
                iconSize: 20.0,
                color: Colors.redAccent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
