import 'package:flutter/material.dart';
import 'package:techlife/Mothed/hwork.dart';
import 'package:techlife/Mothed/techM.dart';
import 'package:techlife/Services/RemoteServices.dart';
import 'package:techlife/UI/LoginUI.dart';

class page extends StatefulWidget {
  page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  List<Fdata>? fdata = [];
  List<Hwork> hwork = [];
  List<Homework> homework = [];
  var isLoaded = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    fdata = await Rs().getPost();
    hwork = await Rs().hitpoint();
    if (fdata != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text('print Sakthi'),
              ],
            );
          },
        ),
      );
}
