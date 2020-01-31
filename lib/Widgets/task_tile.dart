import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a new task.'),
      trailing: Checkbox(
        onChanged: (bool value) {
          print((value));
        },
        value: false,
      ),
    );
  }
}
