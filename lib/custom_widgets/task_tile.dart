import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});
  //void checkBoxCallback
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) => checkboxCallback(newValue!),
        // checkBoxState: isChecked, toggleCheckBox: checkBoxCallback),
      ),
    );
  }
}
//
// class TaskTile2 extends StatefulWidget {
//   const TaskTile({super.key});
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// } // List Tile Stateful widget
//
// //taskcheckbox
// class TaskCheckBox extends StatelessWidget {
//   final Function toggleCheckBox;
//   final bool checkBoxState;
//   const TaskCheckBox(
//       {super.key, required this.checkBoxState, required this.toggleCheckBox});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkBoxState,
//       onChanged: (newValue) => toggleCheckBox(newValue!),
//     );
//   }
// } //Task Check Box StateLess Widget

//
// (bool checkBoxState) {
// //Taking Data from Stlss to stful to use set state
// setState(() {
// isChecked = checkBoxState;
// });
// }
