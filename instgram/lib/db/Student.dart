class Student {
  int? id;
  String? name;
  int? value;
  String? num;
  Student({this.id, this.name, this.value, this.num});
  Student.formMap(Map map) {
    id = map['id'];
    name = map['name'];
    value = map['value'];
    num = map['num'];
  }
  Student.toMap(Student student) {}

  toMap() {
    Map StudenMap = {
      'id': id,
      'name': name,
      'value': value,
      'num': num,
    };
    return StudenMap;
  }
}
