import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainWidget();
  }
}

class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  Color mainColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: mainColor,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          setState(() {
            mainColor = Color.fromRGBO(Random().nextInt(254) + 1,
                Random().nextInt(254) + 1, Random().nextInt(254) + 1, 1);
          });
        },
        child: Center(
          child: Text('Hey there', style: TextStyle(fontSize: 32.0)),
        ),
      ),
    ));
  }
}