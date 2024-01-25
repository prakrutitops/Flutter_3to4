import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';


class Home extends StatefulWidget
{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  late SharedPreferences logindata;
  late String email;

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();

    initial();
  }
  void initial()async
  {

    logindata = await SharedPreferences.getInstance();//sharedprefrence initialize
    setState(()
    {
      email = logindata.getString('email')!;//uname get
    });


  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Home Page"),
      actions:
      [
          IconButton(onPressed: ()
          {

            logindata.setBool('login', true);
            Navigator.pushReplacement(context,
                new MaterialPageRoute(builder: (context) => LoginPage()));

          }, icon: Icon(Icons.logout))

      ],),);



  }
}
