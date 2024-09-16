import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
        child: const Column(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 45,
              ),
              backgroundColor: Colors.white,
              radius: 40,
            ),
            Text('Chandler Bing Todo App')
          ],
        ),
      ),
    );
  }
}
