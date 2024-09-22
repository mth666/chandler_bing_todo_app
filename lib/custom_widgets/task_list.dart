import 'package:flutter/material.dart';
import 'package:chandler_bing_todo_app/custom_widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:chandler_bing_todo_app/models/task_data.dart';
//import 'package:chandler_bing_todo_app/models/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  //final List<Task> tasks;
  // const TaskList(this.tasks, {super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (bool checkBoxState) {
                taskData.updateTask(task);
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount, //for task update
        );
      },
    );
  }
}
