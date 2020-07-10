import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy dood'),
    Task(name: 'Buy toothbrush'),
  ];

   int get taskCount {
    return tasks.length;
  }

}
