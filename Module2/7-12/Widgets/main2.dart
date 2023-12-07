import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchEx extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<SwitchEx>
{

  bool isactivated = false;
  var textValue = 'Switch is OFF';

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        
          appBar: AppBar(title: Text("Switch Example"),),
          body: Center(
              
            child: Column(
              
                children: [
              SizedBox(height: 20,),
            Transform.scale(scale: 2,
                child:  Switch(
                        value: isactivated,
                        onChanged: (bool value)
                        {
                          if(isactivated == false)
                          {
                            setState(() {
                              isactivated = true;
                              textValue = 'Switch Button is ON';
                            });
                            print('Switch Button is ON');
                          }
                          else
                          {
                            setState(() {
                              isactivated = false;
                              textValue = 'Switch Button is OFF';
                            });
                            print('Switch Button is OFF');
                          }
                        },
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.yellow,
                        inactiveThumbColor: Colors.redAccent,
                        inactiveTrackColor: Colors.orange,

                      ),
            ),
                  SizedBox(height: 20,),

                  Text("$textValue",style: TextStyle(fontSize: 20))]),
              
            ),
          );
  }

}