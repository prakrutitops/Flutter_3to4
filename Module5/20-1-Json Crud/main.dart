import 'package:flutter/material.dart';
import 'package:jsoninsert/view.dart';

import 'add.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
            appBar: AppBar(title:Text("Json Crud"),),
            body: Center
              (
                  child: Container
                    (
                        child: Column
                          (
                            children:
                            [

                              ElevatedButton(onPressed: ()
                              {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => AddProduct()));
                              }, child: Text("Add Product")),

                              ElevatedButton(onPressed: ()
                              {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => ViewProduct()));
                              }, child: Text("View Product"))

                            ],
                          ),
                    ),
              ),

        );
  }

}
