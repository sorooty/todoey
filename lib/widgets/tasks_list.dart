import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkBoxCallback: (bool? checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

// class _TaskListState extends State<TaskList> {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<TaskData>(
//       builder: (context, taskData, child) {
//         return ListView.builder(
//           itemBuilder: (context, index) {
//             return TaskTile(
//               isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
//               taskTitle: Provider.of<TaskData>(context).tasks[index].name,
//               checkBoxCallback: (bool? checkboxState) {
//                 taskData.updateTask(taskData.tasks[index]);
//               },
//             );
//           },
//           itemCount: Provider.of<TaskData>(context).taskCount,
//         );
//       },
//     );
//   }
// }
