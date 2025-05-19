import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'AddTask.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade900,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.amber.shade900,
        splashColor: Colors.amber.shade900,
        hoverColor: Colors.orangeAccent,
        child: Icon(Icons.add, color: Colors.white, weight: 50),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    color: const Color(0xFFFF6F00),
                    size: 30.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Todoey",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 50.0,
                  ),
                ),
                Text(
                  "Made by Sensey",
                  style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    // decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 10),
                Divider(color: Colors.white, thickness: 2),
                SizedBox(height: 20),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks remaining',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
