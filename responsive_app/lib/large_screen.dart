import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("todo Aap")),
      body: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("name"), accountEmail: Text("email"))
            ],
          )),
          Expanded(child: Text("LargeScreen")),
        ],
      ),
    );
  }
}
