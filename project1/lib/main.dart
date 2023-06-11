import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Login()));
}

class Login extends StatelessWidget {
  Map<String, dynamic> Studend = {
    "name": "mohand said hamdan",
    "age": 22,
    "idNumber": "120190345"
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AppBae"),
      ),
      backgroundColor: Colors.blue,
      /* body: Column(
            children: Studend.keys.map((e) {
          return Row(
            children: [Text(e), Text(Studend[e].toString())],
          );
        }).toList())*/
      body: Column(children: [
        Container(
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: Text("mohand")),
        Image.asset('asstes/Images/Image_1'),
        Image.network("https")
      ]),
    );
  }
}
