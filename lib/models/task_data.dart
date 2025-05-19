import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Task> _taskList = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Butter"),
    Task(name: "Buy Water"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _taskList.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    // if (task.isDone == true) {
    _taskList.remove(task);
    // }
    notifyListeners();
  }
}
