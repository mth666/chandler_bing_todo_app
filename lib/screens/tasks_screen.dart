import 'package:flutter/material.dart';
import 'package:chandler_bing_todo_app/custom_widgets/task_list.dart';
import 'package:chandler_bing_todo_app/screens/add_task_screen.dart';
import 'package:chandler_bing_todo_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
//    int taskCount = tasks.length;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {
          showModalBottomSheet(
            //Bottom Sheet Page
            context: context,
            builder: (context) => AddTaskScreen(

                // addTaskCallback: (newTaskTitle) {
                //   Provider.of<TaskData>(context, listen: false)
                //       .addTask(newTaskTitle);
                //   Navigator.pop(context);
                // },
                //
                ),
          );
        },
        backgroundColor: Colors.black87,
        child: const Icon(
          Icons.add,
          color: Colors.redAccent,
        ),
      ),
      //backgroundColor: Colors.lightBlue,
      body: Column(
        //mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.lightBlue,
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: Icon(
                    // List Icon top of the App
                    Icons.list,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                ),
                const Text(
                  'Chandler Bing Todo App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      height: 2,
                      letterSpacing: 2),
                ),
                Text(
                  // 'Current Tasks: $taskCount',
                  'Current Tasks: ${Provider.of<TaskData>(context).taskCount}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 1,
                      letterSpacing: 2),
                ),
              ],
            ),
          ),
          // const Expanded(
          //   child: Image(
          //     image: AssetImage('images/chandlerbing.png'),
          //   ),
          // ),
          Expanded(
            child: Container(
              // This Container is now on top of the image
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TaskList(),
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 100,
            child: const Image(
              image: AssetImage('images/friendslogo.png'),
            ),
          ), //Friends Logo Live here
          //White Area holding task and checkboxes
        ],
      ),
    );
  }
}
