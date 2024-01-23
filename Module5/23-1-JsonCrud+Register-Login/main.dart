import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'login.dart';

void main()
{
  runApp(MaterialApp(home:LoginPage()));
}
class MyApp extends StatefulWidget
{


  @override
  State<MyApp> createState() => _SignupState();
}

class _SignupState extends State<MyApp>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title:Text("Signup Form"),),
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
                controller: fname,
                decoration: InputDecoration
                  (
                    labelText: "Enter First Name",
                    hintText: "First Name"
                ),
              ),

              TextField
                (
                controller: lname,
                decoration: InputDecoration
                  (
                    labelText: "Enter Last Name",
                    hintText: "Last Name"
                ),
              ),

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

              ElevatedButton(onPressed: ()
              {

                var url = Uri.parse("https://topsapi.000webhostapp.com/Flutter_API/signup.php");

                http.post(url,
                    body:
                    {

                      "fname":fname.text.toString(),
                      "lname":lname.text.toString(),
                      "email":email.text.toString(),
                      "pass":pass.text.toString(),



                    });
                print('Inserted');




                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
              }, child: Text("Sign up"))

            ],
          ),
        ),
      ),

    );
  }
}
