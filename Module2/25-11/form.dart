//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/newpage.dart';

class MyForm extends StatefulWidget
{
  @override
  FormState createState() => FormState();

}
class FormState extends State<MyForm>
{
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Form Example"),),
        body: Center(

          child: Column(

              children: [

                  Text("Login Form"),
                  SizedBox(width: 10,height: 10),

                  TextField(controller:name,decoration: InputDecoration(hintText: "Enter Your Name",prefixIcon:Icon(Icons.person_add_rounded)),),
                  SizedBox(width: 10,height: 10),

                  TextField(controller:email,decoration: InputDecoration(hintText: "Enter Your Email",prefixIcon:Icon(Icons.email))),
                  SizedBox(width: 10,height: 10),

                  TextField(controller:password,decoration: InputDecoration(hintText: "Enter Your Password",prefixIcon:Icon(Icons.lock))),
                  SizedBox(width: 10,height: 10),

                  ElevatedButton(onPressed: ()
                  {
                    if (password.text.toString()=="12345")
                    {

                      Navigator.push(context,MaterialPageRoute(builder: (context)=>nextpage(),));

                    }
                    else
                    {
                      print("please check your password");
                    }
                      // print("Your Name is "+name.text.toString());
                      // print("Your Email is "+email.text.toString());
                      // print("Your Password is "+password.text.toString());

                      }, child: Text("Login"))



              ],

          ),

        ),

      );
  }

}
