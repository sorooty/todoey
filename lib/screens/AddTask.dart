// ignore: file_names
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
// import 'package:todoey/widgets/tasks_list.dart';

class AddTaskScreen extends StatelessWidget {
  final Function AddTaskCallback;
  // ignore: prefer_const_constructors_in_immutables
  AddTaskScreen({super.key, required this.AddTaskCallback});

  @override
  Widget build(BuildContext context) {
    String NewTaskTitle = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Add Task",
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              SizedBox(height: 40),

              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.lightBlue,
                decoration: InputDecoration(focusColor: Colors.lightBlue),
                onChanged: (newText) {
                  NewTaskTitle = newText;
                },
              ),

              SizedBox(height: 25),

              TextButton(
                onPressed: () {
                  AddTaskCallback(NewTaskTitle);
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent),
                  child: Center(
                    child: Text(
                      "Add",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
