import 'package:flutter/material.dart';
import 'package:chandler_bing_todo_app/custom_widgets/task_tile.dart';
import 'package:chandler_bing_todo_app/models/task.dart';
import 'package:chandler_bing_todo_app/screens/tasks_screen.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  const TaskList(this.tasks, {super.key});
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (bool checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
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
