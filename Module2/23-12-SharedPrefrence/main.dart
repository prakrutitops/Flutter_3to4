import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //Step 3-> Add SharedPrefrence Dependency
  //Step 4-> Declare SharedPrefrence
  late SharedPreferences logindata;

  TextEditingController uname = TextEditingController();
  TextEditingController pass = TextEditingController();

  //Step 5-> Create newuser
  late bool newuser;

  //Step 6-> Check login method and initialize sharedprefrence
  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();

    checkifalreadylogin();


  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title: Text("SharedPrefrence Example"),),
        //Step 1 -> Create Login Form
        body:Container(
          height: 300,
          margin: EdgeInsets.all(10.0),

          child: Card(
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                      controller: uname,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                      controller: pass,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        minWidth: 50,
                        color: Colors.pink,
                        child: Text('Login',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),

                        //Step 2-> Get Value in Variable from Controller
                        onPressed: ()
                        {

                            String name1 = uname.text.toString();
                            String pass1 = pass.text.toString();

                            logindata.setBool('login', false);
                            logindata.setString('uname', name1);
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> HomePage()));

                        },
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ));
  }

  //Screen Skip
  void checkifalreadylogin() async
  {

    logindata = await SharedPreferences.getInstance();//SharedPrefrence Initialize

    newuser = (logindata.getBool('login') ?? true);
    print(newuser);


    if (newuser == false)
    {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomePage()));
    }

  }
}

