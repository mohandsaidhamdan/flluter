import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_statefull/route.dart';

import 'UI.dart';
import 'main.dart';

class form extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return formState();
  }
}

class formState extends State<StatefulWidget> {
  String gender = "Meal";
  TextEditingController controllers = TextEditingController();
  List<DataCheckBox> data = [
    DataCheckBox("12"),
    DataCheckBox("13"),
    DataCheckBox("14"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              const Text("Enter Name"),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                  child: TextField(
                controller: controllers,
              ))
            ],
          ),
          Row(children: [
            const Text("Gender"),
            const SizedBox(width: 50),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  const Text("Meal"),
                  Radio(
                      value: "m",
                      groupValue: gender,
                      onChanged: (value) {
                        gender = "m";
                        setState(() {});
                      })
                ],
              ),
              Row(
                children: [
                  const Text("FeMeal"),
                  Radio(
                      value: "f",
                      groupValue: gender,
                      onChanged: (value) {
                        gender = "f";
                        setState(() {});
                      })
                ],
              )
            ])
          ]),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(4),
            child: Column(children: [
              Text("data"),
              Column(
                  children: data.map((e) {
                return Row(
                  children: [
                    Checkbox(
                        value: e.isSelect,
                        onChanged: ((value) {
                          e.isSelect = value!;
                          setState(() {});
                        })),
                    Text(e.name)
                  ],
                );
              }).toList())
            ]),
          ),
          ElevatedButton(
              onPressed: () {
                bool isMale = gender == "f" ? true : false;
                List<DataCheckBox> selectData =
                    data.where((element) => element.isSelect).toList();

                String name = controllers.text;

                log(isMale.toString() as num);
                log(name as num);
                log(selectData.length.toString() as num);
                /*   Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return infoUserData(name, selectData);
                }));*/

                Navigator.of(context)
                    .pushNamed(route.page1, arguments: ["mohand", "said"]);
              },
              child: const Text("send datat"))
        ]),
      ),
    );
  }
}

class DataCheckBox {
  String name;
  bool isSelect = false;
  DataCheckBox(this.name);
}
