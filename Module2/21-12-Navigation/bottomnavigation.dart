import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget
{
  @override
  BottomState createState() => BottomState();
}

class BottomState extends State<MyBottomNavigation>
{
  int _selectedIndex=0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Bottom Navigation Example"),),
      body: Center(child: Text("Hello World"),),
      bottomNavigationBar: BottomNavigationBar(

        //backgroundColor: Color.alphaBlend(Colors.black, Colors.red),
        items:
        [

          BottomNavigationBarItem(icon: Icon(Icons.access_time_sharp),label: "First",backgroundColor:Colors.red ),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "Second",backgroundColor:Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_sharp),label: "Third",backgroundColor:Colors.red),




        ],
        type:BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
       selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,


      ),

    );
  }


  void _onItemTapped(int value)
  {
    setState(() {
      _selectedIndex = value;
    });
  }
}