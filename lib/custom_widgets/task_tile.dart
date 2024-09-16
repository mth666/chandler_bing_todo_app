import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallback(bool checkBoxState) {
    //Taking Data from Stlss to stful to use set state
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'A simple Task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked, toggleCheckBox: checkBoxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final Function toggleCheckBox;
  final bool checkBoxState;
  const TaskCheckBox(
      {super.key, required this.checkBoxState, required this.toggleCheckBox});

  //TaskCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: (value) => toggleCheckBox(value!),
    );
  }
}
