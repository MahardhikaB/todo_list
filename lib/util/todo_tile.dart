import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            //Checkbox
            Checkbox(value: false, onChanged: (value) {}),

            //Task Name
            Text('To Do Tile'),
          ],
        ),
        decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
        )
      
    );
  }
}