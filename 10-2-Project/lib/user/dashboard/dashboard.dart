import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';
import '../bottomnavigation/download/Download.dart';
import '../bottomnavigation/home/Home.dart';
import '../login/Login.dart';

class DashBoard extends StatefulWidget
{
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
{
  late SharedPreferences logindata;
  late String username;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }



  void initial() async
  {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Download(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(
      title: Text('Welcome $username to AppName', style: TextStyle(
          color: kGold),),
      automaticallyImplyLeading: false,
      backgroundColor: kDarkBrown,

    actions:
    [
        IconButton(onPressed: ()
        {

          logindata.setBool('login', true);
          Navigator.pushReplacement(context,
              new MaterialPageRoute(builder: (context) => Login()));

        }, icon: Icon(Icons.logout))


    ],),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: kLightGold,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Download',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kGold,
        backgroundColor: kDarkBrown,
        unselectedItemColor: kTerracotta,
        onTap: _onItemTapped,
      ),
    );

  }
}
