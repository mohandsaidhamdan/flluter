import 'package:flutter/material.dart';

import 'SharedPreferences.dart';

class test extends StatelessWidget {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerID = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(children: [
            const Text("Enter Name"),
            const SizedBox(
              width: 50,
            ),
            Expanded(
                child: TextField(
              controller: controllerName,
            ))
          ]),
          Row(children: [
            const Text("Enter id"),
            const SizedBox(
              width: 50,
            ),
            Expanded(
                child: TextField(
              controller: controllerID,
            ))
          ]),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    String name = controllerName.text;
                    String id = controllerID.text;
                    SharedPreferencess.addNewValue("name", name);
                    SharedPreferencess.addNewValue("id", id);
                  },
                  child: Text("Save"))
            ],
          )
        ],
      ),
    );
  }
}
