import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: Provider.of<TaskData>(context).taskList[index].isDone,
              taskTitle: Provider.of<TaskData>(context).taskList[index].name,
              checkBoxCallback: (bool? checkboxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).taskList[index].toggleDone();
                // });
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount,
        );
      },
    );
  }
}
