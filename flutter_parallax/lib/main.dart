import 'package:flutter/material.dart';
import 'package:flutter_parallax/screens/home/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          backgroundColor: Colors.white,
          fontFamily: 'helvetica',
          canvasColor: Colors.transparent,
        ),
        home: new Home());
  }
}
