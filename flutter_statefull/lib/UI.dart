import 'package:flutter/material.dart';

import 'form.dart';

class infoUserData extends StatelessWidget {
  String name;
  List<DataCheckBox> selectData;
  infoUserData(this.name, this.selectData);

  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)?.settings.arguments;
    // TODO: implement build
    return Scaffold(
      body: Column(children: [
        Text(name),
        ...selectData.map((e) => Text(e.name)).toList()
      ]),
    );
  }
}
