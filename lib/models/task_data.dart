import 'package:flutter/material.dart';
import 'package:chandler_bing_todo_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: '1st Todo'),
    Task(name: '2nd Todo'),
    Task(name: '3rd Todo'),
  ];
  void updateTask(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  //Add Task Method
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}
