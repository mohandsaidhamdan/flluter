import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "NewScreen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
