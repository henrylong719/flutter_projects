import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [TaskTile()],
    );
  }
}
