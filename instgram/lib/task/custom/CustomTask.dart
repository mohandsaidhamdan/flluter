import 'package:flutter/material.dart';
import '../model/Task.dart';

class CustomTask extends StatelessWidget {
  Task task;
  Function func;
  CustomTask(this.task, this.func);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CheckboxListTile(
      value: task.isCheck,
      onChanged: (v) {
        task.isCheck = !task.isCheck;
        func();
      },
      title: Text(task.name),
    ));
  }
}
