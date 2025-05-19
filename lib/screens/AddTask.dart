// ignore: file_names
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              ),

              SizedBox(height: 25),

              TextButton(
                onPressed: () {},
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
