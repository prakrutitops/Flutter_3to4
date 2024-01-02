import 'package:flutter/material.dart';

import 'db.dart';
import 'edit.dart';
import 'main.dart';

class ViewData extends StatefulWidget
{
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();

}

class _ViewDataState extends State<ViewData> {

  late Mydb db = Mydb();
  List<Map> slist = [];

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();

    db.open();
    getdata();

  }

  @override
  Widget build(BuildContext context) {

      return Scaffold(

      appBar: AppBar(title: Text("View Details"),),
      body:  SingleChildScrollView
        (

          child: Container
            (

              child: slist.length == 0 ?
              Text("No any students to show.")
                  :
              Column(

          children: slist.map((stuone)
          {
            return Card
            (
              child: ListTile(

            leading: Icon(Icons.people),
            title: Text(stuone["name"]),
            subtitle: Text("Email:" + stuone["email"].toString() + ", Surname: " + stuone["surname"]),
            trailing: Wrap(

              children: [

                  IconButton
                    (
                      onPressed: ()
                      {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => EditStudent(email: stuone["email"])));

                      },
                      icon: Icon(Icons.edit)),
                    IconButton(onPressed: ()
                    {
                        db.db.rawDelete("DELETE FROM students where email = ?",[stuone["email"]]);
                        print("Data Deleted");
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
                    }, icon: Icon(Icons.delete)),

              ],


            ),
              ),
            );
            })
              .toList())
          )
      )
      );


  }

  void getdata()
  {

    Future.delayed(Duration(milliseconds: 500),() async
    {
      slist = await db.db.rawQuery('SELECT * FROM students');
      setState(() {

      });
    });


  }


}
