import 'package:flutter/material.dart';
import 'package:sqflitedb/db.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData>
{
    TextEditingController name = TextEditingController();
    TextEditingController surname = TextEditingController();
    TextEditingController email = TextEditingController();
    late Mydb mydb = Mydb();


    @override
  void initState()
    {
    // TODO: implement initState
    super.initState();

    mydb.open();

    }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Add Details"),),
      body: Container
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

                    mydb.db.rawInsert("INSERT INTO students (name,surname,email) values(?,?,?)",[name.text.toString(),surname.text.toString(),email.text.toString()]);
                    print("Inserted");


              }, child: Text("Insert"))





            ],


          ),



        ),

    );
  }
}
