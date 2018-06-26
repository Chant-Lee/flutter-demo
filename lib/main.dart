import 'package:flutter/material.dart';
import 'package:demo/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'demo测试',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new TestApp(),
    );
  }
}
