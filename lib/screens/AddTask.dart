// ignore: file_names
// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

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
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.amber.shade900,
                ),
              ),
              SizedBox(height: 40),

              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.orangeAccent,
                decoration: InputDecoration(
                  focusColor: Colors.orangeAccent,
                  labelText: "Type your desird task..",
                  // counterStyle: 
                ),
                onChanged: (newText) {
                  NewTaskTitle = newText;
                  // print(newText);
                },
              ),

              SizedBox(height: 25),

              TextButton(
                onPressed: () {
                  Provider.of<TaskData>(
                    context,
                    listen: false,
                  ).addTask(NewTaskTitle);
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.amber.shade900),
                  child: Center(
                    child: Text(
                      "Add",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        color: Colors.white,
                      ),
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
