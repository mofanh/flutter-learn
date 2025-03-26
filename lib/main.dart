import 'package:flutter/material.dart';
import 'package:try_app/pages/HomePage.dart';
import 'package:try_app/pages/SettingsPage.dart';
import 'package:try_app/pages/TodoPage.dart';
import 'package:try_app/pages/one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: One(),
      routes: {
        '/one': (context) => One(),
        '/home': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
        '/todo': (context) => Todopage(),
      },
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
