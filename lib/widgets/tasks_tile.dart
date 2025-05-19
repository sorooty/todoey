import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function(bool?) checkBoxCallback;

  TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlue,
        onChanged: checkBoxCallback,
      ),

      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
