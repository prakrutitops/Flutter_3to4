import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum BestTutorSite { javatpoint,w3schools,tutorialandexample}
class Form12 extends StatefulWidget
{


  @override
  RadioState createState() => RadioState();

}

class RadioState extends State<Form12>
{
  BestTutorSite _site = BestTutorSite.javatpoint;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Login Form"),),
      body: Center
        (
        child: Column
          (
          children: [

            ListTile(
              title: const Text('www.javatpoint.com'),
              leading: Radio(
                value: BestTutorSite.javatpoint,
                groupValue: _site,
                onChanged: (BestTutorSite? value)
                {
                    setState(() {

                      _site = value!;


                    });
                },),),

            ListTile(
              title: const Text('www.tutorials.com'),
              leading: Radio(
                value: BestTutorSite.tutorialandexample,
                groupValue: _site,
                onChanged: (BestTutorSite? value)
                {
                  setState(() {

                    _site = value!;


                  });
                },),),

            ListTile(
              title: const Text('www.w3schools.com'),
              leading: Radio(
                value: BestTutorSite.w3schools,
                groupValue: _site,
                onChanged: (BestTutorSite? value)
                {
                  setState(() {

                    _site = value!;


                  });
                },),),


          ],


        ),

      ),

    );
  }

}