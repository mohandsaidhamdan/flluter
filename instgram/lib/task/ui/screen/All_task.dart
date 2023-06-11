import 'package:flutter/material.dart';

import '../../custom/CustomTask.dart';
import '../../data Sourse/data.dart';

class AllTask extends StatelessWidget {
  Function func;
  AllTask(this.func);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Data.data.length,
        itemBuilder: (context, index) {
          return CustomTask(Data.data[index], func);
        });
  }
}
