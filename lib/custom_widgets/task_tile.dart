import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('A simple Task'),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
