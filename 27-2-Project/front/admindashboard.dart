import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';
import '../../user/login/Login.dart';
import '../bottom_navigation/home/home.dart';
import '../bottom_navigation/upload/upload.dart';


class AdminDashBoard extends StatefulWidget
{
  const AdminDashBoard({super.key});

  @override
  State<AdminDashBoard> createState() => _AdminDashBoardState();
}

class _AdminDashBoardState extends State<AdminDashBoard>
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
      username = logindata.getString('adminusername')!;
    });
  }

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>
  [
    AdminHome(),
    AdminUpload(),
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

          logindata.setBool('adminlogin', true);
          Navigator.pushReplacement(context,
              new MaterialPageRoute(builder: (context) => Login()));

        }, icon: Icon(Icons.logout),color: Colors.orange,)


      ],
    ),
      body: Center
        (

        child: _widgetOptions.elementAt(_selectedIndex),


        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: 'Upload',
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
