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
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.title,
              isChecked: task.isChecked,
              onChanged: (bool checkboxState) {
                taskData.updateTask(index);
              },
            );
          });
    });
  }
}
