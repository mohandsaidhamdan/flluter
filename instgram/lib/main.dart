import 'package:flutter/material.dart';
import 'package:instgram/db/db.dart';
import 'package:instgram/instgram%20app/chat.dart';
import 'package:instgram/instgram%20app/home.dart';
import 'package:instgram/shared/SharedPreferences.dart';
import 'package:instgram/task/ui/Main_Ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencess.shaerAsync();
  await DataBase.dataBase.initdb;

  // runApp(MaterialApp(home: main_ui()));
  runApp(const MaterialApp(home: MainUI()));
}

// responsive
class responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 400 ? home() : chat();
  }
}
