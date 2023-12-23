import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefrenceex/main.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  late SharedPreferences logindata;
  late String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();

  }

  void initial()async
  {

    logindata = await SharedPreferences.getInstance();//sharedprefrence initialize
    setState(()
    {
      username = logindata.getString('uname')!;//uname get
    });


  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title:Text("Home Page"),),
        body: Center
          (

            child: Column(

                children: [


                  Text("Welcome $username"),

                  ElevatedButton(onPressed: ()
                  {
                    logindata.setBool('login', true);
                    Navigator.pushReplacement(context,
                        new MaterialPageRoute(builder: (context) => MyApp()));

                  }, child: Text("Logout"))


                ],

            )


        ),


    );
  }

}
