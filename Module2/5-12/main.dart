import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/form.dart';

void main()
{
  runApp(MaterialApp(home:MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
        (

        appBar: AppBar(title: Text("First App"),),
        body: Center(),
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton:ExpandableFab
          (

          children:
            [
              FloatingActionButton.small(
                heroTag: null,
                child: const Icon(Icons.edit),
                onPressed: () {

                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      fontSize: 16.0
                  );


                },
              ),
              FloatingActionButton.small(
                heroTag: null,
                child: const Icon(Icons.search),
                onPressed: () {

                },
              ),
            ],
        ));


  }

}
