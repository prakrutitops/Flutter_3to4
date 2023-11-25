//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyForm2 extends StatefulWidget
{
  @override
  MyForm2State createState() => MyForm2State(); 
  
}

class MyForm2State extends State<MyForm2>
{
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;
  String name,email,pass;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(

      appBar: AppBar(title: Text("Login Validation"),),
      body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Form
            (
                  key: _formKey,
                  child: Column(

                      children:
                      [

                        Text("Form Validation in Flutter",style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                        SizedBox
                          (
                            width: 10,
                            height: 10,
                          ),
                        TextFormField(decoration: InputDecoration(labelText: "Enter Your Name"),keyboardType: TextInputType.text,
                          onFieldSubmitted: (value)
                          {
                            name = value.toString();

                          },
                          onSaved: (value)
                          {
                            name = value.toString();
                          },
                          validator: (value)
                          {
                            if (value.isEmpty)
                            {
                              return 'Enter a Proper Name!';
                            }
                            return null;
                          },
                        ),
                        SizedBox
                          (
                          width: 10,
                          height: 10,
                        ),
                        TextFormField(decoration: InputDecoration(labelText: "Enter Your Email"),keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value)
                          {
                            email = value.toString();

                          },
                          onSaved: (value)
                          {
                            email = value.toString();
                          },
                          validator: (value)
                          {
                            if (value.isEmpty)
                            {
                              return 'Enter a Proper Email!';
                            }
                            return null;
                          },),
                        SizedBox
                          (
                          width: 10,
                          height: 10,
                        ),
                        TextFormField(decoration: InputDecoration(labelText: "Enter Your Password"),keyboardType: TextInputType.text,obscureText: true,
                          onFieldSubmitted: (value)
                          {
                            pass = value.toString();

                          },
                          onSaved: (value)
                          {
                            pass = value.toString();
                          },
                          validator: (value)
                          {
                            if (value.isEmpty)
                            {
                              return 'Enter a Proper Password!';
                            }
                            return null;
                          },),
                        SizedBox
                          (
                          width: 10,
                          height: 10,
                        ),
                        ElevatedButton(onPressed: ()
                        {
                          _submit();

                        }, child: Text("Login"))



                      ],

                  ),

            ),


      ),

    );
  }

  void _submit()
  {
    if(_formKey.currentState.validate())
    {
      print("Data Processing");
    }

  }
  
}