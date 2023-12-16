import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Listview"),),
        body: getlistview(),

      );
  }

  Widget getlistview()
  {
    var listView = ListView(

      children: [

        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny),
          onTap: () {
            debugPrint("Landscape tapped");
          },
        ),

        ListTile(
          leading: Icon(Icons.laptop_chromebook),
          title: Text("Windows"),
        ),

        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
        ),

        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
          onTap: ()
          {
            print("phone called");
          },
        ),



      ],

    );
    return listView;
  }

}