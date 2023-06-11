import 'package:flutter/material.dart';

import '../../custom/CustomTask.dart';
import '../../data Sourse/data.dart';

class CompleteeTask extends StatelessWidget {
  Function func;
  CompleteeTask(this.func);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Data.data.where((element) => element.isCheck).length,
        itemBuilder: (context, index) {
          return CustomTask(
              Data.data.where((element) => element.isCheck).toList()[index],
              func);
        });
  }
}
