import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  get onPressed => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlue),
          ),
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.lightBlue),
            ),
            onPressed: () {},
            child: const Text(
              'ADD',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            color: const Color(0xff757575),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          const Image(
            alignment: Alignment.center,
            height: 200,
            width: 120,
            image: AssetImage('images/chandlerbing.png'),
          )
        ],
      ),
    );
  }
}
