import 'package:flutter/material.dart';
import 'package:sqflitedb/add.dart';
import 'package:sqflitedb/view.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(title: Text("Database Example"),),
          body: Container
            (
              alignment: Alignment.topCenter,
               padding: EdgeInsets.all(20),
                  child: Column(

                      children:
                      [

                        ElevatedButton(onPressed: ()
                        {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => AddData()));

                        }, child: Text("Add Student")),
                        ElevatedButton(onPressed: ()
                        {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ViewData()));
                        }, child: Text("View Student")),


                      ],


                  ),

            ),

      );
  }

}
