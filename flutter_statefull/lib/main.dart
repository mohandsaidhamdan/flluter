import 'package:flutter/material.dart';

import 'UI.dart';
import 'form.dart';
import 'route.dart';

void main() {
  runApp(MaterialApp(
    home: form(),
    routes: {
      route.page1: (context) => form(),
      route.page2: (context) => form(),
    },
  ));
}

class page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return pageState();
  }
}

class pageState extends State<StatefulWidget> {
  String title = "mohand";
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDark ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test"),
          actions: [
            Switch(
                activeColor: Colors.black,
                value: isDark,
                onChanged: (value) {
                  isDark = !isDark;
                  setState(() {});
                })
          ],
        ),
        body: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  title = title == "it" ? "mohand" : "it";
                  setState(() {});
                },
                child: const Text("IsDark")),
            //    Text(page1().name),
          ],
        ),
      ),
    );
  }
}
