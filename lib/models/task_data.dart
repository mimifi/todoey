import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy rice'),
    Task(title: 'Buy rice'),
    Task(title: 'Buy rice'),
  ];

  int get countTask {
    return tasks.length;
  }
}
