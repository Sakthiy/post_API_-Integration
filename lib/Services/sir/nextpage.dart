import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techlife/Services/sir/new.dart';

class nextpage extends StatefulWidget {
  final ListName listname;
  nextpage({Key? key, required this.listname}) : super(key: key);

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  double slidervalue = 40;
  double sliderbrightnessvalue = 50;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.listname.title)),
        body: Column(children: [
          Card(
            child: ListTile(
              title: Text(
                "Font Size       " + slidervalue.ceil().toString(),
                style: TextStyle(
                  fontSize: slidervalue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Slider(
                value: slidervalue,
                min: 15,
                max: 50,
                label: slidervalue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    slidervalue = value;
                  });
                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Device Brightness  " + sliderbrightnessvalue.ceil().toString(),
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Slider(
                value: sliderbrightnessvalue,
                min: 0,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    sliderbrightnessvalue = value;
                  });
                },
              ),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else
                  exit(0);
              },
              child: Text('Tap Me'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.amberAccent, backgroundColor: Colors.blue)),
          OutlinedButton(onPressed: () {}, child: Text('Log out Tap Me')),
        ]),
      );
}
