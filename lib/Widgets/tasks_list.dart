import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        ListTile(
          title: Text('This is a new task.'),
          trailing: Checkbox(
            onChanged: (bool value) {
              print((value));
            },
            value: false,
          ),
        )
      ],
    );
  }
}
