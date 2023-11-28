import 'dart:async';

import 'package:data11/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget
{
  @override
  SplashState createState() => SplashState();

}
class SplashState extends State<SplashScreen>
{

  @override
  void initState()
  {
    // TODO: implement initState
    //super.initState();
    Timer(
        Duration(seconds: 3),() =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()))
    );
  }


  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        
            backgroundColor: Colors.blue,
            body: Center
              (
               // child: Image.asset("images/cafe.png",width: 200,height: 200,),
              child: Lottie.asset("images/anim.json",width: 200,height: 200,repeat:true),
            ),

        
        
      );
      

  }

}