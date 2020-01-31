import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final void Function() onChanged;

  TasksList({@required this.tasks, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: tasks[index].title,
            isChecked: tasks[index].isChecked,
            onChanged: (bool checkboxState) {
              tasks[index].toggleCheckbox();
              onChanged();
            },
          );
        });
  }
}
