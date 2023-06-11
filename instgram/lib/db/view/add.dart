import 'package:flutter/material.dart';

class add extends StatefulWidget {
  Function function;
  add(this.function);
  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: FloatingActionButton(onPressed: () {
        widget.function();
      }),
    );
  }
}
