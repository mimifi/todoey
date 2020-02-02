import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy rice'),
  ];

  int get countTask {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskTitle) {
    Task newTask = Task(title: taskTitle);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(int index) {
    tasks[index].toggleCheckbox();
    notifyListeners();
  }
}
