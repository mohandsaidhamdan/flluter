import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Notification",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
    ));
  }
}
