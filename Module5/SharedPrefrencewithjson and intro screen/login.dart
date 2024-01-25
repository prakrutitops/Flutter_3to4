import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class LoginPage extends StatefulWidget
{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
{
  late SharedPreferences logindata;
  late bool newuser;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

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
    return Scaffold
      (
      appBar: AppBar(title:Text("Login Form"),),
      body: Center
        (
        child: Container
          (
          child: Column
            (
            children:
            [

              TextField
                (
                controller: email,
                decoration: InputDecoration
                  (
                    labelText: "Enter Email",
                    hintText: "Email"
                ),
              ),

              TextField
                (
                controller: pass,
                decoration: InputDecoration
                  (
                    labelText: "Enter Password",
                    hintText: "Password"
                ),
              ),



              ElevatedButton(onPressed: ()async
              {

                var url = Uri.parse("https://topsapi.000webhostapp.com/Flutter_API/login.php");

                var response = await http.post(url,
                    body:
                    {


                      "email":email.text.toString(),
                      "pass":pass.text.toString(),



                    });
                  var data = json.decode(response.body);
                  if(data==0)
                  {
                    print("login fail");
                  }
                  else
                  {
                    logindata.setBool('login', false);
                    logindata.setString('email', email.text.toString());
                    print("login success");
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Home()));


                  }
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
              }, child: Text("Login"))

            ],
          ),
        ),
      ),

    );
  }

  void checkifalreadylogin() async
  {
    logindata = await SharedPreferences.getInstance();//SharedPrefrence Initialize

    newuser = (logindata.getBool('login') ?? true);
    print(newuser);


    if (newuser == false)
    {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Home()));
    }


  }
}
