import 'package:flutter/material.dart';

import 'bottomnavigation.dart';

void main()
{
  runApp(MaterialApp(home:MyBottomNavigation()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title: Text("Navigation Drawer Example"),),
        body:Center(child:Text("Hello World")),
        drawer:Drawer(

            child: ListView(

              children: [

                  UserAccountsDrawerHeader(
                                            accountName: Text("Tops Technologies"),
                                            accountEmail: Text("tops@gmail.com"),
                                            currentAccountPicture: CircleAvatar(

                                              backgroundColor: Colors.orange,
                                              child: Text("A", style: TextStyle(fontSize: 40.0),),

                                            ),
                                          ),
                                        ListTile(leading:Icon(Icons.home),title: Text("Home"),onTap: (){ Navigator.pop(context);},),
                                        ListTile(leading:Icon(Icons.access_time_sharp),title: Text("About us"),onTap: (){ Navigator.pop(context);}),
                                        ListTile(leading:Icon(Icons.contact_mail),title: Text("Contact us"),onTap: (){ Navigator.pop(context);}),





              ],

            ),


        ),


    );
  }
}

