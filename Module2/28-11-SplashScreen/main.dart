import 'package:data11/splashscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:SplashScreen(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
   return Scaffold
      (
          appBar: AppBar(title: Text("Test App"),),
          body: Center(),
      );
 }
}

