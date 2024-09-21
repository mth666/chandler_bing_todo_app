import 'package:flutter/material.dart';
import 'package:chandler_bing_todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: '1st Todo'),
    Task(name: '2nd Todo'),
    Task(name: '3rd Todo'),
  ];
}
