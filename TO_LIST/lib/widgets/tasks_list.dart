import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_tile.dart';
import 'package:todo_app/models/tasks_screen.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

    List<Task> tasks = [
      Task(name: 'Buy milk'),
      Task(name: 'Buy dooed'),
      Task(name: 'Buy toothbrush'),
    ];
    @override
  Widget build(BuildContext context) {
    return ListView(
     children: [ 
       TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,), 
       TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,), 
       TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,), 
     ],   
    );
  }
}
