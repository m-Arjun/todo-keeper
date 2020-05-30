import 'package:flutter/material.dart';
import 'package:todo_keeper/screens/mylist.dart';
import 'package:todo_keeper/screens/newdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'ToDO- Keeper',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,

      ),
      home:newdata(),
    );
  }
}
