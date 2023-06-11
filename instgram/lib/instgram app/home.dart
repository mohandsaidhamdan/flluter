import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Home",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
    ));
  }
}
