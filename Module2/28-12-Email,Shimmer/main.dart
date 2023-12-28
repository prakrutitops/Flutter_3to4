import 'package:emailandshimmereffect/shimmerfile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() 
{
  runApp(MaterialApp(home:ShimmerFile()));
}

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
          appBar: AppBar(title: Text("Email Sending"),),
          body: Center(

            child: ElevatedButton(onPressed: ()
            {
                    sendemail();


            }, child: Text("Email"),),




          ),

      );


  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
  void sendemail() async
  {
      Uri emaillaunchuri = Uri(scheme: 'mailto',path: 'abcd@gmail.com',
        query: encodeQueryParameters(<String, String>
        {
        'subject': 'Example Subject & Symbols are allowed!',

      }),
      );
      launchUrl(emaillaunchuri);
  }
  
}
