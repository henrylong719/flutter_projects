import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final taskItem = taskData.tasks[index];

          return TaskTile(
            isChecked: taskItem.isDone,
            taskTitle: taskItem.name,
            checkboxCallback: (bool? checkboxState) {
              taskData.updateTask(taskItem);
            },
            longPressCallback: () {
              taskData.deleteTask(taskItem);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
