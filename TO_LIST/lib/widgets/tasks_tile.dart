import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  TaskTile({this.isChecked, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        // onChanged: toggleCheckboxState,
      ),
    );
  }
}

// (bool checkboxState) {
//             setState(() {
//               isChecked = checkboxState;
//             });
//           }
