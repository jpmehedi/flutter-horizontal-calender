import 'package:flutter/material.dart';
import 'calander.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Hoprizontal calender"),),
      body:  HorizontalCalendar(
        date: DateTime.now(),
        textColor: Colors.black45,
        backgroundColor: Colors.white,
        selectedColor: Colors.blue,
        onDateSelected: (date) => print(
          date.toString(),
        ),
      ),
    );
  }
}
