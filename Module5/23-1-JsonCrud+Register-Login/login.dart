import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget
{


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

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
                    print("login success");


                  }





                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
              }, child: Text("Login"))

            ],
          ),
        ),
      ),

    );
  }
}
