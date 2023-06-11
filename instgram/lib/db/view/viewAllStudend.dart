import 'package:flutter/material.dart';
import 'package:instgram/db/db.dart';
import 'package:instgram/db/view/add.dart';
import '../Student.dart';

class ViewAllStudent extends StatefulWidget {
  @override
  State<ViewAllStudent> createState() => _ViewAllStudentState();
}

class _ViewAllStudentState extends State<ViewAllStudent> {
  // ignore: non_constant_identifier_names
  List<Student>? AllStudent;

  getAllStudent() async {
    await Future.delayed(const Duration(seconds: 3));
    AllStudent = await DataBase.dataBase.getAllStudent();
    setState(() {});
  }

  deleteAsk(int id) async {
    await DataBase.dataBase.deleteStudent(id);
    AllStudent!.removeWhere((element) => element.id == id);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getAllStudent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return add(getAllStudent);
          }));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("View All data"),
      ),
      body: AllStudent == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: AllStudent?.length ?? 0,
              itemBuilder: ((context, index) {
                return itemView(AllStudent![index], deleteAsk);
              })),
    );
  }
}

// item

class itemView extends StatelessWidget {
  Student student;
  Function fun;
  itemView(this.student, this.fun);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: student.value != null
                  ? const Color.fromARGB(255, 52, 211, 223)
                  : Colors.blue,
              borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            title: Text(student.name ?? ''),
            leading: IconButton(
                onPressed: () {
                  fun(student.id);
                },
                icon: const Icon(Icons.delete)),
            subtitle: Text(student.num ?? ''),
            trailing:
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          )),
    );
  }
}
