import 'package:flutter/material.dart';

import 'db.dart';
import 'main.dart';

class EditStudent extends StatefulWidget
{

  String email;
  EditStudent({required this.email});

  @override
  State<EditStudent> createState() => _State();
}

class _State extends State<EditStudent>
{
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  late Mydb mydb = Mydb();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    mydb.open();
    
    Future.delayed(Duration(microseconds: 500),()async
    {

      var data = await mydb.getsinglerecord(widget.email);

      if(data != null)
      {
        name.text = data["name"];
        surname.text = data["surname"];
        email.text = data["email"];
        setState(() {

        });
      }
      else
      {

        print("No any data with Email " + widget.email.toString());
      }





    });





  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Edit Page"),),
      body:
      Container
        (
        padding: EdgeInsets.all(30),
        child: Column(

          children: [

            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
              ),
            ),

            TextField(
              controller: surname,
              decoration: InputDecoration
                (

                hintText: "Enter Your Surname",
              ),
            ),

            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
              ),
            ),

            ElevatedButton(onPressed: ()
            {

              mydb.db.rawUpdate("update students set name=?,surname=? where email=?",[name.text.toString(),surname.text.toString(),email.text.toString()]);
              print("Updated");
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));


            }, child: Text("Update"))





          ],


        ),



      ),

    );
  }
}
