import 'package:flutter/material.dart';
import 'package:chandler_bing_todo_app/custom_widgets/task_list.dart';
import 'package:chandler_bing_todo_app/screens/add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddTaskScreen(),
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
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    // List Icon top of the App
                    Icons.list,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                ),
                Text(
                  'Chandler Bing Todo App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      height: 2,
                      letterSpacing: 2),
                ),
                Text(
                  'Current Tasks: 10',
                  style: TextStyle(
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
              child: const TaskList(),
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
          ),
          //White Area holding task and checkboxes
        ],
      ),
    );
  }
}
