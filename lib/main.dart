import 'package:flutter/material.dart';
import 'package:demo/home.dart';

void main() {
  runApp(new MaterialApp(
    title: "demo测试",
    theme: new ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.light,
      primaryColor: new Color.fromARGB(255, 0, 215, 198),
      accentColor: Colors.cyan[300],
    ),
    home: new TestApp()));
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'demo测试',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new TestApp(),
//     );
//   }
// }
