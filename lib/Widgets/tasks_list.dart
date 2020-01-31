import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy rice'),
    Task(title: 'Buy rice'),
    Task(title: 'Buy rice'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: tasks[index].title,
            isChecked: tasks[index].isChecked,
            checkboxStatus: (bool checkboxState) {
              setState(() {
                tasks[index].toggleCheckbox();
              });
            },
          );
        });
  }
}
