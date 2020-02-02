import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.countTask,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].title,
              isChecked: taskData.tasks[index].isChecked,
              onChanged: (bool checkboxState) {
                taskData.tasks[index].toggleCheckbox();
                // onChanged();
              },
            );
          });
    });
  }
}
