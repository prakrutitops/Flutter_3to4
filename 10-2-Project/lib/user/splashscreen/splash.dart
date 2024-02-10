import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

import '../onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    checkconnection();
  }

  @override
  Widget build(BuildContext context)
  {
        return Scaffold();
  }
  void checkconnection()async
  {
      var connectivityResult = await (Connectivity().checkConnectivity());

      if(connectivityResult==ConnectivityResult.mobile)
      {
        Timer(Duration(seconds: 3), ()=>
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Onboarding())),
        );
      }
      if(connectivityResult==ConnectivityResult.wifi)
      {
        Timer(Duration(seconds: 3), ()=>
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Onboarding())),
        );
      }
      else
      {
        _showConnectionDialog();
      }
  }

  _showConnectionDialog()async
  {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
      {
        return AlertDialog
          (
          backgroundColor: Colors.black26,
          title: Row(children: [Icon(Icons.error),Text("\tNetwork Error")],),
          content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
          actions: <Widget>
          [
            ElevatedButton(
              onPressed: ()
              {
                exit(0);
              },
              child: Text("Exit",style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      });

  }

}
