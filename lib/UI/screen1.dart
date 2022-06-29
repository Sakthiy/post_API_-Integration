import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  screen1({Key? key,}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text(''),
          Text(''),
        ],
      ));
}
