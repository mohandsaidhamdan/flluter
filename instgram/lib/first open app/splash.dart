import 'package:flutter/material.dart';
import 'package:instgram/shared/SharedPreferences.dart';

import 'NewScreen.dart';
import 'OldScrren.dart';

// ignore: camel_case_types
class splash extends StatelessWidget {
  const splash({super.key});

  openFirstApp(BuildContext context) async {
    bool check = SharedPreferencess.checkFirstOpenApp();
    await Future.delayed(const Duration(seconds: 3));
    if (check) {
      // ignore: use_build_context_synchronously
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const NewScreen();
      }));
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const OldScreen();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    openFirstApp(context);
    return const Scaffold(
      body: Center(
        child: Text(
          "splash",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
