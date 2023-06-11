import 'dart:developer';

import 'package:instgram/db/Student.dart';
import 'package:sqflite/sqflite.dart';

class DataBase {
  DataBase._();
  static DataBase dataBase = DataBase._();

  late Database db;

  initdb() async {
    // ignore: non_constant_identifier_names
    String DataBasePath = await getDatabasesPath();
    String path = "$DataBasePath/databeas.db";
    db = await openDatabase(path, onCreate: (db, v) {
      db.execute(
          'CREATE TABLE Student (id INTEGER PRIMARY KEY AUTOINCREMENT , name TEXT, value INTEGER, num TEXT)');
    });
  }

  insertStuden(String name, int value, String num) async {
    int countInsert =
        await db.insert('Student', {"name": name, "value": value, "num": num});
    log(countInsert.toString());
  }

  Future<List<Student>> getAllStudent() async {
    List<Map> rowStudent = await db.query('Student');

    // transform from map to object Student
    List<Student> row = rowStudent.map((e) => Student.formMap(e)).toList();
    return row;
  }

  Future<List<Student>> getStudenById(String id) async {
    List<Map> rowStudent = await db.query('Student', where: 'id=$id');
    // transform from map to object Student
    List<Student> row = rowStudent.map((e) => Student.formMap(e)).toList();
    return row;
  }

  updateStudent(Student student) async {
    db.update('student', student.toMap(), where: 'id=${student.id}');
  }

  deleteStudent(int id) async {
    db.delete("Studend", where: 'id=$id');
  }
}
