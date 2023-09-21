import 'package:flutter/material.dart';
import 'package:todo_list/util/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // Get Usre Input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add New Task",
            ),
          ),

          // Button Save and Cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Save Button
              MyButton(text: "Save", onPressed: onSave),

              const SizedBox(width: 10),

              // Cancel Button
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ]),
      ),
    );
  }
}