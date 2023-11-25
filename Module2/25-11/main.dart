//@dart=2.9
import 'package:flutter/material.dart';

import 'form.dart';
import 'form2.dart';

void main()
{

  runApp(MaterialApp(home:MyForm2()));

}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("Images"),),
        body: Center(

            child: Column(

              children: [

                  Image.network("https://aesha2002.000webhostapp.com/images/i1.png",width: 50,height: 50),
                  SizedBox(width: 10,height: 10),
                  Image.asset("images/i1.png",width: 50,height: 50),
                  SizedBox(width: 10,height: 10),
                  Image.asset("images/photo.jpg",width: 50,height: 50),
                  SizedBox(width: 10,height: 10),
                  Image.asset("images/a.jpg",width: 50,height: 50),
                  SizedBox(width: 10,height: 10),
                  Image.asset("images/abc.jpg",width: 50,height: 50),

              ],

            ),

        ),
      );
  }

}
