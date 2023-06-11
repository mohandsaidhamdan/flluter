import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: const [Text("name"), Text("email")]),
      ),
      appBar: AppBar(title: Text("todo Aap")),
      body: Container(child: Text("SmallScreen")),
    );
  }
}
