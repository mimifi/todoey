import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/tasks_list.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () async {
          String taskTitle = await showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
          Provider.of<TaskData>(context, listen: false).addTask(taskTitle);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 30.0,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context, listen: true).countTask} Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: TasksList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
