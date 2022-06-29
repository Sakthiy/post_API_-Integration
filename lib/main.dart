import 'package:flutter/material.dart';
import 'package:techlife/UI/LoginUI.dart';
import 'package:techlife/UI/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEAE0C4),
        primarySwatch: Colors.blue,
      ),
      home: page(),
    );
  }
}
