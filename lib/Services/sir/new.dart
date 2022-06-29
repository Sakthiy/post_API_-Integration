import 'package:flutter/material.dart';
import 'package:techlife/Services/sir/nextpage.dart';

class newsd extends StatefulWidget {
  newsd({Key? key}) : super(key: key);

  @override
  State<newsd> createState() => _newsdState();
}

class _newsdState extends State<newsd> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text(
            'Truecaller',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: listCard.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.white,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>nextpage(listname: listdata[index],)));
                    },
                    leading: listCard[index].Icon,
                    title: Text(listCard[index].title),
                  ),
                );
              },
            ),
            Card(
                child: ListTile(
              onTap: () {},
              leading: Icon(Icons.info),
              title: Text('About'),
            )),
          ],
        ),
      );
}

class ListName {
  var title, Icon;
  ListName(this.title, this.Icon);
}

List<ListName> listCard = [
  ListName('General', Icon(Icons.settings)),
  ListName('Sounds', Icon(Icons.phone_in_talk)),
  ListName('App Language', Icon(Icons.language)),
  ListName('Caller ID', Icon(Icons.mobile_friendly)),
  ListName('Dara & Storage', Icon(Icons.data_usage_outlined)),
  ListName('Massaging', Icon(Icons.message_sharp)),
  ListName('Block', Icon(Icons.block_sharp)),
  ListName('Appearance', Icon(Icons.cloud_done)),
  ListName('Backup', Icon(Icons.lock)),
  ListName('Privacy Center', Icon(Icons.phone_in_talk)),
];
final List<ListName> listdata = List.generate(listCard.length, (index) => ListName(listCard[index].title, listCard[index].Icon));
