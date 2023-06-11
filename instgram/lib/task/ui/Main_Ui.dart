import 'package:flutter/material.dart';
import 'screen/All_task.dart';
import 'screen/Complete_task.dart';
import 'screen/NotCompleteTask.dart';

class MainUI extends StatefulWidget {
  const MainUI({super.key});

  @override
  State<MainUI> createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  refrehPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Main Task View Widget",
        style: TextStyle(fontSize: 24),
      )),
      body: PageView(children: [
        NotCompleteeTask(refrehPage),
        CompleteeTask(refrehPage),
        AllTask(refrehPage)
      ]),
    );
  }
}
