import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {
num number1 = 1;
double number3  = 4.4;
String name = "mohand";
String printSentence = "hello my name is $name";
print(printSentence);
List<String> names = ["12" ,"mohand"];
List<String> names2 = ["12321" ,"said"];

List<dynamic> y = ["moahnd" , 122];

List<String> allName = [...names , ...names2];
print(allName);
names2.add("reem");
names2.insert(0, "said");
print(names2);

names2.forEach((element) {
  print((element));
});

List<String> name12 = names2.map((e) => e.toUpperCase()).toList();

names2.indexOf("element");
print(names2.indexOf("said"));
names.where((element) => element == 'said').toList();
names2.sort();
Set nameSet = {"mohand" , "mohand" , "ali"};
print(nameSet);
dynamic myname = "asas";
Map<String , dynamic> data = {"name" :"ali"  , "id" : 12};
var d =data.containsValue("ali");
print(d);
}
