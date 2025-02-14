import 'package:flutter/material.dart';
import 'package:todo_app/screens/my_home_page.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyHomePage()),
    );
  }
}
