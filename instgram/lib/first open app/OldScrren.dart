import 'package:flutter/material.dart';

class OldScreen extends StatelessWidget {
  const OldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "OldScreen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
