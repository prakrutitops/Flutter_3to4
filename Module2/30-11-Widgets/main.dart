import 'package:flutter/material.dart';
import 'package:widgetsex/rowcol.dart';

void main()
{
  runApp(
      MaterialApp(
        theme: ThemeData(primaryColor: Colors.amber,
          appBarTheme: AppBarTheme
            (
              backgroundColor: Colors.orange, //use your hex code here
            ),
        ),
        darkTheme: ThemeData(primarySwatch: Colors.grey),
        color: Colors.amberAccent,
       /* supportedLocales: {const Locale('en', ' ')},*/
          home:RowCol(),
          debugShowCheckedModeBanner: false,
        ));
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
      return Scaffold(

          appBar: AppBar(title: Text("Container App"),),
          body: Container(
                  alignment: Alignment.center,
                  child: Text("Hello"),
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration
                    (
                      border: Border.all(color: Colors.black,
                          width: 3
                    ),),

      ));
  }

}
