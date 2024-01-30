import 'package:flutter/material.dart';

import 'addpage.dart';
class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Crud App"),),
        body: Center
          (



          ),
          floatingActionButton: FloatingActionButton
            (
              child: Icon(Icons.add),
              onPressed: ()
              {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddPage()));
              },
            ),
      );
  }
}
