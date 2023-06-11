import 'package:flutter/material.dart';
import 'package:responsive_app/small_screen.dart';

import 'large_screen.dart';

void main() {
  runApp(MaterialApp(
    home: LargeScreen(),
  ));
}

class Responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 400
        ? LargeScreen()
        : SmallScreen();
  }
}
