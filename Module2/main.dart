import 'package:flutter/material.dart';

import 'first.dart';

void main()
{
  runApp(MaterialApp
    (
      home:MyHomePage(),
      debugShowCheckedModeBanner: false
    ,));
}

class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
          appBar: AppBar(title: Text("My First App"),),
          body: Center
            (
                child: ElevatedButton(
                  onPressed: ()
                  {
                      print("Clicked Succesfully");
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => MyFirstPage()));
                  },
                  child: Text("Click Me"),
                  ),
            ),
        );
  }

}

