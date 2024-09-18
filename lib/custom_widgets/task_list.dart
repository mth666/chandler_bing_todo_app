import 'package:flutter/material.dart';
import 'package:chandler_bing_todo_app/custom_widgets/task_tile.dart';
import 'package:chandler_bing_todo_app/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: '1st Todo'),
    Task(name: '2nd Todo'),
    Task(name: '3rd Todo'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (bool checkBoxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }

//ListView(
//       children: [
//         TaskTile(
//           taskTitle: tasks[0].name,
//           isChecked: tasks[0].isDone,
//         ),
//         TaskTile(
//           taskTitle: tasks[1].name,
//           isChecked: tasks[1].isDone,
//         ),
//         TaskTile(
//           taskTitle: tasks[2].name,
//           isChecked: tasks[2].isDone,
//         ),
//       ],
//     );
}
