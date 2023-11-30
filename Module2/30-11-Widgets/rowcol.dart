import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowCol extends StatefulWidget
{
  @override
  RowColState createState() => RowColState();

}

class RowColState extends State<RowCol>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Row Example"),),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize:MainAxisSize.max,
          children: [

            Text("One"),
            Text("Two"),
            Text("Three"),


          ],

        ),

      ),

    );


  }

}
