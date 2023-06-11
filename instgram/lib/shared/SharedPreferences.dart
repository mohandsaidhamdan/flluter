import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencess {
  @override
  static late SharedPreferences sh;
  static shaerAsync() async {
    sh = await SharedPreferences.getInstance();
  }

  static addNewValue(String key, String value) {
    sh.setString(key, value);
  }

  static getValue(String key) {
    sh.get(key);
  }

  static deleteValue(String key) {
    sh.remove(key);
  }

  static updateValue(String key, String value) {
    sh.setString(key, value);
  }

  static bool checkFirstOpenApp() {
    bool? check = sh.getBool("app");
    if (check == null) {
      sh.setBool("app", false);
      return true;
    } else {
      return false;
    }
  }
}
